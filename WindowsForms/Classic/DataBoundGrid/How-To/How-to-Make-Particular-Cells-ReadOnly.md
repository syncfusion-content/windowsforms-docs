---
layout: post
title: Set Cells Read-Only in WinForms GridDataBoundGrid | Syncfusion®
description: Make specific cells read-only in Syncfusion® WinForms GridDataBoundGrid by setting the ReadOnly property in the QueryCellInfo event.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Make Particular Cells Read-Only in WinForms GridDataBoundGrid

This page explains How to Make Particular Cells ReadOnly and more details.

## How to Make Particular Cells ReadOnly

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
