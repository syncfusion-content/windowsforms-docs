---
layout: post
title: Marker Customization in Windows Forms Sparkline control | Syncfusion®
description: Learn about Marker Customization support in Syncfusion® Windows Forms Sparkline control and more details.
platform: windowsforms
control: Sparkline
documentation: ug
---

# Marker Customization in Windows Forms Sparkline

The markers are visual indicators to represent the location of data points in the Sparkline graph. The markers can support three types of sparklines.

**Properties**

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
Gets or sets the high point color for  line type sparkline. This property color is set to sparkline marker when enabling the ShowHighPoint property.</td></tr>
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

## Markers Support for Line

This marker feature supports data points of line sparkline. You can choose the marker color for data points.  

Refer to the following code snippets to enable the marker in line sparkline.

{% tabs %}

{% highlight c# %}

//To enable marker to sparkline for all data points

this.sparkLine1.Markers.ShowMarker  =true;

{% endhighlight %}

{% highlight vb %}

'To enable marker to sparkline for all data points

Me.sparkLine1.Markers.ShowMarker  =True

{% endhighlight %}

{% endtabs %}

![Line](Marker_images/Line.png)

## Markers Support for Column

This marker feature supports High Points, Low Points, Start Point and Negative Point of column sparkline.  You can choose the marker color for data points.
Refer to the following code sample to enable the marker in column sparkline.

{% tabs %}

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

{% highlight vb %}

//To enable marker to sparkline high,low,start,end,negative data points

Me.sparkLine1.Markers.ShowHighPoint = True

Me.sparkLine1.Markers.ShowLowPoint = True

Me.sparkLine1.Markers.ShowStartPoint = True

Me.sparkLine1.Markers.ShowEndPoint = True

Me.sparkLine1.Markers.ShowNegativePoint= True

//To customize the marker color to low points

Me.sparkLine1.Markers.LowPointColor = new BrushInfo(GradientStyle.BackwardDiagonal, Color.Blue, Color.Wheat)

{% endhighlight %}

{% endtabs %}

![Column](Marker_images/Column.png)

## Markers Support for WinLoss

This marker feature supports High Points, Low Points, Start Point and Negative Point of WinLoss Sparkline. The markers feature of WinLoss is the same as Column markers.  You can choose the marker color for data points.

Refer to the following code snippets to enable the marker in column sparkline.

{% tabs %}

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

{% highlight vb %}

//To enable marker to sparkline high,low,start,end,negative data points

Me.sparkLine1.Markers.ShowHighPoint = True

Me.sparkLine1.Markers.ShowLowPoint = True

Me.sparkLine1.Markers.ShowStartPoint = True

Me.sparkLine1.Markers.ShowEndPoint = True

Me.sparkLine1.Markers.ShowNegativePoint= True

//To customize the marker color to low points

Me.sparkLine1.Markers.LowPointColor = new BrushInfo(GradientStyle.BackwardDiagonal, Color.Blue, Color.Wheat)

{% endhighlight %}

{% endtabs %}

![Winloss](Marker_images/Winloss.png)
