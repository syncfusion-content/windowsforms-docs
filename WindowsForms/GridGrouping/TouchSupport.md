---
layout: post
title: Touch Support in Windows Forms GridGrouping control | Syncfusion
description: Learn about Touch Support support in Syncfusion® Windows Forms GridGrouping control, its elements and more details.
platform: WindowsForms
control: GridGroupingControl
documentation: ug
---

# Touch Support in Windows Forms GridGrouping control
GridGroupingControl provides the swipe scrolling, panning, zooming and touch selection (bubble selection) touch supports. The touch support for grid can be enabled by setting the [EnableTouchMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_EnableTouchMode) property to `true`. This will enable the grid to support the swiping, panning, touch selection (bubble selection) and zooming. The default value of `EnableTouchMode` property is `false`.
{% tabs %}
{% highlight c# %}
//Enable the touch mode
this.gridGroupingControl1.EnableTouchMode = true;
{% endhighlight %}
{% highlight vb %}
'Enable the touch mode
Me.gridGroupingControl1.EnableTouchMode = True
{% endhighlight %}
{% endtabs %}

## Touch Swiping
GridGroupingControl provides the swipe scrolling support in both horizontal and vertical directions.
![DataGrid_img1](TouchSupport_images/DataGrid_img1.png)

N> To have the proper horizontal and vertical pixel touch scrolling, the [HScrollPixel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_HScrollPixel) and [VScrollPixel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_VScrollPixel) properties should be set to `true`. By default the `HScrollPixel` and `VScrollPixel` properties is `true`. 

## Touch Zooming
The GridGroupingControl allows to perform the touch zoom in or out operations to the entire grid by initialize the [ZoomGroupingGrid](http://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Zoom.ZoomGroupingGrid.html#) class where the constructor takes a parameter as a `GridGroupingControl` object.
To have this touch zooming support in grid, the [GridHelperClasses.Windows](http://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.html#) assembly needs to be added into the assembly reference.
{% tabs %}
{% highlight c# %}
// Initialize the Zooming to GridGroupingControl   
ZoomGroupingGrid zoom = new ZoomGroupingGrid(this.gridGroupingControl1);
{% endhighlight %}
{% highlight vb %}
'Initialize the Zooming to GridGroupingControl   
Dim zoom As New ZoomGroupingGrid(Me.gridGroupingControl1)
{% endhighlight %}
{% endtabs %}
![DataGrid_img2](TouchSupport_images/DataGrid_img2.png)

N> The GridGroupingControl does not allow to perform the touch zoom in or out operations when current cell is in editing mode.

## Touch Selection
The touch selection support as like Excel can be enabled by setting the `EnableTouchMode` property to `true` and also the Excel-like selection frame and Excel-like current cell options needs to be enabled to enable the touch selection support.
To enable excel like selection frame in the grid, the [ExcelLikeSelectionFrame](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelOptions.html#Syncfusion_Windows_Forms_Grid_GridModelOptions_ExcelLikeSelectionFrame) property can be used. And to have the Excel-Like current cell in the grid, set the [ExcelLikeCurrentCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelOptions.html#Syncfusion_Windows_Forms_Grid_GridModelOptions_ExcelLikeCurrentCell) to `true`.
{% tabs %}
{% highlight c# %}
//Enable the Excel-like selection frame.
this.gridGroupingControl1.TableModel.Options.ExcelLikeSelectionFrame = true;

//Enable the Excel-like current cell.
this.gridGroupingControl1.TableModel.Options.ExcelLikeCurrentCell = true;
{% endhighlight %}
{% highlight vb %}
'Enable the Excel-like selection frame.
Me.gridGroupingControl1.TableModel.Options.ExcelLikeSelectionFrame = True

'Enable the Excel-like current cell.
Me.gridGroupingControl1.TableModel.Options.ExcelLikeCurrentCell = True
{% endhighlight %}
{% endtabs %}
![DataGrid_img3](TouchSupport_images/DataGrid_img3.png)

N> GridGroupingControl does not allow to perform the touch selection operation in 2003 Excel like selection frame. And also grid does not allow to perform the touch selection operations when current cell is in editing mode. This can be avoid by setting the [ActivateCurrentCellBehavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ActivateCurrentCellBehavior) property to `GridCellActivateAction.DblClickOnCell` or `GridCellActivateAction .None` option.

### Disabling the Touch Selection
The touch selection can be disabled by setting the [ShowTouchIndicator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_ShowTouchIndicator) property to `false`. The default value of `ShowTouchIndicator` property is `true`.
{% tabs %}
{% highlight c# %}
//Disable the touch indicator
this.gridGroupingControl1.TableControl.ShowTouchIndicator = false;
{% endhighlight %}
{% highlight vb %}
'Disable the touch indicator
Me.gridGroupingControl1.TableControl.ShowTouchIndicator = False
{% endhighlight %}
{% endtabs %}
![DataGrid_img4](TouchSupport_images/DataGrid_img4.png)

