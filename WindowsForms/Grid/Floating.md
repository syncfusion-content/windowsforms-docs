---
layout: post
title: Floating of GridControl for Syncfusion Essential WindowsForms
description: This section explains how to add the floating functionality
platform: WindowsForms
control: GridControl
documentation: ug
---

# Floating
Floating cells are those cells whose content floats over empty, adjacent cells. The floating cells can be enabled by setting [GridControl.FloatCellsMode](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~FloatCellsMode.html) property. The `FloatCellsMode` property has the following enumerations,

* [GridFloatCellsMode.BeforeDisplayCalculation](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridFloatCellsMode.html) – This is used to force the floating cells to always be calculated just prior to being displayed. <br/>
* [GridFloatCellsMode.OnDemandCalculation](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridFloatCellsMode.html)  - This is used to calculate the floating cells only if the cell contents or size changes.

{% tabs %}
{% highlight c# %}
// Enable Float Cells for GridControl
this.gridControl1.TableStyle.FloatCell = true;
// Set mode for calculating the float cells
this.gridControl1.FloatCellsMode = GridFloatCellsMode.OnDemandCalculation;
{% endhighlight %}
{% highlight vb %}
' Enable Float Cells for GridControl
Me.gridControl1.TableStyle.FloatCell = True
' Set mode for calculating the float cells
Me.gridControl1.FloatCellsMode = GridFloatCellsMode.OnDemandCalculation
{% endhighlight %}
{% endtabs %}
![](Floating_images/Floating_img1.jpeg)

## Preventing Cells from Being Flooded
To prevent the specific cell from being flooded by another cell, [FloodCell](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~FloodCell.html) can be disabled for that cell. 

{% tabs %}
{% highlight c# %}
// Set mode for calculating the float cells
this.gridControl1.FloatCellsMode = GridFloatCellsMode.OnDemandCalculation;

//Specifies Cell Text.
this.gridControl1[2, 3].Text = "This is a text that floats over several cells.";
this.gridControl1[4, 3].Text = "This is a text that floats over several cells.";
this.gridControl1[6, 3].Text = "This is a text that floats over several cells.";
this.gridControl1[4, 5].Text = "3.14159";

//Code to prevent cell(5,2) from being flooded.
this.gridControl1[6, 4].FloodCell = false;

{% endhighlight %}
{% highlight vb %}
' Set mode for calculating the float cells
Me.gridControl1.FloatCellsMode = GridFloatCellsMode.OnDemandCalculation

'Specifies Cell Text.
Me.gridControl1(2, 3).Text = "This is a text that floats over several cells."
Me.gridControl1(4, 3).Text = "This is a text that floats over several cells."
Me.gridControl1(6, 3).Text = "This is a text that floats over several cells."
Me.gridControl1(4, 5).Text = "3.14159"

'Code to prevent cell(5,2) from being flooded.
Me.gridControl1(6, 4).FloodCell = False
{% endhighlight %}
{% endtabs %}

![](Floating_images/Floating_img2.jpeg)

## Finding a Floating Range of a cell
The [FloatingCells](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelFloatingCells.html) collection maintains the all the floating ranges of a GridControl. To find a floating range of a cell, [FindRange](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelFloatingCells~FindRange.html) method can be used. If the specified cell with row index and column index is inside a floating range, a range will be returned. Otherwise it will return the empty range.

{% tabs %}
{% highlight c# %}
// Finding a FloatRange for cell(4,4)
GridRangeInfo floatRange = this.gridControl1.Model.FloatingCells.FindRange(4, 4);
// Finding a FloatRange for cell(7,9)
GridRangeInfo floatRange2 = this.gridControl1.Model.FloatingCells.FindRange(7, 9);

MessageBox.Show("Floatrange for cell(4,4) is " + floatRange.Info.ToString()
+ "\n" + "Floatrange for cell(7,9) is " + floatRange2.RangeType.ToString());

{% endhighlight %}
{% highlight vb %}
' Finding a FloatRange for cell(4,4)
Dim floatRange As GridRangeInfo = Me.gridControl1.Model.FloatingCells.FindRange(4, 4)
' Finding a FloatRange for cell(7,9)
Dim floatRange2 As GridRangeInfo = Me.gridControl1.Model.FloatingCells.FindRange(7, 9)

MessageBox.Show("Floatrange for cell(4,4) is " & floatRange.Info.ToString() & Constants.vbLf & "Floatrange for cell(7,9) is " & floatRange2.RangeType.ToString())
{% endhighlight %}
{% endtabs %}

![](Floating_images/Floating_img3.jpeg)

N> The merged range of a cell can also be determined by using [GetSpannedRangeInfo](http://help.syncfusion.com/windowsforms/grid/working-with-rows-and-columns#finding-covered-range,-floating-range-or-merged-range-of-a-cell) method instead of using `FindRange` method. 

## Delaying and Evaluating the Floating cells
The floating of cells can be delayed for specified range of cells to be re-evaluated later using [DelayFloatCells](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelFloatingCells~DelayFloatCells.html) and those delayed floating cells can be re-evaluated later by using [EvaluateFloatingCells](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelFloatingCells~EvaluateFloatingCells.html) methods. So floating cells which are delayed will not be re-evaluated until `EvaluateFloatingCells` method is called for that specified range.

{% tabs %}
{% highlight c# %}
// Delaying the floating of cells for specified range
this.gridControl1.FloatingCells.DelayFloatCells(GridRangeInfo.Rows(1, 3));

// Re-evaluating of floating cells
this.gridControl1.FloatingCells.EvaluateFloatingCells(GridRangeInfo.Rows(1, 3));

{% endhighlight %}
{% highlight vb %}
' Delaying the floating of cells for specified range
Me.gridControl1.FloatingCells.DelayFloatCells(GridRangeInfo.Rows(1, 3))

' Re-evaluating of floating cells
Me.gridControl1.FloatingCells.EvaluateFloatingCells(GridRangeInfo.Rows(1, 3))
{% endhighlight %}
{% endtabs %}

## Locking and Unlocking of Evaluating
The Evaluating of cells can be temporarily stopped and restarted for evaluating using [LockEvaluate](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelFloatingCells~LockEvaluate.html) and [UnlockEvaluate](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelFloatingCells~UnlockEvaluate.html) methods.

{% tabs %}
{% highlight c# %}
//Temporarily locking the cells to be floated
this.gridControl1.FloatingCells.LockEvaluate();

//Unlocking the cells which are all locked for floating
this.gridControl1.FloatingCells.UnlockEvaluate();

{% endhighlight %}
{% highlight vb %}
'Temporarily locking the cells to be floated
Me.gridControl1.FloatingCells.LockEvaluate()

'Unlocking the cells which are all locked for floating
Me.gridControl1.FloatingCells.UnlockEvaluate()
{% endhighlight %}
{% endtabs %}