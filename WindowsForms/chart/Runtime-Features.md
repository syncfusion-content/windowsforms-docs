---
layout: post
title: User Interactions in Windows Forms Chart control | Syncfusion
description: Learn about User Interactions support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# User Interactions in Windows Forms Chart

The following topics under this section elaborates on the runtime features of Chart control.

## Toolbars

Essential® Charts comes with a built-in Toolbar that can be made visible to enable the user to do the following during runtime.

* Save the chart as an image.
* Copy the image to clipboard.
* Print the chart.
* Print Preview of the Chart.
* Change the color palette of the chart.
* Affects the style of the chart.
* Change the Chart Type.
* Toggle 3D style of the Chart.
* Toggle Legend Appearance.

The toolbar can be made visible through the ChartControl's [ShowToolbar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowToolbar) property.

The toolbar looks like the below image.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img7.jpeg)

The toolbar commands and their functionalities are described below.

<table>
<tr>
<th>
Chart toolbar Commands</th><th>
Chart toolbar Items name</th><th>
Description</th></tr>
<tr>
<td>

{{'[Save](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_Save)'| markdownify }}
</td><td>

{{'[ChartToolBarSaveItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarSaveItem.html)'| markdownify }}
</td><td>
Using this command, user can save the chart to a specific location.</td></tr>
<tr>
<td>
{{'[Copy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_Copy)'| markdownify }}
</td><td>
{{'[ChartToolBarCopyItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarCopyItem.html)'| markdownify }}
</td><td>
Clicking this toolbar command will copy the chart to the clipboard.</td></tr>
<tr>
<td>
{{'[Styles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_Styles)'| markdownify }}
</td><td>
{{'[ChartToolBarStyleItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarStyleItem.html)'| markdownify }}
</td><td>
This pops up a Chart Series Style dialog window, using which various properties and chart styles can be set. </td></tr>
<tr>
<td>
{{'[Print](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_Print)'| markdownify }}
</td><td>
{{'[ChartToolBarPrintItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarPrintItem.html)'| markdownify }}
</td><td>
This toolbar command is used to print the Chart.</td></tr>
<tr>
<td>
{{'[Palette](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Palette)'| markdownify }}
</td><td>
{{'[ChartToolBarPaletteItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarPaletteItem.html)'| markdownify }}
</td><td>
Palette for the series can be chosen at run time using this command. All palette colors available in the designer will be available in this Palette option also.</td></tr>
<tr>
<td>
{{'[Chart Types](https://help.syncfusion.com/windowsforms/chart/chart-types)'| markdownify }}
</td><td>
{{'[ChartToolBarTypeItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarTypeItem.html)'| markdownify }}
</td><td>
Any chart type can be set for the chart at run time using this command.</td></tr>
<tr>
<td>
{{'[PrintPreview](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_PrintPriview)'| markdownify }}
</td><td>
{{'[ChartToolBarPrintPreviewItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarPrintPreviewItem.html)'| markdownify }}
</td><td>
This toolbar command is used to see a print preview of the Chart.</td></tr>
<tr>
<td>
{{'[Toggle3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_Toggle3D)'| markdownify }}
</td><td>
{{'[ChartToolBarSeries3DItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarSeries3DItem.html)'| markdownify }}
</td><td>
This command is used to toggle the 3D mode of the chart.</td></tr>
<tr>
<td>
Toggle Legend Appearance</td><td>
{{'[ChartToolBarShowLegendItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarShowLegendItem.html)'| markdownify }}
</td><td>
This command is used to toggle the legend appearance.</td></tr>
<tr>
<td>
Splitter</td><td>
{{'[ChartToolBarSplitter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarSplitter.html)'| markdownify }}
</td><td>
This item provides a logical split between the collection of commands.</td></tr>
</table>

### Saving chart without toolbar

