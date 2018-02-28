---
layout: post
title: Axes
description: This section describes the axes and its customization
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# Axes

Smith chart supports the following two axes for plotting:

* Horizontal axis
* Radial axis


## Horizontal axis

Horizontal axis scale is used to plot the normalized resistance values on impedance Smith chart and normalized conductance values on admittance Smith chart.

The following topics explain the customization of horizontal axis.

## Major gridlines customization

### Visibility

Major gridlines visibility can be customized using the [MajorGridlinesVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_MajorGridlinesVisible) property.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.MajorGridlinesVisible = false;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.MajorGridlinesVisible = False

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/H_Major.png](Axes_images/Axes_img1.PNG)


### Style

Major gridlines style can be customized using the properties [MajorGridlinesDashStyle](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MajorGridlinesDashStyle), [MajorGridlinesColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MajorGridlinesColor), [MajorGridlinesWidth](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MajorGridlinesWidth) as you see in the below code snippet.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.Style.MajorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash;

sfSmithChart1.HorizontalAxis.Style.MajorGridlinesColor = Color.Red;

sfSmithChart1.HorizontalAxis.Style.MajorGridlinesWidth = 1;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.Style.MajorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash

sfSmithChart1.HorizontalAxis.Style.MajorGridlinesColor = Color.Red

sfSmithChart1.HorizontalAxis.Style.MajorGridlinesWidth = 1

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/H_MajorStyle.png](Axes_images/Axes_img2.png)


## Minor gridlines customization

### Visibility

By default, the minor gridlines are not added to axis. The visibility of the minor gridlines can be controlled by using the [MinorGridlinesVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_MinorGridlinesVisible) property.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.MinorGridlinesVisible = true;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.MinorGridlinesVisible = True

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/H_Minor.png](Axes_images/Axes_img3.PNG)


### Style

Minor gridlines style can be customized by using the [MinorGridlinesDashStyle](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MinorGridlinesDashStyle),  [MinorGridlinesColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MinorGridlinesColor), [MinorGridlinesWidth](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MinorGridlinesWidth) and [MinorGridlinesCount](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_MinorGridlinesCount) properties as shown in the following code snippet.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.MinorGridlinesVisible = true;

sfSmithChart1.HorizontalAxis.Style.MinorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash;

sfSmithChart1.HorizontalAxis.Style.MinorGridlinesColor = Color.Red;

sfSmithChart1.HorizontalAxis.Style.MinorGridlinesWidth = 1;

sfSmithChart1.HorizontalAxis.MinorGridlinesCount = 10;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.MinorGridlinesVisible = True

sfSmithChart1.HorizontalAxis.Style.MinorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash

sfSmithChart1.HorizontalAxis.Style.MinorGridlinesColor = Color.Red

sfSmithChart1.HorizontalAxis.Style.MinorGridlinesWidth = 1

sfSmithChart1.HorizontalAxis.MinorGridlinesCount = 10

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/H_Minor.png](Axes_images/Axes_img13.png)

## Axis line 

To customize the visibility and appearance of an axis line, use the [AxisLineVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_AxisLineVisible), [AxisLineDashStyle](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_AxisLineDashStyle) and [AxisLineColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_AxisLineColor) properties.

The following code snippet represents the axis line color customization.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.Style.AxisLineColor = Color.Red; 

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.Style.AxisLineColor = Color.Red

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/H_axislineColor.png](Axes_images/Axes_img4.PNG)


## Label Placement

The [LabelPlacement](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelPlacement) property is used to position the axis label either inside or outside of the chart plotting area. By default, the labels are placed outside.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.LabelPlacement = LabelPlacement.Inside;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.LabelPlacement = LabelPlacement.Inside

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/h_LabelPlacement.png](Axes_images/Axes_img5.PNG)


## Label intersect action

When the axis labels overlap with each other based on the chart dimensions and label size, you can avoid the overlapping by using the [LabelIntersectAction](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelIntersectAction) property. The default value of the [LabelIntersectAction](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelIntersectAction) property is Hide.

{% tabs %}

{% highlight c# %}

sfSmithChart1.HorizontalAxis.LabelIntersectAction = LabelIntersectActions.Hide;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.HorizontalAxis.LabelIntersectAction = LabelIntersectActions.Hide

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/IntersectHide.png](Axes_images/Axes_img6.png)


## Radial Axis

Radial axis scale is used to plot the normalized reactance values in impedance Smith chart and normalized susceptance values in admittance Smith chart.

## Major gridlines customization

### Visibility

Major gridlines visibility can be customized using the [MajorGridlinesVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_MajorGridlinesVisible) property.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.MajorGridlinesVisible = false;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.MajorGridlinesVisible = False

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/R_major.png](Axes_images/Axes_img7.PNG)


