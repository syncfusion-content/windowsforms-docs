---
layout: post
title: How to Put a ComboBox in a Header Cell in GridControl | Syncfusion
description: Learn here all about how to put a combobox in a header cell in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Put a ComboBox in a Header Cell in Windows Forms GridControl

### Introduction

### GridControl

To place a ComboBox in a header cell of GridControl, you must set CellType of the header to ComboBox and assign a valid data source (ChoiceList or DataSource).

{% tabs %}
{% highlight c# %}

//Sets up a ComboBox control.
this.gridControl1[0,4].CellType = "ComboBox";
this.gridControl1[0,4].CellAppearance = GridCellAppearance.Raised;
this.gridControl1[0,4].ShowButtons = GridShowButtons.ShowCurrentCellEditing;
this.gridControl1[0,4].ChoiceList = items;
this.gridControl1[0,4].CellValue = "Combo";

{% endhighlight %}

{% highlight vb %}

'Sets up a ComboBox control.
Me.gridControl1(0,4).CellType = "ComboBox"
Me.gridControl1(0,4).CellAppearance = GridCellAppearance.Raised
Me.gridControl1(0,4).ShowButtons = GridShowButtons.ShowCurrentCellEditing
Me.gridControl1(0,4).DataSource = items
Me.gridControl1(0,4).CellValue = "Combo"

{% endhighlight %}
{% endtabs %}

### GridDataBoundGrid

To place a ComboBox in a header cell of GridDataBoundGrid, you need to handle two events (QueryCellInfo and SaveCellInfo). Set the data source (ChoiceList or DataSource) for the header cell in QueryCellInfo event handler and save the edited value back to datasource in SaveCellInfo event handler. 

{% tabs %}
{% highlight c# %}

this.gridDataBoundGrid1.Model.QueryCellInfo += new GridQueryCellInfoEventHandler(Model_QueryCellInfo);
this.gridDataBoundGrid1.Model.SaveCellInfo += new GridSaveCellInfoEventHandler(Model_SaveCellInfo);
String Collection items;
string choice;

//Handles QueryCellInfo to set datasource for combobox.
private void Model_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
{
if(e.ColIndex > 0 && e.RowIndex == 0)
{
    int colIndex2 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column4");
    if(colIndex2 == e.ColIndex)
    {
          e.Style.Borders.All = gridBorder;
          e.Style.BackColor = Color.White;
          e.Style.CellType = "ComboBox";

			//Sets Datasource for combobox.
          e.Style.ChoiceList = items;
          e.Style.CellValue = choice;
          e.Style.CellAppearance = GridCellAppearance.Raised;
          e.Style.Enabled = true;
    }
}
}

//Handles SaveCellInfo to save the edited values back to the datasource.
private void Model_SaveCellInfo(object sender, GridSaveCellInfoEventArgs e)
{
   if(e.ColIndex > 0 && e.RowIndex == 0)
   {
       int colIndex2 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column4");
       if(colIndex2 == e.ColIndex)
       {
              if(e.Style.CellValue != null )
              choice = (string)e.Style.CellValue;
       }
   }
}

{% endhighlight %}

{% highlight vb %}

AddHandler gridDataBoundGrid1.Model.QueryCellInfo, AddressOf Model_QueryCellInfo
AddHandler gridDataBoundGrid1.Model.SaveCellInfo, AddressOf Model_SaveCellInfo
Private items As StringCollection
Private choice As String 

'Handles QueryCellInfo to set datasource for combobox.
Private Sub Model_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)
    If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then
	Dim colIndex2 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column4")
         If colIndex2 = e.ColIndex Then
              e.Style.Borders.All = gridBorder
              e.Style.BackColor = Color.White
              e.Style.CellType = "ComboBox"
			  'Sets Datasource for combobox.
              e.Style.ChoiceList = items
              e.Style.CellValue = choice
              e.Style.CellAppearance = GridCellAppearance.Raised
              e.Style.Enabled = True
         End If
    End If
End Sub

'Handles SaveCellInfo to save the edited values back to the datasource.
Private Sub Model_SaveCellInfo(ByVal sender As Object, ByVal e As GridSaveCellInfoEventArgs)
    If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then
         Dim colIndex2 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column4")
         If colIndex2 = e.ColIndex Then
              If Not e.Style.CellValue Is Nothing Then
                  choice = CStr(e.Style.CellValue)
              End If
        End If
   End If
End Sub


{% endhighlight %}
{% endtabs %}