When clicking the save/copy toolbar item, the toolbar will also be copied along with chart. You can use the 'IncludeInExportedChart' property of the 'Toolbar' to specify whether the toolbar should be saved along with chart control. The default value of this property is *true*.

{% tabs %}  

{% highlight c# %}

//Save chart without toolbar
this.chartControl1.ToolBar.IncludeInExportedChart = false;

{% endhighlight %}

{% highlight vb %}

'Save chart without toolbar
Me.chartControl1.ToolBar.IncludeInExportedChart = false

{% endhighlight %}
{% endtabs %}

![Chart exported with toolbar](Runtime-Features_images/Runtime-Features_img34.jpg)

![Chart exported without toolbar](Runtime-Features_images/Runtime-Features_img35.jpg)

### Custom Toolbar Commands

You can also add custom toolbar items using [ChartToolBarCommandItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarCommandItem.html) class. The [ChartCommands](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html) enum lists the commands that can be added. The following table describes those commands.

<table>
<tr>
<th>
Chart toolbar Custom Commands</th><th>
Description</th></tr>
<tr>
<td>

{{'[ZoomIn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomIn)'| markdownify }}
</td><td>
Using this command, user can zoom the chart.</td></tr>
<tr>
<td>
{{'[ZoomOut](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomOut)'| markdownify }}
</td><td>
This command zooms out the chart.</td></tr>
<tr>
<td>
{{'[ResetZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_ResetZooming)'| markdownify }}
</td><td>
The zooming is reset using this command.</td></tr>
<tr>
<td>
{{'[AutoHighlight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_AutoHighlight)'| markdownify }}
</td><td>
This command is used to enable the auto highlight feature in the chart series.</td></tr>
<tr>
<td>
{{'[ToggleXZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_ToggleXZooming)'| markdownify }}
</td><td>
This toolbar command enables zooming in x-axis.</td></tr>
<tr>
<td>
{{'[ToggleYZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_ToggleYZooming)'| markdownify }}
</td><td>
This toolbar command enables zooming in y-axis.</td></tr>
<tr>
<td>
{{'[TogglePanning](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCommands.html#Syncfusion_Windows_Forms_Chart_ChartCommands_TogglePanning)'| markdownify }}
</td><td>
This command enables panning of the zoomed chart.</td></tr>
</table>

{% tabs %}  

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

{% highlight vb %}

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
{% endtabs %}
  
![Chart Runtime](Runtime-Features_images/Runtime-Features_img8.jpeg)

![Chart Runtime](Runtime-Features_images/Runtime-Features_img9.jpeg)

### Toolbar Properties

The chart control provides complete support for customizing the toolbar appearance. Use the [ChartControl.ToolBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ToolBar) property to access the toolbar. At runtime, double-click the toolbar to show the ToolBar Properties dialog box as in the below image, which lists all the properties. For this, you need to set the [ToolBar.ShowDialog](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ShowDialog) property to True. If you do not want to display this dialog box, set this property to False.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img10.jpeg)

Below are the toolbar properties and their description.

