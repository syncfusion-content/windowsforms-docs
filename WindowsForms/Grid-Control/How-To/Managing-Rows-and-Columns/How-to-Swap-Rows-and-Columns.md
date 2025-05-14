---
layout: post
title: Swap Rows and Columns in Windows Forms GridControl | Syncfusion
description: Learn here about how to swap rows and columns in Syncfusion Essential Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to swap rows and columns

This can be done in GridControl by handling virtual events QueryCellInfo, SaveCellInfo, QueryRowCount, QueryColCount. Here GridControl.Data property is used.

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