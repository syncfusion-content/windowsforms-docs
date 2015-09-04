---
layout: post
title: How-to-Change-the-Backcolor-of-a-Single-Cell
description: how to change the backcolor of a single cell
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# How to Change the Backcolor of a Single Cell

### Introduction

In GridDataBoundGrid, you cannot set cell specific properties like backcolor (other than CellValue or text) using an indexer. The reason is that in GridDataBoundGrid, the only data storage is the bound datasource, which only holds a single value per cell. It does not hold textcolor, backcolor, or any of the other many cell specific properties that are found in GridStyleInfo object. 

This code does not work.

{% highlight c# %}



//Sets the backcolor of cell(8,10).

this.gridDataBoundGrid1[8, 10].BackColor = Color.Red;

{% endhighlight %}

{% highlight vbnet %}



'Sets the backcolor of cell(8,10).

Me.gridDataBoundGrid1(8, 10).BackColor = Color.Red;

{% endhighlight %}

So, in order to set cell specific properties in GridDataBoundGrid, you must catch PrepareViewStyleInfo event (or Model.QueryCellInfo event). In your handler, check e.RowIndex and e.ColIndex, and if these point to the cell you want to change, set e.Style to the value you want. 

#### Example



{% highlight c# %}



private void gridDataBoundGrid1_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)

{ 

         if(e.ColIndex == 2 && e.RowIndex == 2) 

         {

             e.Style.BackColor = Color.Red;

         }

} 

{% endhighlight %}

{% highlight vbnet %}



Private Sub gridDataBoundGrid1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)

        If e.ColIndex = 2 And e.RowIndex = 2 Then

            e.Style.BackColor = Color.Red

        End If

End Sub

{% endhighlight %}

