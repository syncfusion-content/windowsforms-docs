---
layout: post
title: Swap Rows and Columns in Windows Forms Grid Control | Syncfusion®
description: Swap rows and columns in Syncfusion® Windows Forms Grid Control using virtual events and data properties to transpose grid data and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Swap Rows and Columns in Windows Forms Grid Control

This can be done in Grid Control by handling virtual events QueryCellInfo, SaveCellInfo, QueryRowCount, QueryColCount. Here GridControl.Data property is used.

{% tabs %}
{% highlight c# %}

//In the QueryCellInfo handler.
e.Style.ModifyStyle(this.gridControl1.Data[e.ColIndex, e.RowIndex], Syncfusion.Styles.StyleModifyType.Override);

//In the SaveCellInfo handler.
this.gridControl1.Data[e.ColIndex, e.RowIndex] = e.Style.Store;

//In the QueryRowCount handler.
e.Count = this.gridControl1.Data.ColCount;

//In the QueryColCount handler.
e.Count = this.gridControl1.Data.RowCount;

{% endhighlight  %}
{% highlight vb %}

'In the QueryCellInfo handler.
e.Style.ModifyStyle(Me.gridControl1.Data(e.ColIndex, e.RowIndex), Syncfusion.Styles.StyleModifyType.Override)

'In the SaveCellInfo handler.
Me.gridControl1.Data(e.ColIndex, e.RowIndex) = e.Style.Store

'In the QueryRowCount handler.
e.Count = Me.gridControl1.Data.ColCount

'In the QueryColCount handler.
e.Count = Me.gridControl1.Data.RowCount

{% endhighlight  %}
{% endtabs %}