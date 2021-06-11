---
layout: post
title: How to put a checkbox in a header cell in gridcontrol | Syncfusion
description: Learn here all about how to put a checkbox in a header cell of Syncfusion Windows Forms GridControl control and more. 
platform: windowsforms
control: Grid
documentation: ug
---

# How to put a CheckBox in a header Cell in Windows Forms GridControl

To place a CheckBox in GridControl, you must set CellType to CheckBox and assign string values for CheckedValue and UncheckedValue in the CheckBoxOptions property. The value of CheckBox will be stored to a particular cell in the GridControl. When the CheckBox is clicked, CheckBoxClick event gets triggered. To place a CheckBox in GridDataBoundGrid, two events have to be implemented: QueryCellInfo event, which is used to set the style properties and SaveCellInfo event, which is used to save the cell's value. The value of the CheckBox cannot be stored in GridDataBoundGrid, so any data type or collection can be used to store the value. CheckBoxClick event gets triggered when the CheckBox is clicked.

{% tabs %}
{% highlight c# %}

private string CheckBoxValue;
private void Model_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
{

    //Checks for a row header.
    if(e.ColIndex > 0 && e.RowIndex == 0)
    {
        int colIndex1 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column2");

        if(colIndex1 == e.ColIndex)
        {
            e.Style.Description = "Check";

            //Displays CellValue.
            e.Style.CellValue = CheckBoxValue;
            e.Style.CellValueType = typeof(string);

			//Determines CheckBoxOptions Values.
            e.Style.CheckBoxOptions = new GridCheckBoxCellInfo(true.ToString(), false.ToString(), "", true);

			//Sets up CheckBox control in the header.
            e.Style.CellType = "CheckBox";
            e.Style.CellAppearance = GridCellAppearance.Raised;
            e.Style.Enabled = true;
      }
}
}

private void Model_SaveCellInfo(object sender, GridSaveCellInfoEventArgs e)
{
    if(e.ColIndex > 0 && e.RowIndex == 0)
    {
       int colIndex1 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column2");

       if(colIndex1 == e.ColIndex)
       {

		   //Saves the changes that are made in the Cell Value.
           if(e.Style.CellValue != null)
           CheckBoxValue = (string)e.Style.CellValue;
       }
    }
}


{% endhighlight %}

{% highlight vb %}

Private CheckBoxValue As Boolean = False
Private Sub Model_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)
'Checks for a row header.
     If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then
        Dim colIndex1 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column2")
 
        If colIndex1 = e.ColIndex Then
            e.Style.Description = "Check"

			'Displays the CellValue.
            e.Style.CellValue = CheckBoxValue
            e.Style.CellValueType = GetType(Boolean)
			
			'Determines CheckBoxOptions Values.
            e.Style.CheckBoxOptions = New GridCheckBoxCellInfo(True.ToString(), False.ToString(), "", True) 

		    'Sets up a CheckBox control in the header.
            e.Style.CellType = "CheckBox"
            e.Style.CellAppearance = GridCellAppearance.Raised
            e.Style.Enabled = True
        End If
    End If
End Sub

Private Sub Model_SaveCellInfo(ByVal sender As Object, ByVal e As GridSaveCellInfoEventArgs)
  
     If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then
        Dim colIndex1 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column2")
  
        If colIndex1 = e.ColIndex Then

            'Saves the changes that are made in the Cell Value.
  
            If Not e.Style.CellValue Is Nothing Then
                CheckBoxValue = CBool(e.Style.CellValue)
            End If
        End If
     End If
End Sub

{% endhighlight %}
{% endtabs %}