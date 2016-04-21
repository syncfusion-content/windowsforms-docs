---
layout: post
title: How-to-Change-the-Backcolor-of-a-Single-Row | Windows Forms | Syncfusion
description: how to change the backcolor of a single row
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Change the BackColor of a Single Row

### Introduction

In GridDataBoundGrid, you cannot set row specific properties like BackColor using Model.RowStyles member. The reason is that in GridDataBoundGrid, the only data storage is the bound datasource. There is no row specific storage allocated. 

This code does not work.

{% highlight c# %}



//Sets backcolor of  Row 3.

this.gridDataBoundGrid.Model.RowStyles[8].BackColor=Color.Red;

{% endhighlight %}

{% highlight vbnet %}



'Sets backcolor of  Row 3.

Me.gridDataBoundGrid.Model.RowStyles(8).BackColor=Color.Red;

{% endhighlight %}

So, in order to set row specific properties in GridDataBoundGrid, you must catch PrepareViewStyleInfo event (or Model.QueryCellInfo event). In your handler, check e.RowIndex and if it points to the row you want to color, set e.Style to the value you want (The e.ColIndex > 0 check in the code avoids coloring the header cell in the row).

#### Example

{% highlight c# %}



private void gridDataBoundGrid1_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)

    { 

         if(e.ColIndex == 0 && e.RowIndex == 8) 

         {

             e.Style.BackColor = Color.Red;

         }

    } 

{% endhighlight %}

{% highlight vbnet %}



Private Sub gridDataBoundGrid1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)

        If e.ColIndex = 0 And e.RowIndex = 8 Then

            e.Style.BackColor = Color.Red

        End If

    End Sub

{% endhighlight %}

