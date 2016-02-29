---
layout: post
title: How-to-Swap-Rows-and-Columns | Windows Forms | Syncfusion
description: how to swap rows and columns
platform: windowsforms
control: Grid
documentation: ug
---

# How to Swap Rows and Columns

## Introduction

This can be done in GridControl by handling virtual events QueryCellInfo, SaveCellInfo, QueryRowCount, QueryColCount. Here GridControl.Data property is used.

### Example

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
{% highlight vbnet %}



'In the QueryCellInfo handler.

e.Style.ModifyStyle(Me.gridControl1.Data(e.ColIndex, e.RowIndex), Syncfusion.Styles.StyleModifyType.Override)



'In the SaveCellInfo handler.

Me.gridControl1.Data(e.ColIndex, e.RowIndex) = e.Style.Store



'In the QueryRowCount handler.

e.Count = Me.gridControl1.Data.ColCount



'In the QueryColCount handler.

e.Count = Me.gridControl1.Data.RowCount

{% endhighlight  %}

