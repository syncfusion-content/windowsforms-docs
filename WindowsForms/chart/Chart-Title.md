---
layout: post
title: Title in Windows Forms Chart | Syncfusion®
description: Title in the Windows Forms Chart displays descriptive text for charts and supports customization of content, alignment, and appearance.
platform: windowsforms
control: Chart
documentation: ug
appliesto: UI Component Suite, Chart SDK
---

# Title in Windows Forms Chart

## Default title

The [Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Title) property is used to set the default title for the chart. The chart does not display title text by default.

The following code example displays the default chart title.

{% tabs %}
{% highlight c# %}

chartControl.Text = "Chart Title";

{% endhighlight %}
{% highlight vb %}

chartControl.Text = "Chart Title"

{% endhighlight %}
{% endtabs %}

![Chart Title in Windows Forms Chart](Chart-Appearance_images/chart_title.png)

## Multiple titles

The [Titles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Titles) collection is used to display multiple chart titles. Create a [ChartTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html) object for each additional title and add it to the collection.

The following code example configures a custom chart title.

{% tabs %}
{% highlight c# %}

ChartTitle chartTitle = new ChartTitle();
chartTitle.Text = "Custom Chart Title";
chartControl.Titles.Add(chartTitle);

{% endhighlight %}
{% highlight vb %}

' Creates an additional chart title.
Dim chartTitle As New ChartTitle()
chartTitle.Text = "Custom Chart Title"
' Adds the additional title to the chart.
chartControl.Titles.Add(chartTitle)

{% endhighlight %}
{% endtabs %}

![Multiple Chart Titles in Windows Forms Chart](Chart-Appearance_images/multiple_chart_title.png)

## Title visibility

The [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Visible) property controls whether a chart title is displayed.

The following code example hides the chart title.

{% tabs %}
{% highlight c# %}

chartTitle.Visible = false;

{% endhighlight %}
{% highlight vb %}

chartTitle.Visible = False

{% endhighlight %}
{% endtabs %}

![Chart Title Visible in Windows Forms Chart](Chart-Appearance_images/title_visible.png)

## Title alignment

The [Alignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDockControl.html#Syncfusion_Windows_Forms_Chart_ChartDockControl_Alignment) property aligns the title within its docked area. The default value is [Center](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAlignment.html). The supported values are:

- [Near](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAlignment.html#Syncfusion_Windows_Forms_Chart_ChartAlignment_Near): Aligns the title near the beginning of the docked area.
- [Center](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAlignment.html#Syncfusion_Windows_Forms_Chart_ChartAlignment_Center): Aligns the title at the center of the docked area.
- [Far](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAlignment.html#Syncfusion_Windows_Forms_Chart_ChartAlignment_Far): Aligns the title near the end of the docked area.

The following code example aligns the chart title near the beginning of its docked area

{% tabs %}
{% highlight c# %}

chartControl.Title.Alignment = ChartAlignment.Near;

{% endhighlight %}
{% highlight vb %}

chartControl.Title.Alignment = ChartAlignment.Near

{% endhighlight %}
{% endtabs %}

![Chart Title Alignment in Windows Forms Chart](Chart-Appearance_images/chart_title_alignment.png)

## Title position

The [Position](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Position) property specifies where the title is placed.  By default [Top](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Top) is applied. The supported values are: 
- [Top](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Top): Positions the title at the top.
- [Bottom](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Bottom): Positions the title at the bottom.
- [Left](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Left): Positions the title on the left.
- [Right](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Right): Positions the title on the right.
- [Floating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Floating): Positions the title at a custom location.

The following code example displays the title on the left side of the chart.
 
{% tabs %}
{% highlight c# %}
 
chartControl.Title.Position = ChartDock.Left;
 
{% endhighlight %}
{% highlight vb %}
 
chartControl.Title.Position = ChartDock.Left
 
{% endhighlight %}
{% endtabs %}

![Chart Title Position in Windows Forms Chart](Chart-Appearance_images/chart_title_position.png)

## Floating title

Set the [Position](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Position) property to [Floating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Floating) and use the [Location](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Location) property to place a title at a custom location.

The following code example displays the chart title at the location (150, 20).

{% tabs %}
{% highlight c# %}

chartTitle.Position = ChartDock.Floating;
chartTitle.Location = new Point(150, 20);

{% endhighlight %}
{% highlight vb %}

chartTitle.Position = ChartDock.Floating
chartTitle.Location = New Point(150, 20)

{% endhighlight %}
{% endtabs %}

![Chart Title Location in Windows Forms Chart](Chart-Appearance_images/chart_title_location.png)

## Customizing the title

The following properties customize the appearance and layout of a chart title:

- [Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Font): Specifies the font family, size, and style of the title text. The default value is **Verdana, 14 pt, Regular**.
- [ForeColor](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?view=windowsdesktop-10.0#system-windows-forms-control-forecolor): Specifies the title text color. The default value is `Color.Black`.
- [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_BackColor): Specifies the title background color. The default value is `Color.Transparent`.
- [Margin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Margin): Specifies the margin around the title text. The default value is `4`.
- [AutoSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_AutoSize): Specifies whether the title size is calculated automatically based on its text. The default value is `true`.
- [Size](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Size): Specifies the height and width of the title when a custom size is required. When AutoSize is set to true, the title size is calculated automatically based on its text.
- [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Orientation): Specifies the orientation of the title. The default value is [Horizontal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartOrientation.html#Syncfusion_Windows_Forms_Chart_ChartOrientation_Horizontal). The supported values are:
    - [Horizontal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartOrientation.html#Syncfusion_Windows_Forms_Chart_ChartOrientation_Horizontal): Displays the title horizontally.
    - [Vertical](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartOrientation.html#Syncfusion_Windows_Forms_Chart_ChartOrientation_Vertical): Displays the title vertically.
- [ShowBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_ShowBorder): Controls whether the title border is displayed. The default value is `false`.
- [Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Border): Returns the [LineInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html) object used to customize the title border. This property is read-only.

N> The [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Orientation) property is applicable only when the title [Position](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Position) is set to [Floating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDock.html#Syncfusion_Windows_Forms_Chart_ChartDock_Floating).

The following code example customizes the chart title.

{% tabs %}
{% highlight c# %}

chartControl.Title.ForeColor = Color.Red;
chartControl.Title.BackColor = Color.LightGoldenrodYellow;
chartControl.Title.Margin = 6;
chartControl.Title.AutoSize = false;
chartControl.Title.Orientation = ChartOrientation.Horizontal;

chartControl.Title.ShowBorder = true;
chartControl.Title.Border.ForeColor = Color.DarkBlue;
chartControl.Title.Border.Width = 2;
chartControl.Title.Border.DashStyle = DashStyle.Dash;
chartControl.Title.Font = new System.Drawing.Font("Candara", 12F, System.Drawing.FontStyle.Bold);

{% endhighlight %}
{% highlight vb %}

chartControl.Title.ForeColor = Color.Red
chartControl.Title.BackColor = Color.LightGoldenrodYellow
chartControl.Title.Margin = 6
chartControl.Title.AutoSize = False
chartControl.Title.Orientation = ChartOrientation.Horizontal

chartControl.Title.ShowBorder = True
chartControl.Title.Border.ForeColor = Color.DarkBlue
chartControl.Title.Border.Width = 2
chartControl.Title.Border.DashStyle = DashStyle.Dash
chartControl.Title.Font = New System.Drawing.Font("Candara", 12.0F, System.Drawing.FontStyle.Bold)

{% endhighlight %}
{% endtabs %}

![Chart title customization in Windows Forms Chart](Chart-Appearance_images/title_customization.png)

## See also

- [How to customize the Chart Title in WinForms Chart control](https://support.syncfusion.com/kb/article/1210/how-to-customize-the-chart-title-in-winforms-chart-control)
- [How to add multiple Chart titles in WinForms](https://support.syncfusion.com/kb/article/1215/how-to-add-multiple-chart-titles-in-winforms)