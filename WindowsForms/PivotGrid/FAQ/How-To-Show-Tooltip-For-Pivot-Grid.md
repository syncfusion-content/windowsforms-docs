---
layout: post
title: How To Show Tooltip For Pivot Grid | PivotGrid | Windows Forms | Syncfusion
description: How to show tooltip for pivot grid
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# How To Show Tooltip For Pivot Grid

The pivot grid control provides support to enable or disable the tooltip for individual cells that include column header cells, row header cells, value cell cells, summary cells and summary header cells.

To enable the tooltip for pivot grid cells, the [CellTipText](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~CellTipText.html) property of required cell's style need to be assigned. 

Refer to the below code sample to enable tooltip for value cells in the pivot grid control.

{% tabs %}

{% highlight c# %}

public Form1()
{
    ......
    this.pivotGridControl1.TableModel.QueryCellInfo += TableModel_QueryCellInfo;
}

void TableModel_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
{
    PivotCellInfo cellinfo = pivotGridControl1.PivotEngine[e.RowIndex - 1, e.ColIndex - 1];
    if (cellinfo.CellType == PivotCellType.ValueCell)
        e.Style.CellTipText = e.Style.Text;
}

{% endhighlight %}

{% highlight vb %}

Public Sub New()
  ......Me.pivotGridControl1.TableModel.QueryCellInfo += TableModel_QueryCellInfo
End Sub

Private Sub TableModel_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)
    Dim cellinfo As PivotCellInfo = pivotGridControl1.PivotEngine(e.RowIndex - 1, e.ColIndex - 1)
    If cellinfo.CellType Is PivotCellType.ValueCell Then
        e.Style.CellTipText = e.Style.Text
    End If
End Sub

{% endhighlight %}

{% endtabs %}

![Tooltip_img1](How-To-Show-Tooltip-For-Pivot-Grid_images/Tooltip_img1.png)

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Appearance\Tooltip Demo