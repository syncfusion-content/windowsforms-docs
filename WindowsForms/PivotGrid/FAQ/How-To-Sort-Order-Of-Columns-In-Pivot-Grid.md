---
layout: post
title: How To Sort Order Of Columns In Pivot Grid | PivotGrid | Windows Forms | Syncfusion
description: How to sort order of columns in pivot grid
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# How to sort order of columns in pivot grid

By default, the column values and row values are sorted in ascending order by considering it as string values. Using the custom comparer, you can customize the order of the columns or rows to sort the values in the way you want.

Refer to the below code sample to arrange the columns based on months.

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