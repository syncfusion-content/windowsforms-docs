---
layout: post
title: Overview | WindowsForms | Syncfusion
description: overview
platform: WindowsForms
control: Sparkline
documentation: ug
---

# Overview

A Sparkline control is a type of information graphic characterized by its small size, high data density and lightweight. It presents trends and variations in a very condensed fashion. The Sparkline does not contain an axis scale and is intended to give a high level overview of what happened to the data over time.

### Use Case Scenarios

A sparkline can display a trend based on adjacent data in a clear and compact graphical representation. The purpose of sparkline is to quickly see the data range difference with high density data and it is represented in lightweight graphical representation. You can use it as per your requirement.

The following screenshot shows three types of sparklines, which are drawn inside the grid control cell, based on row values.

![](Overview_images/Overview_img1.png)



### Tables for Properties, Methods, and Events

#### Properties

_Table_ _1_: _Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Type</th><th>
Data Type</th><th>
Reference links</th></tr>
<tr>
<td>
Type </td><td>
Specifies the types of spark lines.LineColumnWinLossBy default, it is set to Line type.</td><td>
NA</td><td>
NA</td><td>
NA</td></tr>
<tr>
<td>
Source</td><td>
Gets or sets the data source for sparkline data points</td><td>
NA</td><td>
NA</td><td>
NA</td></tr>
<tr>
<td>
LineStyle</td><td>
Customizes the styles of Line sparkline</td><td>
NA</td><td>
NA</td><td>
NA</td></tr>
<tr>
<td>
ColumnStyle</td><td>
Customizes the styles of Column and Win loss sparklines</td><td>
NA</td><td>
NA</td><td>
NA</td></tr>
<tr>
<td>
Markers</td><td>
Enables the markers support to sparkline </td><td>
NA</td><td>
NA</td><td>
NA</td></tr>
<tr>
<td>
BackInterior</td><td>
Customizes the background color of the control. By default, it is set to White color</td><td>
NA</td><td>
NA</td><td>
NA</td></tr>
</table>


#### Methods

_Table_ _2_: _Methods Table_

<table>
<tr>
<th>
Method </th><th>
Description </th><th>
Parameters</th><th>
Type</th><th>
Return Type</th><th>
Reference links</th></tr>
<tr>
<td>
GetHighPoint</td><td>
Gets the highest point value from the sparkline </td><td>
NA</td><td>
NA</td><td>
Void</td><td>
NA</td></tr>
<tr>
<td>
GetLowPoint</td><td>
Gets the lowest point value from the sparkline </td><td>
NA</td><td>
NA</td><td>
Void</td><td>
NA</td></tr>
<tr>
<td>
GetStartPoint</td><td>
Gets the start point value from the sparkline </td><td>
NA</td><td>
NA</td><td>
Void</td><td>
NA</td></tr>
<tr>
<td>
GetEndPoint</td><td>
Gets the end point value from the sparkline </td><td>
NA</td><td>
NA</td><td>
Void</td><td>
NA</td></tr>
</table>

### Sample Link

To access a Sparkline sample Demo:

1. Open the Syncfusion Dashboard.
2. Select User Interface.
3. Click the Windows Forms drop-down list and select Explore Samples.
4. Navigate to Chart.Windows -> Samples -> 2.0 -> SparklineChart.

### Types of Sparklines

Presently, SyncfusionSparkLine control supports three types of Sparklines and the sparkline control must be bound to a data source. It supports a variety of datasource such as DataTable and any component that implements the interface IEnumerable, ICollection, IList. 

* Line
* Column
* WinLoss 



### Drawing Line Sparkline in an Application

The line type of spark line represents a set of data points, connected by a line. 

Refer to the following code samples to draw  the line sparkline.


