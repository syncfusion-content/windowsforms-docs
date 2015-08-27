---
layout: post
title: Month-Calendar
description: month calendar
platform: windowsform
control: Grid
documentation: ug
---

# Month Calendar

MonthCalendar cell type lets you pick dates. To make use of this cell type in grid, set CellType property to _MonthCalendar_ and CellValue property to _DateTime_ object. The following code example illustrates how to set the cell type to MonthCalendar.

{% highlight c# %}



//Sets Cell Type.

gridControl1[rowIndex, colIndex].CellType = "MonthCalendar";



//Assigns initial value.

gridControl1[rowIndex, colIndex].CellValue = DateTime.Now;

{% endhighlight %}

{% highlight vbnet %}



'Sets Cell Type.

gridControl1(rowIndex, colIndex).CellType = "MonthCalendar"



'Assigns initial value.

gridControl1(rowIndex, colIndex).CellValue = DateTime.Now

{% endhighlight %}

 ![](Adding-Special-Controls-to-Grid-Cells_images/Adding-Special-Controls-to-Grid-Cells_img11.png)

