---
layout: post
title: Touch Support in PivotGrid for Syncfusion Essential Windows Forms
description: This section explains about the touch support in PivotChart
platform: WindowsForms
control: PivotGrid
documentation: ug
--- 

# Touch Support
PivotGridControl provides the swipe scrolling, panning and touch selection (bubble selection) touch supports. The touch support for grid can be enabled by setting the [EnableTouchMode](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~EnableTouchMode.html#) property to true. This will enable the grid to support the swiping, panning and touch selection (bubble selection). The default value of `EnableTouchMode` property is `false`.
{% tabs %}
{% highlight c# %}
//Enable the touch mode
this.pivotGridControl1.EnableTouchMode = true;
{% endhighlight %}
{% highlight vb %}
'Enable the touch mode
Me.pivotGridControl1.EnableTouchMode = True
{% endhighlight %}
{% endtabs %}

## Touch Swiping
PivotGridControl provides the swipe scrolling support in both horizontal and vertical directions.
![](TouchSupport_images/PivotGrid_img1.png)

## Touch Selection
The touch selection support as like Excel can be enabled by setting the `EnableTouchMode` property to `true` and also the Excel-like selection frame and Excel-like current cell options needs to be enabled to enable the touch selection support.
{% tabs %}
{% highlight c# %}
//Enable the Excel like selection frame for PivotGridControl
this.pivotGridControl1.TableModel.Options.ExcelLikeSelectionFrame = true;
//Enable the Excel like current cell for PivotGridControl
this.pivotGridControl1.TableModel.Options.ExcelLikeCurrentCell = true;
{% endhighlight %}
{% highlight vb %}
'Enable the Excel like selection frame for PivotGridControl
Me.pivotGridControl1.TableModel.Options.ExcelLikeSelectionFrame = True
'Enable the Excel like current cell for PivotGridControl
Me.pivotGridControl1.TableModel.Options.ExcelLikeCurrentCell = True
{% endhighlight %}
{% endtabs %}
![](TouchSupport_images/PivotGrid_img2.png)

**Note**
PivotGridControl does not allow to perform the touch selection operation in 2003 Excel like selection frame. 

### Disabling the Touch Selection
The touch selection can be disabled by setting the [ShowTouchIndicator](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~ShowTouchIndicator.html#) property to `false`. The default value of `ShowTouchIndicator` property is `true`.
{% tabs %}
{% highlight c# %}
//Disable the touch indicator
this.pivotGridControl1.TableControl.ShowTouchIndicator = false;
{% endhighlight %}
{% highlight vb %}
'Disable the touch indicator
Me.pivotGridControl1.TableControl.ShowTouchIndicator = False
{% endhighlight %}
{% endtabs %}
![](TouchSupport_images/PivotGrid_img3.png)