{% highlight c# %}

//Set Sparkline points to source property

this.sparkLine1.Source =new double[] { 30, -20, 80, 20, 40, -50, -30, 70,    -40, 50 };

//Set line type sparkline

this.sparkLine1.Type = SparkLine.SparkLineType.Line;

{% endhighlight %}





{% highlight vbnet %}

'Set Sparkline points to source property

Me.sparkLine1.Source = New Double() {30, -20, 80, 20, 40, -50,-30, 70, -40, 50}



'Set line type sparkline

Me.sparkLine1.Type = SparkLine.SparkLineType.Line

{% endhighlight %}







![](Overview_images/Overview_img2.png)



### Drawing Column Sparkline in an Application

The column type of spark line represents each data point by a column. The vertical column direction represents the negative or positive value.
Refer to the following code samples to draw the column sparkline:


{% highlight c# %}

//Set Sparkline points to source property

this.sparkLine1.Source =new double[] { 30, -20, 80, 20, 40, -50, -30, 70,    -40, 50 };

//Set line type sparkline

this.sparkLine1.Type = SparkLine.SparkLineType.Column;

{% endhighlight %}

{% highlight vbnet %}

'Set Sparkline points to source property

Me.sparkLine1.Source = New Double() {30, -20, 80, 20, 40, -50,-30, 70, -40, 50}



'Set line type sparkline

Me.sparkLine1.Type = SparkLine.SparkLineType. Column

{% endhighlight %}

![](Overview_images/Overview_img3.png)



### Drawing WinLoss Sparkline in an Application

The Win loss type of spark line is similar to column type but all columns have equal length for data points.   The vertical column direction represents the negative or positive value.
Refer to the following code samples to draw the WinLoss sparkline:



{% highlight c# %}

//Set Sparkline points to source property

this.sparkLine1.Source =new double[] { 30, -20, 80, 20, 40, -50, -30, 70,    -40, 50 };

//Set line type sparkline

this.sparkLine1.Type = SparkLine.SparkLineType.WinLoss;

{% endhighlight %}

{% highlight vbnet %}

'Set Sparkline points to source property

Me.sparkLine1.Source = New Double() {30, -20, 80, 20, 40, -50,-30, 70, -40, 50}



'Set line type sparkline

Me.sparkLine1.Type = SparkLine.SparkLineType. WinLoss

{% endhighlight %}

![](Overview_images/Overview_img4.png)



### Marker Support

The markers are visual indicators to represent the location of data points in the Sparkline graph. The markers can support three types of sparklines.

_Table_ _3_: _Marker Property Table_

<table>
<tr>
<th>
Marker Property</th><th>
Description</th></tr>
<tr>
<td>
ShowMarker</td><td>
Indicates whether the marker should be displayed at every data point location in line sparkline. By default it is set to False.</td></tr>
<tr>
<td>
ShowHighPoint</td><td>
Enables  markers to show the highest values  in  all types of sparklines. By default it is set to False.</td></tr>
<tr>
<td>
ShowLowPoint</td><td>
Enables  markers to show the  lowest values  in  all types of sparklines. By default it is set to  False.</td></tr>
<tr>
<td>
ShowStartPoint</td><td>
Enables  markers show start values  in  all types of sparklines. By default it is set to False.</td></tr>
<tr>
<td>
ShowEndPoint</td><td>
Enables  markers to show end values in  all types of sparklines. By default it is set to  False.</td></tr>
<tr>
<td>
ShowNegativePoint</td><td>
Enables  markers to show  negative values  in  all types of sparklines. By default it is set to  False.</td></tr>
<tr>
<td>
MarkerColor</td><td>
Gets or sets the marker color for line type sparkline. This property color is set to sparkline marker when enabling the ShowMarker property.</td></tr>
<tr>
<td>
HighPointColor</td><td>
Gets or sets the high point color for line type sparkline. This property color is set to sparkline marker when enabling the ShowHighPoint property.</td></tr>
<tr>
<td>
LowPointColor</td><td>
Gets or sets the low point color to line type sparkline. This property color is set to sparkline marker when enabling the ShowLowPoint property.</td></tr>
<tr>
<td>
StartPointColor</td><td>
Gets or sets the start point color for  line type sparkline. This property color is set to sparkline marker when enabling the ShowStartPoint property.</td></tr>
<tr>
<td>
EndPointColor</td><td>
Gets or sets the end point color to line type sparkline. This property color is set to sparkline marker when enabling the ShowEndPoint property.</td></tr>
<tr>
<td>
NegativePointColor</td><td>
Gets or sets the negative point color to line type sparkline. This property color is set to sparkline marker when enabling the ShowNegativePoint property.</td></tr>
</table>
Markers Support for Line

This marker feature supports data points of line sparkline. You can choose the marker color for data points.  

Refer to the following code snippets to enable the marker in line sparkline.


{% highlight c# %}

//To enable marker to sparkline for all data points

this.sparkLine1.Markers.ShowMarker  =true;

{% endhighlight %}

{% highlight vbnet %}

'To enable marker to sparkline for all data points

Me.sparkLine1.Markers.ShowMarker  =True

{% endhighlight %}

![](Overview_images/Overview_img5.png)



### Markers Support for Column

This marker feature supports High Points, Low Points, Start Point and Negative Point of column sparkline.  You can choose the marker color for data points.
Refer to the following code sample to enable the marker in column sparkline.

{% highlight c# %}

//To enable marker to sparkline high,low,start,end,negative data points

this.sparkLine1.Markers.ShowHighPoint = true;

this.sparkLine1.Markers.ShowLowPoint = true;

this.sparkLine1.Markers.ShowStartPoint = true;

this.sparkLine1.Markers.ShowEndPoint = true;

this.sparkLine1.Markers.ShowNegativePoint= true;



//To customize the marker color to low points

this.sparkLine1.Markers.LowPointColor = new BrushInfo(GradientStyle.BackwardDiagonal, Color.Blue, Color.Wheat);

{% endhighlight %}

{% highlight vbnet %}

//To enable marker to sparkline high,low,start,end,negative data points

Me.sparkLine1.Markers.ShowHighPoint = True

Me.sparkLine1.Markers.ShowLowPoint = True

Me.sparkLine1.Markers.ShowStartPoint = True

Me.sparkLine1.Markers.ShowEndPoint = True

Me.sparkLine1.Markers.ShowNegativePoint= True



//To customize the marker color to low points

Me.sparkLine1.Markers.LowPointColor = new BrushInfo(GradientStyle.BackwardDiagonal, Color.Blue, Color.Wheat)

{% endhighlight %}

![](Overview_images/Overview_img6.png)



### Markers Support for WinLoss

This marker feature supports High Points, Low Points, Start Point and Negative Point of WinLoss Sparkline. The markers feature of WinLoss is the same as Column markers.  You can choose the marker color for data points.

Refer to the following code snippets to enable the marker in column sparkline.

{% highlight c# %}

//To enable marker to sparkline high,low,start,end,negative data points

this.sparkLine1.Markers.ShowHighPoint = true;

this.sparkLine1.Markers.ShowLowPoint = true;

this.sparkLine1.Markers.ShowStartPoint = true;

this.sparkLine1.Markers.ShowEndPoint = true;

this.sparkLine1.Markers.ShowNegativePoint= true;



//To customize the marker color to low points

this.sparkLine1.Markers.LowPointColor = new BrushInfo(GradientStyle.BackwardDiagonal, Color.Blue, Color.Wheat);

{% endhighlight %}

{% highlight vbnet %}

//To enable marker to sparkline high,low,start,end,negative data points

Me.sparkLine1.Markers.ShowHighPoint = True

Me.sparkLine1.Markers.ShowLowPoint = True

Me.sparkLine1.Markers.ShowStartPoint = True

Me.sparkLine1.Markers.ShowEndPoint = True

Me.sparkLine1.Markers.ShowNegativePoint= True



//To customize the marker color to low points

Me.sparkLine1.Markers.LowPointColor = new BrushInfo(GradientStyle.BackwardDiagonal, Color.Blue, Color.Wheat)

{% endhighlight %}

![](Overview_images/Overview_img7.png)