---
layout: post
title: Runtime-Features | Windows Forms | Syncfusion
description: runtime features
platform: windowsforms
control: Chart
documentation: ug
---

# Runtime Features

The following topics under this section elaborates on the runtime features of Chart control.

## Zooming and Scrolling

### Interactive Zooming

### Zooming via Mouse

EssentialChart supports interactive zooming features along the x and y axis. During runtime, the user can simply select the range he wants to zoom with the mouse and the chart will accordingly zoom-in. Scrollbars will be activated to browse the areas that become hidden on zooming in.

Enable Zooming via the EnableXZooming and EnableYZooming properties.



![](Runtime-Features_images/Runtime-Features_img1.jpeg)




![](Runtime-Features_images/Runtime-Features_img2.jpeg)



The scrollbar will shift by the amount specified in the ScrollPrecision property which is set to 20 by default.

User can zoom out by clicking the "Zoom Out" button in the scrollbar.



![](Runtime-Features_images/Runtime-Features_img3.jpeg)



ZoomOutIncrement property specifies the increment by which to zoom out. The default value is 0.2.

### Programmatic Zooming

Programmatically the chart can be zoomed using ZoomFactorX and ZoomFactorY properties.The Zoom factor is usually between 0 and 1. When set to 1, the chart isn't zoomed. When set to 0.5, the chart is double its usual size. Scrollbars will automatically appear to allow any section of the hidden range to be viewed. The default value is 1.

You can also programmatically specify the scrollbar position of the zoomed in axes using the ZoomPositionX and ZoomPositionY properties.

To restrict the zoom-in factor to a certain level on the x and y axis use the MinZoomFactorX and MinZoomFactorY properties. The value can be in between 0 and 1. 1 means not zoomed.

###Zooming via Keyboard

EssentialChart also enables users to use keyboard shortcuts to enable zooming. Enable this feature through the KeyZoom property.

Using the following properties the zooming action can be mapped to specific keys.

<table>
<tr>
<th>
Chart control Property</th><th>
Description</th></tr>
<tr>
<td>
ZoomCancel</td><td>
Specifies the keyboard shortcut to control Zoom cancel. The default value is ESCAPE.</td></tr>
<tr>
<td>
ZoomDown</td><td>
Specifies the keyboard shortcut to control Zoom Down. The default value is DOWN arrow.</td></tr>
<tr>
<td>
ZoomIn</td><td>
Specifies the keyboard shortcut to control Zoom In. The default value is ADD key. </td></tr>
<tr>
<td>
ZoomLeft</td><td>
Specifies the keyboard shortcut to control Zoom Left. The default value is LEFT arrow.</td></tr>
<tr>
<td>
ZoomOut</td><td>
Specifies the keyboard shortcut to control Zoom Out. The default value is SUBTRACT.</td></tr>
<tr>
<td>
ZoomRight</td><td>
Specifies the keyboard shortcut to control Zoom Right. The default value is RIGHT arrow.</td></tr>
<tr>
<td>
ZoomUp</td><td>
Specifies the keyboard short cut to control Zoom Up. The default value is UP arrow.</td></tr>
</table>


### Panning Support for Zoomed Chart

Now, you will be able to pan a chart when it is zoomed. Set the ChartControl.MouseAction to 'Panning' to enable this feature. Set the MouseAction to 'None' to disable this feature. The panning action can be controlled using the ZoomActions property that is available for individual axis. 


<table>
<tr>
<th>
Chart Axes Property</th><th>
Description</th></tr>
<tr>
<td>
ZoomActions</td><td>
Specifies the zoom action on the corresponding axis. The options are,{{ '_Panning_' | markdownify }} - Enables panning in the zoomed chart.{{ '_None_' | markdownify }} - Disables panning in the zoomed chart.</td></tr>
</table>