<table>
<tr>
<th>
Chart ToolBar Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[Alignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Alignment)'| markdownify }}
</td><td>
Indicates the alignment of the toolbar. Default value is Center.</td></tr>
<tr>
<td>
{{'[AutoSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_AutoSize)'| markdownify }}
</td><td>
Indicates if the toolbar can be resized automatically. Default value is true.</td></tr>
<tr>
<td>
{{'[BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_BackColor)'| markdownify }}
</td><td>
Indicates back color of the toolbar.</td></tr>
<tr>
<td>
{{'[Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Buttons)'| markdownify }}
</td><td>
Specifies the border style.</td></tr>
<tr>
<td>
{{'[Buttons](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Border)'| markdownify }}
</td><td>
List of buttons to which you can add new Buttons or delete existing ones.</td></tr>
<tr>
<td>
{{'[ButtonBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ButtonBackColor)'| markdownify }}
</td><td>
Gets / sets the back color of the toolbar button.</td></tr>
<tr>
<td>
{{'[ButtonFlatStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ButtonFlatStyle)'| markdownify }}
</td><td>
Gets / sets the flat style appearance for the toolbar button control. Default value is **FlatStyle.Flat**.</td></tr>
<tr>
<td>
{{'[ButtonForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ButtonForeColor)'| markdownify }}
</td><td>
Gets / sets the fore color of the toolbar button.</td></tr>
<tr>
<td>
{{'[ButtonSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ButtonSize)'| markdownify }}
</td><td>
Indicates the button size of the toolbar buttons.</td></tr>
<tr>
<td>
{{'[DockingFree](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_DockingFree)'| markdownify }}
</td><td>
Indicates if the toolbar is to be held docked. Default value is false.</td></tr>
<tr>
<td>
{{'[Header](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Header)'| markdownify }}
</td><td>
Gets / sets the height of the header. Default value is 0.</td></tr>
<tr>
<td>
{{'[Location](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Location)'| markdownify }}
</td><td>
Gets / sets the location of the toolbar.</td></tr>
<tr>
<td>
{{'[Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Orientation)'| markdownify }}
</td><td>
Gets / sets the orientation of the toolbar. Default value is Horizontal.</td></tr>
<tr>
<td>
{{'[Position](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Position)'| markdownify }}
</td><td>
Gets / sets the docking position of the toolbar. Default value is ChartDock.Top.</td></tr>
<tr>
<td>
{{'[ShowBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ShowBorder)'| markdownify }}
</td><td>
Indicates if the border of the toolbar should be shown. Default value is true.</td></tr>
<tr>
<td>
{{'[Size](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Size)'| markdownify }}
</td><td>
Gets / sets the size of the toolbar button. Will be used only when Autosize property is set to false.</td></tr>
<tr>
<td>
{{'[Spacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Spacing)'| markdownify }}
</td><td>
Gets or sets the spacing. Default value is 4.</td></tr>
</table>

## Appearance

Setting Styles for the Chart through the Toolbar.

Click the Styles icon in the toolbar to open the Chart Series Style dialog box. The following are the settings available in this dialog box.

* **Interior** color for the series can be set using the options available in the Interior tab. 
* **Border** properties using Border tab.
* **Text** for the series can be enabled and also customized using the Text tab.
* **Shadow** for the series can be enabled and customized using the Shadow tab.
* **Series** can hold customized symbols using the Symbol tab.
* **FancyToolTip** can be enabled using the options available in the Fancy ToolTip tab.

The below image shows how to set the interior properties through **Interior** tab in the Chart Series Style Window. This can be invoked by clicking [Styles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_Styles) command.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img11.jpeg)

![Chart Runtime](Runtime-Features_images/Runtime-Features_img12.jpeg)

### Toolbar Appearance

Toolbar provides an option to set different back color, border style, button back color and button fore color. 

User can enable or disable the Border line of Toolbar by using [ShowBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_ShowBorder) property in the Toolbar instance.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img13.jpeg)

### Toolbar Behavior

The docking behavior of the Toolbar can be controlled using [Toolbar.Behavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Behavior) property. 

