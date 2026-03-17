---
layout: post
title: Chart Title in Windows Forms Chart control | Syncfusion
description: Learn about Chart Title support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Title in Windows Forms Chart

## Axis Title

Essential® Chart provides properties to set custom titles for the axes. Set the title text for an axis using the [Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Title) property. The title text can be customized using the [TitleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleColor) and [TitleFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleFont) properties.

<table>
<tr>
<th>
Chart Axis Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[TitleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleColor)'| markdownify }}
</td><td>
Sets the color of the axis title text.</td></tr>
<tr>
<td>
{{'[TitleFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleFont)'| markdownify }}
</td><td>
Sets the font style of the axis title text.</td></tr>
<tr>
<td>
{{'[TitleRotationAngle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleRotationAngle)'| markdownify }}
</td><td>
Sets the angle to rotate the axis title text.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Sets a custom title for the x-axis.

this.chartControl1.PrimaryXAxis.Title = "x-axis";

this.chartControl1.PrimaryXAxis.TitleColor = Color.Red;

this.chartControl1.PrimaryXAxis.TitleFont = new Font("Arial", 10);

//Set a custom title for the y-axis in the same way.

{% endhighlight %}

{% highlight vb %}

'Sets a custom title for the x-axis.

Me.chartControl1.PrimaryXAxis.Title = "x-axis"

Me.chartControl1.PrimaryXAxis.TitleColor = Color.Red

Me.chartControl1.PrimaryXAxis.TitleFont = New Font("Arial", 10)

'Set a custom title for the y-axis in the same way.

{% endhighlight %}
{% endtabs %}

### Rotating Axis Title

The axis title can be rotated to 0, 90, 180, or 270 degrees using the [TitleRotationAngle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleRotationAngle) property of [ChartAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html).

{% tabs %}

{% highlight c# %}

//Rotating x-axis title by 270 degrees
this.chartControl1.PrimaryXAxis.TitleRotationAngle = AxisTitleRotationAngle.Rotate270;

//Rotating y-axis title by 0 degree
this.chartControl1.PrimaryYAxis.TitleRotationAngle = AxisTitleRotationAngle.Rotate0;

{% endhighlight %}

{% highlight vb %}

'Rotating x-axis title by 270 degrees
Me.chartControl1.PrimaryXAxis.TitleRotationAngle = AxisTitleRotationAngle.Rotate270

'Rotating y-axis title by 0 degree
Me.chartControl1.PrimaryYAxis.TitleRotationAngle = AxisTitleRotationAngle.Rotate0

{% endhighlight %}
{% endtabs %}

The following screenshot shows the x-axis title rotated by 270 degrees while the y-axis title remains unrotated.
![Chart Axes](Chart-Axes_images/Chart-Axes_img41_2.png)

### Multiline Chart Axes Title

Axis titles can be wrapped and displayed as multiline text. To set a multiline title through the designer, type the title text in the [Axis.Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Title) property, press **Enter** to insert a new line, and then press **Ctrl+Enter** to confirm the text.

![Chart Axes](Chart-Axes_images/Chart-Axes_img21.jpeg)

The following screenshot illustrates a chart with multiline axis titles.

![Chart Axes](Chart-Axes_images/Chart-Axes_img22.jpeg)

### Drawing Mode of Title Text

When the axis title text exceeds the axis length, it can be displayed as a partial text with an ellipsis at the end. There is also an option to wrap the title text, in addition to the multiline axis title feature described above. The [Axes.TitleDrawMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleDrawMode) property is used to control this behavior.

<table>
<tr>
<th>
Chart Axis Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[TitleDrawMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TitleDrawMode)'| markdownify }}
</td><td>
Sets the drawing mode of the axis title. The available options are <b>Ellipsis</b>, <b>Wrap</b>, and <b>None</b>. The default value is <b>None</b>.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Sets the drawing mode of the x-axis title.

this.chartControl1.PrimaryXAxis.TitleDrawMode = ChartTitleDrawMode.Ellipsis;

//Sets the drawing mode of the secondary y-axis title.

this.secYAxis.TitleDrawMode = ChartTitleDrawMode.Wrap;

{% endhighlight %}

{% highlight vb %}

'Sets the drawing mode of the x-axis title.

Me.chartControl1.PrimaryXAxis.TitleDrawMode = ChartTitleDrawMode.Ellipsis

'Sets the drawing mode of the secondary y-axis title.

Me.secYAxis.TitleDrawMode = ChartTitleDrawMode.Wrap

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img23.png)