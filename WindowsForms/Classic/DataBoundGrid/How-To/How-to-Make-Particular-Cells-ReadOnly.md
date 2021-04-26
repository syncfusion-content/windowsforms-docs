---
layout: post
title: How-to-Make-Particular-Cells-ReadOnly | Windows Forms | Syncfusion
description: Learn about How to Make Particular Cells Readonly support in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more details.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Particular Cells Readonly in WinForms GridDataBoundGrid

In general, cell specific style settings (other than CellValue or text) in GridDataBoundGrid need to be done through an event like PrepareViewStyleInfo. Functional properties like Read-only that are used to determine cell's functionality need to be set in Model.QueryCellInfo. But, visual properties like Font and BackColor can be set in either PrepareViewStyleInfo or the Model.QueryCellInfo.

{% tabs %}
{% highlight c# %}

this.gridDataBoundGrid1.Model.QueryCellInfo += new GridQueryCellInfoEventHandler(Model_QueryCellInfo);
private void Model_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
{

//Sets ReadOnly property of the Cell(2,2) to true.
    if(e.ColIndex == 2 && e.RowIndex == 2) 
    { 
        e.Style.ReadOnly = true;
    }
}

{% endhighlight %}

{% highlight vb %}

AddHandler Me.gridDataBoundGrid1.Model.QueryCellInfo, AddressOf Model_QueryCellInfo
Private Sub Model_QueryCellInfo(sender As Object, e As GridQueryCellInfoEventArgs)

'Sets ReadOnly property of the Cell(2,2) to true.
If e.ColIndex = 2 And e.RowIndex = 2 Then
e.Style.ReadOnly = True
End If
End Sub

{% endhighlight %}
{% endtabs %}
