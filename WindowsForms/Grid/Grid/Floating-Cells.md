---
layout: post
title: Floating-Cells
description: floating cells
platform: windowsform
control: Grid
documentation: ug
---

# Floating Cells

Floating cells are those cells whose content floats over empty, adjacent cells. You can enable floating cells at the grid level by setting GridControl.FloatCellsMode. Setting this property to GridFloatCellsMode.BeforeDisplayCalculation will force the floating cells to always be calculated just prior to being displayed. Setting the property to GridFloatCellsMode.OnDemandCalculation will calculate the floating cells only if the cell contents or size changes. This latter option is more efficient. 



You can control a cell whether or not it floats over adjacent cells through FloatCell property in the cell's GridStyleInfo object. You can also prevent a cell from being flooded by using its GridStyleInfo.FloodCell property. In the code given below, all three lines (1, 3, 5) hold the same text in column one. But, the floating cells in lines three and five are stopped short; line three by an occupied cell and line five by a FloodCell false settings.

{% highlight c# %}



//Enables Float Cells.

this.gridControl1.FloatCellsMode = GridFloatCellsMode.OnDemandCalculation;



//Specifies Cell Text.

this.gridControl1[1, 1].Text = "This is a text that floats over several cells.";

this.gridControl1[3, 1].Text = "This is a text that floats over several cells.";

this.gridControl1[5, 1].Text = "This is a text that floats over several cells.";

this.gridControl1[3, 3].Text = "3.14159";



//Code to prevent cell(5,2) from being flooded.

this.gridControl1[5, 2].FloodCell = false;

{% endhighlight %}

{% highlight vbnet %}



'Enables Float Cells.

Me.gridControl1.FloatCellsMode = GridFloatCellsMode.OnDemandCalculation



'Specifies Cell Text.

Me.gridControl1(1, 1).Text = "This is a text that floats over several cells."

Me.gridControl1(3, 1).Text = "This is a text that floats over several cells."

Me.gridControl1(5, 1).Text = "This is a text that floats over several cells."

Me.gridControl1(3, 3).Text = "3.14159"



'Code to prevent cell(5,2) from being flooded.

Me.gridControl1(5, 2).FloodCell = False

Me.gridControl1(2, 2).Font.Bold = True

{% endhighlight %}

![](Grid-Control_images/Grid-Control_img214.jpeg)


