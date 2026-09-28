---
layout: post
title: Strip Lines in Windows Forms Chart control | Syncfusion
description: Strip lines in the Windows Forms Chart highlight ranges, thresholds, and areas of interest using horizontal or vertical bands.
platform: windowsforms
control: Chart
documentation: ug
---

# Strip Lines in Windows Forms Chart

Windows Forms Chart allows you to add strip lines that shade specific regions or ranges in the plot area background at regular or custom intervals.

A strip line is represented by the [ChartStripLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStripLine.html) class and can be added to the [StripLines](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_StripLines) collection of an axis.

## Adding strip lines to an axis

Create a [ChartStripLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStripLine.html), configure its range and appearance, and add it to the required axis.

The following example adds a vertical strip line to the primary X-axis.

{% tabs %}
{% highlight c# %}
ChartStripLine stripLine = new ChartStripLine();

stripLine.Enabled = true;
stripLine.Vertical = false;

// Renders the strip line from 40 to 60.
stripLine.Start = 50;
stripLine.End = 65;
stripLine.Width = 20;

stripLine.TextColor = Color.LightGreen;
stripLine.Font = new Font("Arial", 10, FontStyle.Bold);

// Uses stronger colors without a light-yellow fade.
stripLine.Interior = new BrushInfo( 230,
new BrushInfo( GradientStyle.Vertical, Color.OrangeRed, Color.Orange));

// Adds the strip line to the Y-axis.
this.chartControl.PrimaryYAxis.StripLines.Add(stripLine);
{% endhighlight %}
{% highlight vb %}
Dim stripLine As New ChartStripLine()

stripLine.Enabled = True
stripLine.Vertical = False

' Renders the strip line from 50 to 65.
stripLine.Start = 50
stripLine.End = 65
stripLine.Width = 20

stripLine.TextColor = Color.LightGreen
stripLine.Font = New Font("Arial", 10, FontStyle.Bold)

' Uses stronger colors without a light-yellow fade.
stripLine.Interior = New BrushInfo(230, New BrushInfo(GradientStyle.Vertical, Color.OrangeRed, Color.Orange))

' Adds the strip line to the Y-axis.
Me.chartControl.PrimaryYAxis.StripLines.Add(stripLine)
{% endhighlight %}
{% endtabs %}

## Customizing strip line position and size

The position and size of a strip line can be configured using the following properties:

* `Start`: Specifies the starting axis value of the strip line.
* `End`: Specifies the axis value after which the strip line is not displayed.
* `Width`: Specifies the width of the strip-line region.
* `FixedWidth`: Specifies a fixed width using an actual axis value instead of the interval between chart points.
* `StartAtAxisPosition`: Specifies whether the strip line starts from the beginning of the axis range.
* `Offset`: Specifies the offset from the beginning of a numeric axis when `StartAtAxisPosition` is enabled.

{% tabs %}
{% highlight c# %}
ChartStripLine stripLine = new ChartStripLine();
stripLine.Enabled = true;
stripLine.Vertical = true;
stripLine.StartAtAxisPosition = true;
stripLine.Offset = 2;
stripLine.Width = 0.5;
stripLine.FixedWidth = 1;

chartControl.PrimaryXAxis.StripLines.Add(stripLine);
{% endhighlight %}
{% highlight vb %}
Dim stripLine As New ChartStripLine()
stripLine.Enabled = True
stripLine.Vertical = True
stripLine.StartAtAxisPosition = True
stripLine.Offset = 2
stripLine.Width = 0.5
stripLine.FixedWidth = 1

chartControl.PrimaryXAxis.StripLines.Add(stripLine)
{% endhighlight %}
{% endtabs %}

N> When `StartAtAxisPosition` is set to `true`, use `Offset` for a numeric axis and `DateOffset` for a DateTime axis to position the strip line from the beginning of the axis range.

## Changing the strip line orientation

The `Vertical` property specifies the strip-line orientation.

* `true`: Renders a vertical strip line.
* `false`: Renders a horizontal strip line.

The following example adds a horizontal strip line to the primary Y-axis.

{% tabs %}
{% highlight c# %}
ChartStripLine stripLine = new ChartStripLine();
stripLine.Enabled = true;
stripLine.Vertical = false;
stripLine.Start = 40;
stripLine.End = 60;
stripLine.Interior = new BrushInfo(Color.LightGreen);

chartControl.PrimaryYAxis.StripLines.Add(stripLine);
{% endhighlight %}
{% highlight vb %}
Dim stripLine As New ChartStripLine()
stripLine.Enabled = True
stripLine.Vertical = False
stripLine.Start = 40
stripLine.End = 60
stripLine.Interior = New BrushInfo(Color.LightGreen)

chartControl.PrimaryYAxis.StripLines.Add(stripLine)
{% endhighlight %}
{% endtabs %}

## Customizing the strip line appearance

The `Interior` property specifies the brush used to fill the strip line. A solid color, gradient, or partially transparent brush can be applied.

{% tabs %}
{% highlight c# %}
stripLine.Interior = new BrushInfo(
    GradientStyle.Vertical,
    Color.LightYellow,
    Color.Yellow);
{% endhighlight %}
{% highlight vb %}
stripLine.Interior = New BrushInfo(
    GradientStyle.Vertical,
    Color.LightYellow,
    Color.Yellow)
{% endhighlight %}
{% endtabs %}

### Displaying a background image

The `BackImage` property specifies the image displayed in the strip-line background.

{% tabs %}
{% highlight c# %}
stripLine.BackImage = Image.FromFile("background.png");
{% endhighlight %}
{% highlight vb %}
stripLine.BackImage = Image.FromFile("background.png")
{% endhighlight %}
{% endtabs %}

## Adding text to a strip line

The following properties are used to display and customize text inside a strip line:

* `Text`: Specifies the text displayed in the strip line.
* `TextColor`: Specifies the text color.
* `TextAlignment`: Specifies the text alignment.
* `Font`: Specifies the font used to render the text.

{% tabs %}
{% highlight c# %}
stripLine.Text = "Target Zone";
stripLine.TextColor = Color.Blue;
stripLine.TextAlignment = ContentAlignment.MiddleCenter;
stripLine.Font = new Font("Segoe UI", 10, FontStyle.Bold);
{% endhighlight %}
{% highlight vb %}
stripLine.Text = "Target Zone"
stripLine.TextColor = Color.Blue
stripLine.TextAlignment = ContentAlignment.MiddleCenter
stripLine.Font = New Font("Segoe UI", 10, FontStyle.Bold)
{% endhighlight %}
{% endtabs %}

## Adding repeated strip lines

A strip line can be repeated at a specific interval by using the `Period` property. The following example repeats a strip line at every five numeric axis units.

{% tabs %}
{% highlight c# %}
ChartStripLine stripLine = new ChartStripLine();
stripLine.Enabled = true;
stripLine.Vertical = true;
stripLine.Start = 0;
stripLine.Width = 1;
stripLine.Period = 5;
stripLine.Interior = new BrushInfo(Color.LightGray);

chartControl.PrimaryXAxis.StripLines.Add(stripLine);
{% endhighlight %}
{% highlight vb %}
Dim stripLine As New ChartStripLine()
stripLine.Enabled = True
stripLine.Vertical = True
stripLine.Start = 0
stripLine.Width = 1
stripLine.Period = 5
stripLine.Interior = New BrushInfo(Color.LightGray)

chartControl.PrimaryXAxis.StripLines.Add(stripLine)
{% endhighlight %}
{% endtabs %}

## Adding strip lines to a DateTime axis

Use the following properties to configure a strip line on a DateTime axis:

* `StartDate`: Specifies the date from which the strip line starts.
* `EndDate`: Specifies the date after which the strip line is not displayed.
* `DateOffset`: Specifies the offset from the beginning of the DateTime axis when `StartAtAxisPosition` is enabled.
* `PeriodDate`: Specifies the interval at which the strip line is repeated.

The following example highlights a date range and repeats it every seven days.

{% tabs %}
{% highlight c# %}
ChartStripLine dateStripLine = new ChartStripLine();
dateStripLine.Enabled = true;
dateStripLine.Vertical = true;
dateStripLine.StartDate = new DateTime(2025, 1, 1);
dateStripLine.EndDate = new DateTime(2025, 1, 2);
dateStripLine.PeriodDate = TimeSpan.FromDays(7);
dateStripLine.Interior = new BrushInfo(Color.LightCyan);

chartControl.PrimaryXAxis.StripLines.Add(dateStripLine);
{% endhighlight %}
{% highlight vb %}
Dim dateStripLine As New ChartStripLine()
dateStripLine.Enabled = True
dateStripLine.Vertical = True
dateStripLine.StartDate = New DateTime(2025, 1, 1)
dateStripLine.EndDate = New DateTime(2025, 1, 2)
dateStripLine.PeriodDate = TimeSpan.FromDays(7)
dateStripLine.Interior = New BrushInfo(Color.LightCyan)

chartControl.PrimaryXAxis.StripLines.Add(dateStripLine)
{% endhighlight %}
{% endtabs %}

The following example positions the strip line relative to the beginning of a DateTime axis.

{% tabs %}
{% highlight c# %}
dateStripLine.StartAtAxisPosition = true;
dateStripLine.DateOffset = TimeSpan.FromDays(2);
{% endhighlight %}
{% highlight vb %}
dateStripLine.StartAtAxisPosition = True
dateStripLine.DateOffset = TimeSpan.FromDays(2)
{% endhighlight %}
{% endtabs %}

## Adding multiple strip lines

Multiple strip lines can be added to the same axis to highlight different ranges.

{% tabs %}
{% highlight c# %}
ChartStripLine lowRange = new ChartStripLine();
lowRange.Enabled = true;
lowRange.Vertical = false;
lowRange.Start = 0;
lowRange.End = 40;
lowRange.Text = "Below Target";
lowRange.Interior = new BrushInfo(Color.MistyRose);

ChartStripLine targetRange = new ChartStripLine();
targetRange.Enabled = true;
targetRange.Vertical = false;
targetRange.Start = 40;
targetRange.End = 60;
targetRange.Text = "Target Zone";
targetRange.Interior = new BrushInfo(Color.Honeydew);

ChartStripLine highRange = new ChartStripLine();
highRange.Enabled = true;
highRange.Vertical = false;
highRange.Start = 60;
highRange.End = 100;
highRange.Text = "Above Target";
highRange.Interior = new BrushInfo(Color.LightCyan);

chartControl.PrimaryYAxis.StripLines.Add(lowRange);
chartControl.PrimaryYAxis.StripLines.Add(targetRange);
chartControl.PrimaryYAxis.StripLines.Add(highRange);
{% endhighlight %}
{% highlight vb %}
Dim lowRange As New ChartStripLine()
lowRange.Enabled = True
lowRange.Vertical = False
lowRange.Start = 0
lowRange.End = 40
lowRange.Text = "Below Target"
lowRange.Interior = New BrushInfo(Color.MistyRose)

Dim targetRange As New ChartStripLine()
targetRange.Enabled = True
targetRange.Vertical = False
targetRange.Start = 40
targetRange.End = 60
targetRange.Text = "Target Zone"
targetRange.Interior = New BrushInfo(Color.Honeydew)

Dim highRange As New ChartStripLine()
highRange.Enabled = True
highRange.Vertical = False
highRange.Start = 60
highRange.End = 100
highRange.Text = "Above Target"
highRange.Interior = New BrushInfo(Color.LightCyan)

chartControl.PrimaryYAxis.StripLines.Add(lowRange)
chartControl.PrimaryYAxis.StripLines.Add(targetRange)
chartControl.PrimaryYAxis.StripLines.Add(highRange)
{% endhighlight %}
{% endtabs %}

## Showing or hiding a strip line

The `Enabled` property controls the visibility of a strip line.

{% tabs %}
{% highlight c# %}
stripLine.Enabled = false;
{% endhighlight %}
{% highlight vb %}
stripLine.Enabled = False
{% endhighlight %}
{% endtabs %}

## See also

* [How to add striplines to an axis in a WinForms Chart](https://support.syncfusion.com/kb/article/1232/how-to-add-striplines-to-an-axis-in-a-winforms-chart)