<table>
<tr>
<th>
Toolbar Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[Behavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartToolBarInfo.html#Syncfusion_Windows_Forms_Chart_ChartToolBarInfo_Behavior)'| markdownify }}
</td><td>
Specifies the docking behavior of the toolbar. <ul><li>Docking - It is dockable on all four sides.</li><li>Movable - It is movable.</li><li>All - It is movable and dockable.</li><li>None - It is neither movable nor dockable.</li></ul></td></tr>
</table>

{% tabs %}  

{% highlight c# %}

this.chartControl1.ToolBar.Behavior = ChartDockingFlags.All;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ToolBar.Behavior = ChartDockingFlags.All

{% endhighlight %}
{% endtabs %}

N> You can display or hide a toolbar while printing a Chart. See Printing And Print Preview topic for more details.

## Context Menu

Chart Area and Series Context menu

The chart has a built-in context menu, which can be enabled by setting the [ShowContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowContextMenu) property to true. This context menu will let the user change the chart type on a series, enable zooming, switch between 2D and 3D modes and so on.

There are two types of context menus, both of which get shown by default when the above property is set to true.

1.Chart Area context menu - This will be displayed when the mouse is over the chart area.
 
![Chart Runtime](Runtime-Features_images/Runtime-Features_img15.jpeg)

This context menu can be disabled by setting the [DisplayChartContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_DisplayChartContextMenu) property to false.

2.Chart Series context menu - This will be displayed when the mouse is over a series.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img16.jpeg)

This context menu can be disabled by setting the [DisplaySeriesContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_DisplaySeriesContextMenu) property to false.

### Legend Context Menu

This context menu can be enabled by setting the [ShowContextMenuInLegend](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowContextMenuInLegend) property to true.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img17.jpeg)

## Interactive Features

### Interactive Cursor

This feature lets you position the mouse pointer at a specific data point in a series and hint you on it's x and y values via a horizontal and vertical line passing through the data point and intersecting the x and y axis. These lines can be dragged around in order to position them at specific data points.

Interactive Cursor can be implemented by creating an instance of [ChartInteractiveCursor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) with the [ChartSeries](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html) as its input. Then add the instance to the [InteractiveCursors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_InteractiveCursors) collection as shown below. 

{% tabs %}  

{% highlight c# %}

// Create a new instance of the ChartInteractiveCursor class and initialize chart series into it.

ChartInteractiveCursor cursor1 = new ChartInteractiveCursor(this.chartControl1.Series[0]);

// Add the instance to the ChartInteractive Cursor collection.

this.chartControl1.ChartArea.InteractiveCursors.Add(cursor1));

//Color of the pointer

cursor1.Color = Color.Red;

{% endhighlight %}

{% highlight vb %}

' Create a new instance of the ChartInteractiveCursor class and initialize chart series into it.

ChartInteractiveCursor cursor1 = New ChartInteractiveCursor(Me.chartControl1.Series(0))

' Add the instance to the ChartInteractive Cursor collection.

Me.chartControl1.ChartArea.InteractiveCursors.Add(cursor1))

'Color of the pointer

cursor1.Color = Color.Red

{% endhighlight %}
{% endtabs %}

![Chart Runtime](Runtime-Features_images/Runtime-Features_img18.jpeg)

### Chart AutoHighlight 

The points or the series of the chart can be highlighted when the mouse hovers over them. Use the [AutoHighlight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_AutoHighlight) property to enable this feature.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img19.jpeg)

### Chart Series Highlighting

You can also highlight a particular chart series alone while mouse hovering, and make the other series transparent. For this, you need to set [SeriesHighlight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_SeriesHighlight) property to true. The series can also be highlighted by hovering the mouse over a legend item corresponding to a particular series.

The following table describes properties related to this feature.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[HighlightInterior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_HighlightInterior)'| markdownify }}
</td><td>
Sets the highlight color for the series.</td></tr>
<tr>
<td>
{{'[DimmedInterior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_DimmedInterior)'| markdownify }}
</td><td>
Controls the transparency of the non-highlighted series. While mouse hovering on a particular series, all other series will be set with the color, specified in this property.</td></tr>
<tr>
<td>
{{'[SeriesHighlightIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_SeriesHighlightIndex)'| markdownify }}
</td><td>
If you want to highlight only a particular series alone, you need to set the index value for this property. The default value is -1.</td></tr>
</table>

N> The [AutoHighlight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_AutoHighlight) property should be disabled to enable this chart series highlighting feature.

{% tabs %}  

