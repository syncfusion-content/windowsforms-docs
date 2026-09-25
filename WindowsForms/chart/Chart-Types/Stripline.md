---
layout: post
title: Strip Lines in Windows Forms Chart control | Syncfusion
description: Strip lines in the Windows Forms Chart highlight ranges, thresholds, and areas of interest using horizontal or vertical bands.
platform: windowsforms
control: Chart
documentation: ug
---

# Strip Lines in Windows Forms Chart

A strip line is a horizontal or vertical band rendered in the chart background to highlight a specific area of interest. Strip lines are commonly used to indicate threshold ranges, target zones, maintenance periods, or special intervals on an axis. The `ChartStripLine` class is used to create and customize strip lines. 【1-04ca55】【2-9164d2】

## Defining a strip line

The `ChartStripLine` class specifies the appearance and behavior of a strip line. Strip lines are added through the axis `StripLines` collection. 【1-04ca55】【2-9164d2】

The following code example creates and adds a strip line to the primary X-axis.

{% tabs %}
{% highlight c# %}

ChartStripLine stripLine =
    new ChartStripLine();

stripLine.Enabled = true;
stripLine.Vertical = true;
stripLine.Start = 2;
stripLine.End = 3;

chartControl.PrimaryXAxis.StripLines.Add(
    stripLine);

{% endhighlight %}
{% highlight vb %}

Dim stripLine As New ChartStripLine()

stripLine.Enabled = True
stripLine.Vertical = True
stripLine.Start = 2
stripLine.End = 3

chartControl.PrimaryXAxis.StripLines.Add(
    stripLine)

{% endhighlight %}
{% endtabs %}

---

## Strip line visibility

### Enabled

The `Enabled` property controls whether the strip line is displayed. 【1-04ca55】

The following code example enables a strip line.

{% tabs %}
{% highlight c# %}

stripLine.Enabled = true;

{% endhighlight %}
{% highlight vb %}

stripLine.Enabled = True

{% endhighlight %}
{% endtabs %}

---

## Strip line orientation

### Vertical

The `Vertical` property specifies whether the strip line is displayed vertically or horizontally. 【2-9164d2】

- `true`: Displays a vertical strip line.
- `false`: Displays a horizontal strip line.

The following code example displays a vertical strip line.

{% tabs %}
{% highlight c# %}

stripLine.Vertical = true;

{% endhighlight %}
{% highlight vb %}

stripLine.Vertical = True

{% endhighlight %}
{% endtabs %}

---

## Strip line range

### Start

The `Start` property specifies the starting position of the strip line. 【1-04ca55】

### End

The `End` property specifies the ending position of the strip line. 【1-04ca55】

The following code example defines a strip line between positions `2` and `3`.

{% tabs %}
{% highlight c# %}

stripLine.Start = 2;
stripLine.End = 3;

{% endhighlight %}
{% highlight vb %}

stripLine.Start = 2
stripLine.End = 3

{% endhighlight %}
{% endtabs %}

---

## Strip line width

### Width

The `Width` property specifies the width of the strip-line region. 【2-9164d2】

The following code example sets the strip-line width.

{% tabs %}
{% highlight c# %}

stripLine.Width = 0.5;

{% endhighlight %}
{% highlight vb %}

stripLine.Width = 0.5

{% endhighlight %}
{% endtabs %}

### FixedWidth

The `FixedWidth` property specifies the fixed width of each strip line. The value represents an actual axis value rather than the distance between chart points. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.FixedWidth = 10;

{% endhighlight %}
{% highlight vb %}

stripLine.FixedWidth = 10

{% endhighlight %}
{% endtabs %}

---

## Strip line position

### StartAtAxisPosition

The `StartAtAxisPosition` property specifies whether the strip line starts at the beginning of the axis range. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.StartAtAxisPosition = true;

{% endhighlight %}
{% highlight vb %}

stripLine.StartAtAxisPosition = True

{% endhighlight %}
{% endtabs %}

### Offset

The `Offset` property specifies the strip-line offset when the axis contains numeric values. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.Offset = 2;

{% endhighlight %}
{% highlight vb %}

stripLine.Offset = 2

{% endhighlight %}
{% endtabs %}

### DateOffset

The `DateOffset` property specifies the strip-line offset when the axis contains `DateTime` values. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.DateOffset =
    TimeSpan.FromDays(2);

{% endhighlight %}
{% highlight vb %}

stripLine.DateOffset =
    TimeSpan.FromDays(2)

{% endhighlight %}
{% endtabs %}

---

## Repeated strip lines

### Period

The `Period` property specifies the interval between repeated strip lines. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.Period = 5;

{% endhighlight %}
{% highlight vb %}

stripLine.Period = 5

{% endhighlight %}
{% endtabs %}

### PeriodDate

The `PeriodDate` property specifies the interval between repeated strip lines for `DateTime` axes. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.PeriodDate =
    TimeSpan.FromDays(7);

{% endhighlight %}
{% highlight vb %}

stripLine.PeriodDate =
    TimeSpan.FromDays(7)

{% endhighlight %}
{% endtabs %}

---

## Strip line appearance

### Interior

The `Interior` property specifies the brush used to fill the strip line. 【1-04ca55】【2-9164d2】

{% tabs %}
{% highlight c# %}

stripLine.Interior =
    new BrushInfo(
        GradientStyle.Vertical,
        Color.LightYellow,
        Color.Yellow);

{% endhighlight %}
{% highlight vb %}

stripLine.Interior =
    New BrushInfo(
        GradientStyle.Vertical,
        Color.LightYellow,
        Color.Yellow)

{% endhighlight %}
{% endtabs %}

### BackImage

The `BackImage` property specifies the image displayed within the strip line background. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.BackImage =
    Image.FromFile("background.png");

{% endhighlight %}
{% highlight vb %}

stripLine.BackImage =
    Image.FromFile("background.png")

{% endhighlight %}
{% endtabs %}

---

## Strip line text

### Text

The `Text` property specifies the text displayed inside the strip line. 【2-9164d2】【3-63a532】

### TextColor

The `TextColor` property specifies the strip-line text color. 【2-9164d2】【3-63a532】

### TextAlignment

The `TextAlignment` property specifies the strip-line text alignment. 【2-9164d2】

### Font

The `Font` property specifies the font used to render the strip-line text. 【1-04ca55】

The following code example displays text inside a strip line.

{% tabs %}
{% highlight c# %}

stripLine.Text = "Target Zone";
stripLine.TextColor = Color.Blue;

stripLine.TextAlignment =
    ContentAlignment.MiddleCenter;

stripLine.Font =
    new Font("Segoe UI", 10);

{% endhighlight %}
{% highlight vb %}

stripLine.Text = "Target Zone"
stripLine.TextColor = Color.Blue

stripLine.TextAlignment =
    ContentAlignment.MiddleCenter

stripLine.Font =
    New Font("Segoe UI", 10)

{% endhighlight %}
{% endtabs %}

---

## DateTime strip lines

### StartDate

The `StartDate` property specifies the date from which the strip line starts. 【1-04ca55】

### EndDate

The `EndDate` property specifies the date at which the strip line ends. 【1-04ca55】

{% tabs %}
{% highlight c# %}

stripLine.StartDate =
    new DateTime(2025, 1, 1);

stripLine.EndDate =
    new DateTime(2025, 1, 31);

{% endhighlight %}
{% highlight vb %}

stripLine.StartDate =
    New DateTime(2025, 1, 1)

stripLine.EndDate =
    New DateTime(2025, 1, 31)

{% endhighlight %}
{% endtabs %}

---

## Remove a strip line

The following code example removes a strip line from the axis.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryXAxis.StripLines.Remove(
    stripLine);

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryXAxis.StripLines.Remove(
    stripLine)

{% endhighlight %}
{% endtabs %}

## See also

- [ChartStripLine API Reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStripLine.html) 【1-04ca55】
- [Axes in Windows Forms Chart](https://help.syncfusion.com/windowsforms/chart/chart-axes#chart-striplines) 【2-9164d2】
- [Namespace Syncfusion.Windows.Forms.Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.html) 