### Style

Major gridlines style can be customized using the [MajorGridlinesDashStyle](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MajorGridlinesDashStyle), [MajorGridlinesColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MajorGridlinesColor), [MajorGridlinesWidth](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MajorGridlinesWidth) properties as shown in the following code snippet.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.Style.MajorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash;

sfSmithChart1.RadialAxis.Style.MajorGridlinesColor = Color.Red;

sfSmithChart1.RadialAxis.Style.MajorGridlinesWidth = 1;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.Style.MajorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash

sfSmithChart1.RadialAxis.Style.MajorGridlinesColor = Color.Red

sfSmithChart1.RadialAxis.Style.MajorGridlinesWidth = 1

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/R_major.png](Axes_images/Axes_img14.png)


## Minor gridlines customization

### Visibility

Minor grid lines visibility can be customized using the [MinorGridlinesVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_MinorGridlinesVisible) property .

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.MinorGridlinesVisible = true;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.MinorGridlinesVisible = True

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/R_minor.png](Axes_images/Axes_img8.PNG)


### Style

Minor gridlines style can be customized using the [MinorGridlinesDashStyle](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MinorGridlinesDashStyle),  [MinorGridlinesColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MinorGridlinesColor), [MinorGridlinesWidth](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_MinorGridlinesWidth) and [MinorGridlinesCount](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_MinorGridlinesCount) properties as shown in the following code snippet.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.MinorGridlinesVisible = true;

sfSmithChart1.RadialAxis.Style.MinorGridlinesColor = Color.PaleVioletRed;

sfSmithChart1.RadialAxis.Style.MinorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash;

sfSmithChart1.RadialAxis.Style.MinorGridlinesWidth = 1;

sfSmithChart1.RadialAxis.MinorGridlinesCount = 10;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.MinorGridlinesVisible = True

sfSmithChart1.RadialAxis.Style.MinorGridlinesColor = Color.PaleVioletRed

sfSmithChart1.RadialAxis.Style.MinorGridlinesDashStyle = System.Drawing.Drawing2D.DashStyle.Dash

sfSmithChart1.RadialAxis.Style.MinorGridlinesWidth = 1

sfSmithChart1.RadialAxis.MinorGridlinesCount = 10

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/R_minor.png](Axes_images/Axes_img15.png)

## Axis line 

To customize the visibility and appearance of an axis line, use the [AxisLineVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_AxisLineVisible), [AxisLineDashStyle](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_AxisLineDashStyle), [AxisLineColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.AxisStyle.html#Syncfusion_WinForms_SmithChart_AxisStyle_AxisLineColor) properties.

The following code snippet represents the axis line color customization.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.Style.AxisLineColor = Color.Red;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.Style.AxisLineColor = Color.Red

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/R_axisLineColor.png](Axes_images/Axes_img9.PNG)


## Label Placement

The [LabelPlacement](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelPlacement) property is used to position the axis label either inside or outside of the chart plotting area. By default, the labels are placed outside.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.LabelPlacement = LabelPlacement.Inside;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.LabelPlacement = LabelPlacement.Inside

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/RadialInside.png](Axes_images/Axes_img10.PNG)


## Label intersect action

When the axis labels overlap with each other based on the chart dimensions and label size, you can avoid overlapping by using the [LabelIntersectAction](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelIntersectAction) property. The default value of the [LabelIntersectAction](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelIntersectAction) property is Hide.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.LabelIntersectAction = LabelIntersectActions.Hide;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.RadialAxis.LabelIntersectAction = LabelIntersectActions.Hide

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/IntersectHide.png](Axes_images/Axes_img11.png)


## Events

[LabelCreated](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartAxis.html#Syncfusion_WinForms_SmithChart_ChartAxis_LabelCreated) : Occurs when the axis labels are created.

Supports for both the axes.

{% tabs %}

{% highlight c# %}

sfSmithChart1.RadialAxis.LabelCreated += RadialAxis_LabelCreated;

private void RadialAxis_LabelCreated(object sender, EventArgs e)

{

var axisLabel = e as ChartAxisLabelEventArgs;

if (axisLabel.Label.Text == "1")

axisLabel.Label.Text = "One";

}

{% endhighlight %}

{% highlight vb.net %}

Private sfSmithChart1.RadialAxis.LabelCreated += RadialAxis_LabelCreated

Private Sub RadialAxis_LabelCreated(ByVal sender As Object, ByVal e As EventArgs)

Dim axisLabel = TryCast(e, ChartAxisLabelEventArgs)

If axisLabel.Label.Text = "1" Then

axisLabel.Label.Text = "One"

End If

End Sub

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/LabelCreatedEvent.png](Axes_images/Axes_img12.png)