{% highlight c# %}

this.chartControl1.SeriesHighlight = true;

this.chartControl1.Series[0].Style.HighlightInterior = new BrushInfo(Color.Gold);

BrushInfo bi = new BrushInfo(GradientStyle.Vertical, Color.Red, Color.Red);

this.chartControl1.Series[0].Style.HiddenInterior = new BrushInfo(0, bi); 

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.SeriesHighlight = True

Me.chartControl1.Series(0).Style.HighlightInterior = New BrushInfo(Color.Gold)

Dim bi As New BrushInfo(GradientStyle.Vertical, Color.Red, Color.Red)

Me.chartControl1.Series(0).Style.HiddenInterior = New BrushInfo(0, bi

{% endhighlight %}
{% endtabs %}

![Chart Runtime](Runtime-Features_images/Runtime-Features_img21.jpeg)

### Drawing Interactive Cursor Separately – Either Horizontally or Vertically or Both 

An Interactive cursor is used to indicate the x-axis and y-axis values of a data point. The interactive cursor can be drawn in different orientations namely **Horizontal, Vertical** and in both directions. The cursor color can also be changed according to requirements. The default color is set at the initial stage and this can be changed according to orientation or a common color can be set for both orientations as the parent color.

### Use Case Scenarios

The purpose of using Chart Interactive Cursor is to indicate the x-axis and y-axis values for a specified data point.  You can accurately locate the position of the point on the axes. You can use it as per your requirement i.e. horizontal, vertical or both accordingly.

The following screenshot shows the Interactive cursor, which is drawn in horizontal orientation:

![Chart Runtime](Runtime-Features_images/Runtime-Features_img22.png)

**Properties**

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>

{{'[CursorOrientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_CursorOrientation)'| markdownify }}
</td><td>
Indicates the orientation in which the Interactive Cursor is to be drawn. The options are : <ul><li>Horizontal</li><li>Vertical</li><li>Both</li></ul></td><td>
<br>Enum </td></tr>
<tr>
<td>
{{'[HorizontalCursorColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_HorizontalCursorColor)'| markdownify }}
</td><td>
Specifies the color, which is to be used when Horizontal Interactive Cursor is drawn.</td><td>
Color</td></tr>
<tr>
<td>
{{'[VerticalCursorColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_VerticalCursorColor)'| markdownify }}
</td><td>
Specifies the color, which is to be used when Vertical  Interactive Cursor is drawn.</td><td>
Color</td></tr>
<tr>
<td>
{{'[Color](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_Color)'| markdownify }}
</td><td>
Specifies the base color, which is to be used other than the default color. This acts as a parent color.</td><td>
Color</td></tr>
</table>

**Drawing Interactive Cursor in a Chart Application**

To add Interactive Cursor to the Chart control:

1. Add a Interactive cursor to the Chart control.
2. Set the orientation to horizontal or vertical or both.
3. Choose the color.

Refer to the following code snippets to draw the interactive cursor separately.

{% tabs %}  

{% highlight c# %}

cursor1 = new ChartInteractiveCursor(this.chartControl1.Series[0]);

this.chartControl1.ChartArea.InteractiveCursors.Add(cursor1);           

cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal;

cursor1.HorizontalCursorColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

cursor1 = New ChartInteractiveCursor(Me.chartControl1.Series(0))

Me.chartControl1.ChartArea.InteractiveCursors.Add(cursor1)

cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal

cursor1.HorizontalCursorColor = Color.Red

{% endhighlight %}
{% endtabs %}

The interactive cursor as described earlier can be set in three different orientations. 

To draw the interactive cursor in horizontal orientation, you need to set the cursor orientation to **Horizontal** as shown in the following code snippets.

{% tabs %}  

{% highlight c# %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal;

{% endhighlight %}

{% highlight vb %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Horizontal

{% endhighlight %}
{% endtabs %}

The same step is repeated for **vertical** and **both** cursor orientations except for the naming **Vertical** and **Both** respectively.

You can also add color(s) to individual interactive cursor. The default color (base color) is **Red**. You can change the default color by using [Color](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_Color), [HorizontalCursorColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_HorizontalCursorColor), and [VerticalCursorColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_VerticalCursorColor) properties. When you use the [Color](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_Color) property, the interactive cursor will be drawn based on the color specified by the Color property (assuming this as base/parent color) regardless of the colors specified for Horizontal and Vertical cursor orientations. This is shown in the following code snippets.

{% tabs %}  {% highlight c# %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Both ;

cursor1.Color = Color.Blue;

cursor1.VerticalCursorColor = Color.Green;

cursor1.HorizontalCursorColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Both

cursor1.Color = Color.Blue

cursor1.VerticalCursorColor = Color.Green

cursor1.HorizontalCursorColor = Color.Red

{% endhighlight %}
{% endtabs %}

Now, the default color would be replaced with blue color at both the orientations as it is the parent color.

![Chart Runtime](Runtime-Features_images/Runtime-Features_img23.png)

The following code snippets draw interactive cursor in different colors:

{% tabs %}  

{% highlight c# %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Both ;

cursor1.VerticalCursorColor = Color.Green;

cursor1.HorizontalCursorColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

cursor1.CursorOrientation = InteractiveCursorOrientation.Both

cursor1.VerticalCursorColor = Color.Green

cursor1.HorizontalCursorColor = Color.Red

{% endhighlight %}
{% endtabs %}

![Chart Runtime](Runtime-Features_images/Runtime-Features_img24.png)

### ChartInteractiveCursor Support for Chart Area

Essential® Chart now supports moving the interactive cursor fully over the chart area. It provides simple methods to display symbols at the intersection of series points and the interactive cursor.

### Use Case Scenarios

This feature is useful for moving the interactive cursor across the entire chart area region, allowing users to get the intersection point values between the series and interactive cursor. 

### Sample Link

To view a sample,

1. Open the Syncfusion® Dashboard.
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

{{'[MoveToChartArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_MoveToChartArea)'| markdownify }}
</td><td>
Specifies whether the  interactive cursor is enabled for chart series or series points</td><td>
Server Side </td><td>
Boolean</td></tr>
<tr>
<td>
{{'[XInterval](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_XInterval)'| markdownify }}
</td><td>
Specifies the cursor movement on the x-axis (left to right or right to left)</td><td>
Server Side</td><td>
Double</td></tr>
<tr>
<td>
{{'[YInterval](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_YInterval)'| markdownify }}
</td><td>
Specifies the cursor movement on the y-axis (top to bottom or bottom to top)</td><td>
Server Side</td><td>
Double</td></tr>
</table>

### Existing Features

We can move the interactive cursor for series points only (i.e., the interactive cursor can be moved from one data point to another by dragging). Users cannot move the interactive cursor over the whole chart area.

### MoveToChartArea

We can enable this feature by setting the [MoveToChartArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_MoveToChartArea) property of the interactive cursor to true. The default value is false.

{% tabs %}  

{% highlight c# %}

this.chartControl1.ChartArea.InteractiveCursors[0].MoveToChartArea = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ChartArea.InteractiveCursors(0).MoveToChartArea = True

{% endhighlight %}
{% endtabs %}

### XInterval

The cursor on the x-axis can be moved from left to right or right to left based on the value provided in this property of the interactive cursor.

### YInterval

The cursor on the y-axis can be moved from top to bottom or bottom to top based on the value provided in this property of the interactive cursor.

### Symbol

Symbols will be displayed when the interactive cursor meets the series point in the chart area by dragging.

{% tabs %}  

{% highlight c# %}

this.chartControl1.ChartArea.InteractiveCursors[0].XInterval = 2;

this.chartControl1.ChartArea.InteractiveCursors[0].YInterval = 50;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ChartArea.InteractiveCursors(0).XInterval = 2

Me.chartControl1.ChartArea.InteractiveCursors(0).YInterval = 50

{% endhighlight %}
{% endtabs %}

![Chart Runtime](Runtime-Features_images/Runtime-Features_img25.png)