{% highlight c# %}

this.chartControl1.MouseAction = ChartMouseAction.Panning;

this.chartControl1.PrimaryXAxis.ZoomActions = ChartZoomingAction.Panning;

this.chartControl1.PrimaryYAxis.ZoomActions = ChartZoomingAction.Panning;


{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.MouseAction = ChartMouseAction.Panning

Me.chartControl1.PrimaryXAxis.ZoomActions = ChartZoomingAction.Panning

Me.chartControl1.PrimaryYAxis.ZoomActions = ChartZoomingAction.Panning

{% endhighlight %}



N> Remember to enable zooming on both the axis using EnableXZooming and EnableYZooming properties, before trying out the above panning feature. You cannot pan a chart without zooming it.

### Formatted Axes Lables

It is possible to show formatted axes labels for a zoomed chart. EssentialChart'sSmartDateZoom property when set to true enables this feature. You can set any one of the following custom label formats to the chart axis. 

* SmartDateZoomDayLevelLabelFormat 
* SmartDateZoomYearLevelLabelFormat
* SmartDateZoomWeekLevelLabelFormat 
* SmartDateZoomSecondLevelLabelFormat
* SmartDateZoomMonthLevelLabelFormat
* SmartDateZoomHourLevelLabelFormat
* SmartDateZoomMinuteLevelLabelFormat


{% highlight c# %}

this.chartControl1.PrimaryXAxis.SmartDateZoom = true;

this.chartControl1.PrimaryXAxis.SmartDateZoomDayLevelLabelFormat = "dd MM/yy HH.00";

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.PrimaryXAxis.SmartDateZoom = True

Me.chartControl1.PrimaryXAxis.SmartDateZoomDayLevelLabelFormat = "dd MM/yy HH.00"

{% endhighlight %}

![](Runtime-Features_images/Runtime-Features_img5.jpeg)



N> The value type of the axis should be "DateTime" for setting the above formatted labels.

A sample which demonstrates the zooming and scrolling features is available in the following sample installation location.

&lt;Install Location&gt;\Syncfusion\EssentialStudio\<Install version>\Web\chart.web\Samples\3.5\UserInteraction\ZoomingAndScrolling

{% seealso %}

[How to hide the Chart ZoomButton](/windowsforms/chart/faq/How-to-hide-the-Chart-ZoomButton)

{% endseealso %}

## Toolbars

EssentialCharts comes with a built-in Toolbar that can be made visible to enable the user to do the following during runtime.

* Save the chart as an image.
* Copy the image to clipboard.
* Print the chart.
* Print Preview of the Chart.
* Change the color palette of the chart.
* Affects the style of the chart.
* Change the Chart Type.
* Toggle 3D style of the Chart.
* Toggle Legend Appearance.

The toolbar can be made visible through the ChartControl's ShowToolbar property.

The toolbar looks like the below image.



![](Runtime-Features_images/Runtime-Features_img7.jpeg)



The toolbar commands and their functionalities are described below.

<table>
<tr>
<th>
Chart toolbar Commands</th><th>
Chart toolbar Items name</th><th>
Description</th></tr>
<tr>
<td>
Save</td><td>
ChartToolbarSaveItem</td><td>
Using this command, user can save the chart to a specific location.</td></tr>
<tr>
<td>
Copy</td><td>
ChartToolBarCopyItem</td><td>
Clicking this toolbar command will copy the chart to the clipboard.</td></tr>
<tr>
<td>
Styles</td><td>
ChartToolBarStyleItem</td><td>
This popsup a Chart Series Style dialog window, using which various properties and chart styles can be set. </td></tr>
<tr>
<td>
Print</td><td>
ChartToolBarPrintItem</td><td>
This toolbar command is used to print the Chart.</td></tr>
<tr>
<td>
Palette</td><td>
ChartToolBarPaletteItem</td><td>
Palette for the series can be chosen at run time using this command. All palette colors available in the designer will be available in this Palette option also.</td></tr>
<tr>
<td>
Chart Types</td><td>
ChartToolBarTypeItem</td><td>
Any chart type can be set for the chart at run time using this command.</td></tr>
<tr>
<td>
Print Preview</td><td>
ChartToolBarPrintPreviewItem</td><td>
This toolbar command is used to see a print preview of the Chart.</td></tr>
<tr>
<td>
Toggling 3D</td><td>
ChartToolBarSeries3DItem</td><td>
This command is used to toggle the 3D mode of the chart.</td></tr>
<tr>
<td>
Toggle Legend Appearance</td><td>
ChartToolBarShowLegendItem</td><td>
This command is used to toggle the legend appearance.</td></tr>
<tr>
<td>
Splitter</td><td>
ChartToolBarSplitter</td><td>
This item provides a logical split between the collection of commands.</td></tr>
</table>


### Custom Toolbar Commands

You can also add custom toolbar items using ChartToolBarCommandItem class. The ChartCommands enum lists the commands that can be added. The following table describes those commands.



<table>
<tr>
<th>
Chart toolbar Custom Commands</th><th>
Description</th></tr>
<tr>
<td>
ZoomIn</td><td>
Using this command, user can zoom the chart.</td></tr>
<tr>
<td>
ZoomOut</td><td>
This command zooms out the chart.</td></tr>
<tr>
<td>
ResetZooming</td><td>
The zooming is reset using this command.</td></tr>
<tr>
<td>
AutoHighlight</td><td>
This command is used to enable the autohighlight feature in the chart series.</td></tr>
<tr>
<td>
ToggleXZooming</td><td>
This toolbar command enables zooming in x-axis.</td></tr>
<tr>
<td>
ToggleYZooming</td><td>
This toolbar command enables zooming in y-axis.</td></tr>
<tr>
<td>
TogglePanning</td><td>
This command enables panning of the zoomed chart.</td></tr>
</table>


{% highlight c# %}

ChartToolBarCommandItem x1 = new ChartToolBarCommandItem();

x1.Command = ChartCommands.AutoHighlight;

x1.IsCheckable = false;

Image v = System.Drawing.Image.FromFile(@"..\..\Data\Visio.png");

x1.Image = v;

x1.Name = "Custom Tools";

x1.ToolTip = "Highlighting";

x1.Checked = true;

this.chartControl1.ToolBar.Items.Add(x1); 

{% endhighlight %}

{% highlight vbnet %}

Dim x1 As New ChartToolBarCommandItem()

x1.Command = ChartCommands.AutoHighlight

x1.IsCheckable = False

Dim v As Image = System.Drawing.Image.FromFile("..\..\Data\Visio.png")

x1.Image = v

x1.Name = "Custom Tools"

x1.ToolTip = "Highlighting"

x1.Checked = True

Me.chartControl1.ToolBar.Items.Add(x1)

{% endhighlight %}
  
![](Runtime-Features_images/Runtime-Features_img8.jpeg)


![](Runtime-Features_images/Runtime-Features_img9.jpeg)


### Toolbar Properties

The chart control provides complete support for customizing the toolbar appearance. Use the ChartControl.ToolBar property to access the toolbar. At runtime, double-click the toolbar to show the ToolBar Properties dialog box as in the below image, which lists all the properties. For this, you need to set the ToolBar.ShowDialog property to True. If you do not want to display this dialog box, set this property to False.



![](Runtime-Features_images/Runtime-Features_img10.jpeg)


Below are the toolbar properties and their description.

<table>
<tr>
<th>
Chart ToolBar Property</th><th>
Description</th></tr>
<tr>
<td>
Alignment</td><td>
Indicates the alignment of the toolbar. Default value is Center.</td></tr>
<tr>
<td>
Autosize</td><td>
Indicates if the toolbar can be resized automatically. Default value is true.</td></tr>
<tr>
<td>
BackColor</td><td>
Indicates back color of the toolbar.</td></tr>
<tr>
<td>
Border</td><td>
Specifies the border style.</td></tr>
<tr>
<td>
Buttons</td><td>
List of buttons to which you can add new Buttons or delete existing ones.</td></tr>
<tr>
<td>
ButtonBackColor</td><td>
Gets / sets the back color of the toolbar button.</td></tr>
<tr>
<td>
ButtonFlatStyle</td><td>
Gets / sets the flat style appearance for the toolbar button control. Default value is FlatStyle.Flat.</td></tr>
<tr>
<td>
ButtonForeColor</td><td>
Gets / sets the fore color of the toolbar button.</td></tr>
<tr>
<td>
ButtonSize</td><td>
Indicates the button size of the toolbar buttons.</td></tr>
<tr>
<td>
DockingFree</td><td>
Indicates if the toolbar is to be held docked. Default value is false.</td></tr>
<tr>
<td>
Header</td><td>
Gets / sets the height of the header. Default value 0.</td></tr>
<tr>
<td>
Location</td><td>
Gets / sets the location of the toolbar.</td></tr>
<tr>
<td>
Orientation</td><td>
Gets / sets the orientation of the toolbar. Default value is Horizontal.</td></tr>
<tr>
<td>
Position</td><td>
Gets / sets the docking position of the toolbar. Default value is ChartDock.Top.</td></tr>
<tr>
<td>
ShowBorder</td><td>
Indicates if the border of the toolbar should be shown. Default value is true.</td></tr>
<tr>
<td>
Size</td><td>
Gets / sets the size of the toolbar button. Will be used only when Autosize property is set to false.</td></tr>
<tr>
<td>
Spacing</td><td>
Gets or sets the spacing. Default value is 4.</td></tr>
</table>

## Appearance

Setting Styles for the Chart through the Toolbar

Click the Styles icon in the toolbar to open the Chart Series Style dialog box. The following are the settings available in this dialog box.

* Interior color for the series can be set using the options available in the Interior tab. 
* Border properties using Border tab.
* Text for the series can be enabled and also customized using the Text tab.
* Shadow for the series can be enabled and customized using the Shadow tab.
* Series can hold customized symbols using the Symbol tab.
* FancyToolTip can be enabled using the options available in the Fancy ToolTip tab.

The below image shows how to set the interior properties through "Interior" tab in the Chart Series Style Window. This can be invoked by clicking "Styles" command.



![](Runtime-Features_images/Runtime-Features_img11.jpeg)


![](Runtime-Features_images/Runtime-Features_img12.jpeg)



### Toolbar Appearance

Toolbar provides an option to set different back color, border style, button back color and button fore color. 

User can enable or disable the Border line of Toolbar by using ShowBorder property in the Toolbar instance.



![](Runtime-Features_images/Runtime-Features_img13.jpeg)


### Toolbar Behavior

The docking behavior of the Toolbar can be controlled using Toolbar.Behavior property. 


<table>
<tr>
<th>
Toolbar Property</th><th>
Description</th></tr>
<tr>
<td>
Behavior</td><td>
Specifies the docking behavior of the toolbar.Docking - It is dockable on all four sides.Movable - It is movable.All - It is movable and dockable.None - It is neither movable nor dockable.</td></tr>
</table>



{% highlight c# %}

this.chartControl1.ToolBar.Behavior = ChartDockingFlags.All;

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.ToolBar.Behavior = ChartDockingFlags.All

{% endhighlight %}

N> You can display or hide a toolbar while printing a Chart. See Printing And Print Preview topic for more details.

## Context Menu

Chart Area and Series Context menu

The chart has a built-in context menu, which can be enabled by setting the ShowContextMenu property to true. This context menu will let the user change the chart type on a series, enable zooming, switch between 2D and 3D modes and so on.

There are two types of context menus, both of which get shown by default when the above property is set to true.

1. Chart Area context menu - This will be displayed when the mouse is over the chart area.
 
   ![](Runtime-Features_images/Runtime-Features_img15.jpeg)


   This context menu can be disabled by setting the DisplayChartContextMenu property to false.

2. Chart Series context menu - This will be displayed when the mouse is over a series.

   ![](Runtime-Features_images/Runtime-Features_img16.jpeg)

    This context menu can be disabled by setting the DisplaySeriesContextMenu property to false.

### Legend Context Menu

This context menu can be enabled by setting the ShowContextMenuInLegend property to true.

![](Runtime-Features_images/Runtime-Features_img17.jpeg)

## Interactive Features

### Interactive Cursor

This feature lets you position the mouse pointer at a specific data point in a series and hint you on it's x and y values via a horizontal and vertical line passing through the data point and intersecting the x and y axis. These lines can be dragged around in order to position them at specific data points.

Interactive Cursor can be implemented by creating an instance of ChartInteractiveCursor with the ChartSeries as its input. Then add the instance to the InteractiveCursors collection as shown below. 


{% highlight c# %}

// Create a new instance of the ChartInteractiveCursor class and initialize chartseries into it.

ChartInteractiveCursor cursor1 = new ChartInteractiveCursor(this.chartControl1.Series[0]);



// Add the instance to the ChartInteractive Cursor collection.

this.chartControl1.ChartArea.InteractiveCursors.Add(cursor1));



//Color of the pointer

cursor1.Color = Color.Red;

{% endhighlight %}

{% highlight vbnet %}

' Create a new instance of the ChartInteractiveCursor class and initialize chartseries into it.

ChartInteractiveCursor cursor1 = New ChartInteractiveCursor(Me.chartControl1.Series(0))



' Add the instance to the ChartInteractive Cursor collection.

Me.chartControl1.ChartArea.InteractiveCursors.Add(cursor1))



'Color of the pointer

cursor1.Color = Color.Red

{% endhighlight %}

![](Runtime-Features_images/Runtime-Features_img18.jpeg)


### Chart AutoHighlight 

The points or the series of the chart can be highlighted when the mouse hovers over them. Use the AutoHighlight property to enable this feature.



![](Runtime-Features_images/Runtime-Features_img19.jpeg)



### Chart Series Highlighting

You can also highlight a particular chart series alone while mouse hovering, and make the other series transparent. For this, you need to set SeriesHighlight property to _true_. The series can also be highlighted by hovering the mouse over a legend item corresponding to a particular series.

The following table describes properties related to this feature.



<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
HighlightInterior</td><td>
Sets the highlight color for the series.</td></tr>
<tr>
<td>
HiddenInterior</td><td>
Controls the transparency of the non-highlighted series. While mouse hovering on a particular series, all other series will be set with the color, specified in this property.</td></tr>
<tr>
<td>
SeriesHighlightIndex</td><td>
If you want to highlight only a particular series alone, you need to set the index value for this property. The default value is {{ '_-1_' | markdownify }}.</td></tr>
</table>


N> The AutoHighlight property should be disabled to enable this chart series highlighting feature.



{% highlight c# %}

this.chartControl1.SeriesHighlight = true;

this.chartControl1.Series[0].Style.HighlightInterior = new BrushInfo(Color.Gold);

BrushInfo bi = new BrushInfo(GradientStyle.Vertical, Color.Red, Color.Red);

this.chartControl1.Series[0].Style.HiddenInterior = new BrushInfo(0, bi); 

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.SeriesHighlight = True

Me.chartControl1.Series(0).Style.HighlightInterior = New BrushInfo(Color.Gold)

Dim bi As New BrushInfo(GradientStyle.Vertical, Color.Red, Color.Red)

Me.chartControl1.Series(0).Style.HiddenInterior = New BrushInfo(0, bi

{% endhighlight %}

![](Runtime-Features_images/Runtime-Features_img21.jpeg)

### Drawing Interactive Cursor Separately – Either Horizontally or Vertically or Both 

An Interactive cursor is used to indicate the x-axis and y-axis values of a data point. The interactive cursor can be drawn in different orientations namely Horizontal, Vertical and in both directions. The cursor color can also be changed according to requirements. The default color is set at the initial stage and this can be changed according to orientation or a common color can be set for both orientations as the parent color.

### Use Case Scenarios

The purpose of using Chart Interactive Cursor is to indicate the x-axis and y-axis values for a specified data point.  You can accurately locate the position of the point on the axes. You can use it as per your requirement i.e. horizontal, vertical or both accordingly.

The following screen shot shows the Interactive cursor, which is drawn in horizontal orientation:

![](Runtime-Features_images/Runtime-Features_img22.png)


_Properties_

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
CursorOrientation</td><td>
Indicates the orientation in which the Interactive Cursor is to be drawn. The options are : * Horizontal* Vertical* Both</td><td>
<br>Enum </td></tr>
<tr>
<td>
HorizontalCursorColor</td><td>
Specifies the color, which is to be used when Horizontal Interactive Cursor is drawn</td><td>
Color</td></tr>
<tr>
<td>
VerticalCursorColor</td><td>
Specifies the color, which is to be used when Vertical  Interactive Cursor is drawn</td><td>
Color</td></tr>
<tr>
<td>
Color</td><td>
Specifies the base color, which is to be used other than the default color. This acts as a parent color.</td><td>
Color</td></tr>
</table>
Drawing Interactive Cursor in a Chart Application

To add Interactive Cursor to the Chart control:

1. Add a Interactive cursor to the Chart control.
2. Set the orientation to horizontal or vertical or both.
3. Choose the color.

Refer to the following code snippets to draw the interactive cursor separately.


{% highlight c# %}

cursor1 = new ChartInteractiveCursor(this.chartControl1.Series[0]);

this.chartControl1.ChartArea.InteractiveCursors.Add(cursor1);           

cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal;

cursor1.HorizontalCursorColor = Color.Red;

{% endhighlight %}

{% highlight vbnet %}

cursor1 = New ChartInteractiveCursor(Me.chartControl1.Series(0))

      Me.chartControl1.ChartArea.InteractiveCursors.Add(cursor1)

      cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal

      cursor1.HorizontalCursorColor = Color.Red

{% endhighlight %}


The interactive cursor as described earlier can be set in three different orientations. 

To draw the interactive cursor in horizontal orientation, you need to set the cursor orientation to “Horizontal” as shown in the following code snippets:


{% highlight c# %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal;

{% endhighlight %}

{% highlight vbnet %}

      cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal

{% endhighlight %}


The same step is repeated for “vertical” and “both” cursor orientations except for the naming “Vertical” and “Both” respectively.

You can also add color(s) to individual interactive cursor. The default color (base color) is Red. You can change the default color by using Color, HorizontalCursorColor, and VerticalCursorColor properties. When you use the Color property, the interactive cursor will be drawn based on the color specified by the Color property (assuming this as base/parent color) regardless of the colors specified for Horizontal and Vertical cursor orientations. This is shown in the following code snippets:


{% highlight c# %}

      cursor1.CursorOrientation = InteractiveCursorOrientation.Both ;

      cursor1.Color = Color.Blue;

      cursor1.VerticalCursorColor = Color.Green;

cursor1.HorizontalCursorColor = Color.Red;

{% endhighlight %}

{% highlight vbnet %}

       cursor1.CursorOrientation = InteractiveCursorOrientation.Both

       cursor1.Color = Color.Blue

       cursor1.VerticalCursorColor = Color.Green

       cursor1.HorizontalCursorColor = Color.Red

{% endhighlight %}


Now, the default color would be replaced with blue color at both the orientations as it is the parent color.



![](Runtime-Features_images/Runtime-Features_img23.png)


The following code snippets draw interactive cursor in different colors:


{% highlight c# %}

      cursor1.CursorOrientation = InteractiveCursorOrientation.Both ;

      cursor1.VerticalCursorColor = Color.Green;

cursor1.HorizontalCursorColor = Color.Red;

{% endhighlight %}

{% highlight vbnet %}

       cursor1.CursorOrientation = InteractiveCursorOrientation.Both

       cursor1.VerticalCursorColor = Color.Green

       cursor1.HorizontalCursorColor = Color.Red

{% endhighlight %}


![](Runtime-Features_images/Runtime-Features_img24.png)


### ChartInteractiveCursor Support for Chart Area

EssentialChart now supports moving the interactive cursor fully over the chart area. It provides simple methods to display symbols at the intersection of series points and the interactive cursor.

### Use Case Scenarios

This feature is useful for moving the interactive cursor across the entire chart area region, allowing users to get the intersection point values between the series and interactive cursor. 

### Sample Link

To view a sample,

1. Open the Syncfusion Dashboard.
2. Click the Windows Forms drop-down list and select Run Locally Installed Samples.
3. Navigate to Chart samples > User Interaction > Chart Interactive Cursor.


<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th></tr>
<tr>
<td>
MoveToChartArea</td><td>
Specifies whether the  interactive cursor is enabled for chart series or series points</td><td>
Server Side </td><td>
Boolean</td></tr>
<tr>
<td>
XInterval</td><td>
Specifies the cursor movement on the x-axis (left to right or right to left)</td><td>
Server Side</td><td>
Double</td></tr>
<tr>
<td>
YInterval</td><td>
Specifies the cursor movement on the y-axis (top to bottom or bottom to top)</td><td>
Server Side</td><td>
Double</td></tr>
</table>

_Methods_

<table>
<tr>
<th>
Method </th><th>
Description </th><th>
Parameters </th><th>
Type </th><th>
Return Type </th></tr>
<tr>
<td>
SetSeriesSymbolForCursor</td><td>
Used to customize the symbol which will be displayed at the intersection between the series point and interactive cursor.  </td><td>
ChartSymbolInfo</td><td>
Server Side</td><td>
Void </td></tr>
</table>


### Existing Features

We can move the interactive cursor for series points only (i.e., the interactive cursor can be moved from one data point to another by dragging). Users cannot move the interactive cursor over the whole chart area.

### MoveToChartArea

We can enable this feature by setting the MoveToChartArea property of the interactive cursor to true. The default value is false.


{% highlight c# %}

 this.chartControl1.ChartArea.InteractiveCursors[0].MoveToChartArea = true;

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.ChartArea.InteractiveCursors(0).MoveToChartArea = True

{% endhighlight %}

### XInterval

The cursor on the x-axis can be moved from left to right or right to left based on the value provided in this property of the interactive cursor.

### YInterval

The cursor on the y-axis can be moved from top to bottom or bottom to top based on the value provided in this property of the interactive cursor.

### Symbol

Symbols will be displayed when the interactive cursor meets the series point in the chart area by dragging.


{% highlight c# %}

 this.chartControl1.ChartArea.InteractiveCursors[0].XInterval = 2;

 this.chartControl1.ChartArea.InteractiveCursors[0].YInterval = 50;

{% endhighlight %}

{% highlight vbnet %}

  Me.chartControl1.ChartArea.InteractiveCursors(0).XInterval = 2

  Me.chartControl1.ChartArea.InteractiveCursors(0).YInterval = 50

{% endhighlight %}

![C:/Users/sivakumard/Desktop/Symbols.PNG](Runtime-Features_images/Runtime-Features_img25.png)


## ToolTips

Essential Chart supports ToolTips in different areas of the chart which comes with multiple customization options.

The different tooltips in the chart can be turned off using the control's ShowToolTips property.

N> The ShowToolTips property in the chart is false by default, so remember to turn this on, before setting tooltips in the different chart areas.

### DataPoint Tooltips

Tooltips can be shown on each data point when the mouse hovers on them. The format of the tooltip is specified by the following property in ChartSeries.


<table>
<tr>
<th>
ChartSeries Property</th><th>
Description</th></tr>
<tr>
<td>
PointsToolTipFormat</td><td>
Specifies the format for the datapoint tooltips. The following place-holders can be used in the value.{0} - Will be replaced by the corresponding ChartSeries.Name.{1} - Will be replaced by the corresponding ChartSeries.Style.ToolTip.{2} - Will be replaced by the corresponding data point's tooltip, for example to set the first point's tooltip, use "series1.Styles[0].ToolTip".{3} - Will be replaced by the corresponding X value of the point.{4} - Will be replaced by the corresponding Y value of the point. Default setting.{5} - Will be replaced by the 2nd Y value, if any.{6} - and so on.</td></tr>
</table>



{% highlight c# %}

series1.PointsToolTipFormat = "Sales:{4}K";

{% endhighlight %}

{% highlight vbnet %}

series1.PointsToolTipFormat = "Sales:{4}K"

{% endhighlight %}


![](Runtime-Features_images/Runtime-Features_img27.jpeg)



You can also customize the tooltip for individual data points by setting the ToolTip style for each data point. This is best accomplished by listening to the ChartSeries.PrepareStyle event as shown below.


{% highlight c# %}

//Setting the Tooltip Format

series1.PointsToolTipFormat = "{2}"; 



protected void series1_PrepareStyle(object sender, ChartPrepareStyleInfoEventArgs args)

{

  // Style formatting using a callback. You can apply the same settings directly on the series style on the

  // point styles.

  ChartSeries series = sender as ChartSeries;

  if (series != null)

  {

    args.Style.ToolTip = "Made " + ( (series.Points[args.Index].YValues[0] / 150) * 100) + "% of quota";

    args.Handled = true;

  }

}



{% endhighlight %}

{% highlight vbnet %}

'Setting the Tooltip Format

series1.PointsToolTipFormat = "{2}"



Protected Sub series1_PrepareStyle(ByVal sender As Object, ByVal args As ChartPrepareStyleInfoEventArgs)

' Style formatting using a callback. You can apply the same settings directly on the series style on the

' point styles.

    Dim series As ChartSeries = CType(IIf(TypeOf sender Is ChartSeries, sender, Nothing), ChartSeries)

    If Not series Is Nothing Then

      args.Style.ToolTip = "Made " + ( (series.Points[args.Index].YValues[0] / 150) * 100) + "% of quota"

      args.Handled = True

    End If

End Sub

{% endhighlight %}


![](Runtime-Features_images/Runtime-Features_img28.jpeg)


### Chart Area Tooltip

Tooltips can also be set for the whole chart area (does not include legends and the space around legends) through the ChartAreaToolTip. The data points tooltips will of course override this setting.

### Chart Empty Area Tooltip

The chart also lets you show a tooltip when the mouse hovers over empty areas in the chart (usually around the legend) via the ChartToolTip property.

### DataPoint FancyToolTip

Chart Windows includes a "fancy tooltip" feature. As the name implies, this tooltip, which occurs when hovering over a data point looks like a balloon and includes information regarding the series name and the X, Y points. This feature can be turned on by setting the ChartSeries.FancyToolTip.Visible property to true.

The FancyToolTip can also be customized with more of the following properties.



<table>
<tr>
<th>
FancyToolTip Property</th><th>
Description</th></tr>
<tr>
<td>
Alignment</td><td>
Indicates the alignment of the marker to that of the tooltip balloon.</td></tr>
<tr>
<td>
Angle</td><td>
Specifies the angle at which to render the balloon in the alignment specified.</td></tr>
<tr>
<td>
BackColor</td><td>
Specifies the back color</td></tr>
<tr>
<td>
Border</td><td>
Let you customize the border look of the tooltip.</td></tr>
<tr>
<td>
CheckLocation</td><td>
Specifies whether the tooltip should auto align when shown for data points close to the chart border.</td></tr>
<tr>
<td>
Font</td><td>
Specifies the font for the tooltip text.</td></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the color for the tooltip text.</td></tr>
<tr>
<td>
Spacing</td><td>
The space between the tooltip text and the border.</td></tr>
<tr>
<td>
Style</td><td>
Specifies the tooltip style. Possible values:EllipseRectangleSmoothRectangle - Default value</td></tr>
<tr>
<td>
Symbol</td><td>
Specifies the symbol shape to use.</td></tr>
<tr>
<td>
SymbolColor</td><td>
Specifies the inner color of the symbol.</td></tr>
<tr>
<td>
SymbolSize</td><td>
Specifies the size of the symbol.</td></tr>
<tr>
<td>
ToTarget</td><td>
Specifies the distance between the balloon and the target.</td></tr>
<tr>
<td>
Visible</td><td>
Turns on/off fancy tooltips.</td></tr>
</table>


{% highlight c# %}

series1.FancyToolTip.Visible = true;

series1.FancyToolTip.Alignment = TabAlignment.Top;

{% endhighlight %}

{% highlight vbnet %}

series1.FancyToolTip.Visible = True

series1.FancyToolTip.Alignment = TabAlignment.Top

{% endhighlight %}

![](Runtime-Features_images/Runtime-Features_img29.jpeg)



{% seealso %}

[How to display tooltip over Histogram Chart columns](/windowsforms/chart/faq/How-to-display-custom-tooltip-over-Histogram-Chart)

{% endseealso %}