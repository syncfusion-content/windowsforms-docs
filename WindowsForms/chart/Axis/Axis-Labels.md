---
layout: post
title: Axis Labels in Windows Forms Chart control | Syncfusion
description: Learn about customizing and formatting Axis Labels in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Axis Labels in Windows Forms Chart

This guide covers the comprehensive customization and configuration of axis labels in the Windows Forms Chart control. Axis labels are the text values displayed along the chart axes that identify data points, categories, or values.

## Customizing Axis Labels

By default, the label texts are automatically determined based on the axis data points and the generated intervals. 

If you want to hide the axis label, you can set the [IsVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_IsVisible) property to `false` in chart [PrimaryXAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrimaryXAxis) and [PrimaryYAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrimaryYAxis).

### Formatting Numeric and Date Values

Format your axis labels to display numbers and dates in a specific way, improving readability and clarity. Use the **Format** property for numeric values and **DateTimeFormat** property for date-time values to control how data is presented on the axis.

**Key Properties:**
- {{'[Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Format)'| markdownify }} - Specifies the format for double values using standard numeric format strings (e.g., "C" for currency, "P" for percentage)
- {{'[DateTimeFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DateTimeFormat)'| markdownify }} - Specifies the format for DateTime values using date/time format strings (e.g., "MMM" for abbreviated month, "yyyy" for year)

{% tabs %}

{% highlight c# %}

//Settings datetime format to X axis
this.chartControl1.PrimaryXAxis.DateTimeFormat = "MMM";

//Settings format to Y axis
this.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Double;
this.chartControl1.PrimaryYAxis.Format = "C";

{% endhighlight %}

{% highlight vb %}

'Settings datetime format to X axis
Me.chartControl1.PrimaryXAxis.DateTimeFormat = "MMM"

'Settings format to Y axis
Me.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Double
Me.chartControl1.PrimaryYAxis.Format = "C"

{% endhighlight %}
{% endtabs %}

### Styling Label Appearance

Enhance the visual presentation of axis labels by customizing their color and font properties. Change the font family, size, style, and text color to match your application's design theme.

**Key Properties:**
- {{'[ForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ForeColor)'| markdownify }} - Sets the color for labels and other axis text
- {{'[Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Font)'| markdownify }} - Specifies the font family, size, and style for axis labels (default: Trebuchet, 9pt, regular)

{% tabs %}

{% highlight c# %}

//Setting ForeColor and Font to axes labels
this.chartControl1.PrimaryXAxis.ForeColor = System.Drawing.Color.Navy;
this.chartControl1.PrimaryXAxis.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);

this.chartControl1.PrimaryYAxis.ForeColor = System.Drawing.Color.Navy;
this.chartControl1.PrimaryYAxis.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);

{% endhighlight %}

{% highlight vb %}

'Setting ForeColor and Font to axes labels
Me.chartControl1.PrimaryXAxis.ForeColor = System.Drawing.Color.Navy
Me.chartControl1.PrimaryXAxis.Font = New System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold)

Me.chartControl1.PrimaryYAxis.ForeColor = System.Drawing.Color.Navy
Me.chartControl1.PrimaryYAxis.Font = New System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold)

{% endhighlight %}
{% endtabs %}

### Positioning and Rotating Labels

Control how axis labels are aligned and rotated within the chart. Use alignment options to position labels (left, center, or right) and enable label rotation to prevent overlap when space is limited.

**Key Properties:**
- {{'[LabelAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_LabelAlignment)'| markdownify }} - Specifies label alignment: `Near`, `Center` (default), or `Far` within the available area
- {{'[LabelRotate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_LabelRotate)'| markdownify }} - Enables or disables label rotation
- {{'[LabelRotateAngle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_LabelRotateAngle)'| markdownify }} - Specifies the rotation angle in degrees when `LabelRotate` is enabled

{% tabs %}

{% highlight c# %}

//Label property settings for X-Axis
this.chartControl1.PrimaryXAxis.LabelAlignment = System.Drawing.StringAlignment.Center;
this.chartControl1.PrimaryXAxis.LabelRotate = true;
this.chartControl1.PrimaryXAxis.LabelRotateAngle = 45;

//Label property settings for Y-Axis
this.chartControl1.PrimaryYAxis.LabelAlignment = System.Drawing.StringAlignment.Far;

{% endhighlight %}

{% highlight vb %}

'Label property settings for X-Axis
Me.chartControl1.PrimaryXAxis.LabelAlignment = System.Drawing.StringAlignment.Center
Me.chartControl1.PrimaryXAxis.LabelRotate = True
Me.chartControl1.PrimaryXAxis.LabelRotateAngle = 45

'Label property settings for Y-Axis
Me.chartControl1.PrimaryYAxis.LabelAlignment = System.Drawing.StringAlignment.Far

{% endhighlight %}
{% endtabs %}

### Auto-Scaling Labels

Enable responsive label sizing that automatically adjusts text size when the chart is resized. This ensures labels remain proportional and readable at any chart dimension.

**Key Property:**
- {{'[ScaleLabels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ScaleLabels)'| markdownify }} - When set to `true`, labels automatically resize to match chart dimensions

{% tabs %}

{% highlight c# %}

//Enable auto-scaling for labels
this.chartControl1.PrimaryXAxis.ScaleLabels = true;
this.chartControl1.PrimaryYAxis.ScaleLabels = true;

{% endhighlight %}

{% highlight vb %}

'Enable auto-scaling for labels
Me.chartControl1.PrimaryXAxis.ScaleLabels = True
Me.chartControl1.PrimaryYAxis.ScaleLabels = True

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img14.jpeg)

## Customizing Label Text

The basic formatting options may not cover all your customization needs. Format axis labels dynamically using the **FormatLabel** event to customize label text based on specific conditions or data values.

### Using the FormatLabel Event

Dynamically modify label text before rendering by handling the {{'[FormatLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_FormatLabel)'| markdownify }} event. This event fires for each label and provides access to event arguments containing label information.

**Event Properties:**
- {{'[AxisOrientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_AxisOrientation)'| markdownify }} - Returns the axis orientation (Horizontal or Vertical)
- {{'[Label](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_Label)'| markdownify }} - Gets or sets the label text to be rendered
- {{'[Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_Value)'| markdownify }} - Returns the numeric value associated with the label position
- {{'[ValueAsDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_ValueAsDate)'| markdownify }} - Returns the value as DateTime when working with date values
- {{'[IsAxisPrimary](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_IsAxisPrimary)'| markdownify }} - Indicates if the axis is primary
- {{'[Handled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_Handled)'| markdownify }} - Mark as true to prevent further processing
- {{'[Tooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFormatAxisLabelEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartFormatAxisLabelEventArgs_ToolTip)'| markdownify }} - Specifies the tooltip content

{% tabs %}

{% highlight c# %}

private void chartControl1_ChartFormatAxisLabel(object sender, ChartFormatAxisLabelEventArgs e)

{

    if (e.AxisOrientation == ChartOrientation.Horizontal)

    {

       if (e.ValueAsDate.Month == 1)

            e.Label = "1st Month";

        else if (e.ValueAsDate.Month == 2)

            e.Label = "2nd Month";

        else if (e.ValueAsDate.Month == 3)

            e.Label = "3rd Month";

        else if (e.ValueAsDate.Month == 4)

            e.Label = "4th Month";

        else if (e.ValueAsDate.Month == 5)

            e.Label = "5th Month";

        else if (e.ValueAsDate.Month == 6)

            e.Label = "6th Month";

        e.Handled = true;

    }

}

{% endhighlight %}

{% highlight vb %}

Private Sub chartControl1_ChartFormatAxisLabel(ByVal sender As Object, ByVal e As ChartFormatAxisLabelEventArgs)

    If e.AxisOrientation = ChartOrientation.Horizontal Then

         If e.ValueAsDate.Month = 1 Then

              e.Label = "1st Month"

          ElseIf e.ValueAsDate.Month = 2 Then

              e.Label = "2nd Month"

          ElseIf e.ValueAsDate.Month = 3 Then

              e.Label = "3rd Month"

          ElseIf e.ValueAsDate.Month = 4 Then

              e.Label = "4th Month"

          ElseIf e.ValueAsDate.Month = 5 Then

              e.Label = "5th Month"

          ElseIf e.ValueAsDate.Month = 6 Then

              e.Label = "6th Month"

          End If

           e.Handled = True

     End If

End Sub

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img15.jpeg)

### Using Custom Labels

Specify a set of custom labels to control both the label text and intervals displayed on the axis. This approach lets you fully define label content and positions.

**Key Properties:**
- {{'[TickLabelsDrawingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TickLabelsDrawingMode)'| markdownify }} - Controls how labels are rendered:
  - `AutomaticMode` - Labels determined by the chart engine
  - `UserMode` - Labels from the custom Labels collection only
  - `BothUserAndAutomaticMode` - Mix of automatic and custom labels
  - `None` - No labels rendered
- {{'[Labels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Labels)'| markdownify }} - Custom collection for fully customized labels (requires `UserMode` or `BothUserAndAutomaticMode`)

#### Using Custom Text

{% tabs %}

{% highlight c# %}

//Setting drawing mode

this.chartControl1.PrimaryXAxis.TickLabelsDrawingMode = ChartAxisTickLabelDrawingMode.UserMode;

//Adding new labels

this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel("Q1 Mid Point", Color.OrangeRed, new Font("Arial", 8F, System.Drawing.FontStyle.Bold), new DateTime(2007, 2, 15), "", "", ChartValueType.Custom));

this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel("Q2 Mid Point", Color.OrangeRed, new Font("Arial", 8F, System.Drawing.FontStyle.Bold), new DateTime(2007, 5, 15), "", "", ChartValueType.Custom));

{% endhighlight %}

{% highlight vb %}

'Setting drawing mode

Me.chartControl1.PrimaryXAxis.TickLabelsDrawingMode = ChartAxisTickLabelDrawingMode.UserMode

'Adding new labels

Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel("Q1 Mid Point", Color.OrangeRed, New Font("Arial", 8F, System.Drawing.FontStyle.Bold), New DateTime(2007, 2, 15), "", "", ChartValueType.Custom))

Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel("Q2 Mid Point", Color.OrangeRed, New Font("Arial", 8F, System.Drawing.FontStyle.Bold), New DateTime(2007, 5, 15), "", "", ChartValueType.Custom))

{% endhighlight %}

{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img16.jpeg)

#### Using Formatted Text

Apply date/time formatting to custom labels to automatically format date values with your specified format string.

{% tabs %}

{% highlight c# %}

//Setting drawing mode
this.chartControl1.PrimaryXAxis.TickLabelsDrawingMode = ChartAxisTickLabelDrawingMode.UserMode;

//Adding new labels with formatted text
this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel("", Color.Maroon, new Font("Arial", 9F, System.Drawing.FontStyle.Bold), new DateTime(2007, 2, 15), "", "M", ChartValueType.DateTime));

this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel("", Color.Maroon, new Font("Arial", 9F, System.Drawing.FontStyle.Bold), new DateTime(2007, 05, 15), "", "M", ChartValueType.DateTime));

{% endhighlight %}

{% highlight vb %}

'Setting drawing mode
Me.chartControl1.PrimaryXAxis.TickLabelsDrawingMode = ChartAxisTickLabelDrawingMode.UserMode

'Clearing all the default labels
Me.chartControl1.PrimaryXAxis.Labels.Clear()

'Adding new labels with formatted text
Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel("", Color.Maroon, New Font("Arial", 9F, System.Drawing.FontStyle.Bold), New DateTime(2007, 2, 15), "", "M", ChartValueType.DateTime))

Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel("", Color.Maroon, New Font("Arial", 9F, System.Drawing.FontStyle.Bold), New DateTime(2007, 05, 15), "", "M", ChartValueType.DateTime))

{% endhighlight %}

{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img17.jpeg)

## Handling Overlapping Labels

When charts have limited space, axis labels may overlap and become unreadable. The chart provides several built-in strategies to automatically handle label overlap and ensure labels remain clear and accessible.

### Preventing Label Overlap

Control how overlapping labels are handled using various intersection actions. Choose the strategy that best preserves label readability based on your chart layout.

**Key Properties:**
- {{'[LabelIntersectAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_LabelIntersectAction)'| markdownify }} - Specifies action when labels overlap:
  - `MultipleRows` - Renders labels in multiple rows to avoid overlap
  - `Rotate` - Rotates text to prevent overlap
  - `Wrap` - Wraps text to fit available space
  - `None` - Do nothing (default) - labels may overlap
- {{'[HidePartialLabels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_HidePartialLabels)'| markdownify }} - When `true`, selectively hides certain labels (usually edge labels) to keep remaining labels readable

{% tabs %}

{% highlight c# %}

this.chartControl1.PrimaryXAxis.LabelIntersectAction = ChartLabelIntersectAction.Rotate;
this.chartControl1.PrimaryXAxis.HidePartialLabels = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.LabelIntersectAction = ChartLabelIntersectAction.Rotate
Me.chartControl1.PrimaryXAxis.HidePartialLabels = True

{% endhighlight %}
{% endtabs %}

### Managing Edge Labels

Handle labels at the edges of an axis that might be partially clipped. Use the `EdgeLabelsDrawingMode` property to control how edge labels are positioned and displayed.

**Key Property:**
- {{'[EdgeLabelsDrawingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_EdgeLabelsDrawingMode)'| markdownify }} - Specifies how edge labels are rendered:
  - `Center` - Centers the label at the interval (default)
  - `Shift` - Shifts labels to be within interval boundaries
  - `ClippingProtection` - Uses intelligent logic to prevent clipping

![Chart Axes](Chart-Axes_images/Chart-Axes_img18.png)

## Grouping Labels

Organize axis labels into logical groups and mark them with category labels. Group adjacent labels (e.g., months into quarters, days into weeks) to provide higher-level context and improve chart readability.

### Creating Label Groups

Group a set of adjoining labels and assign a category name to enhance data organization and visualization clarity.

**Key Properties:**
- {{'[GroupingLabels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_GroupingLabels)'| markdownify }} - Collection for defining label groups with custom names and ranges
- {{'[DrawTickLabelGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DrawTickLabelGrid)'| markdownify }} - When `true`, displays grouped labels within a grid (useful for visual organization)

{% tabs %}

{% highlight c# %}

//Create quarterly grouping labels
ChartAxisGroupingLabel Q1 = new ChartAxisGroupingLabel(new DoubleRange(1, 3), "Q1");
Q1.BorderStyle = ChartAxisGroupingLabelBorderStyle.Rectangle;
Q1.Font = new Font("Arial", 10F, FontStyle.Bold);
this.chartControl1.PrimaryXAxis.GroupingLabels.Add(Q1);

ChartAxisGroupingLabel Q2 = new ChartAxisGroupingLabel(new DoubleRange(4, 6), "Q2");
Q2.BorderStyle = ChartAxisGroupingLabelBorderStyle.Rectangle;
Q2.Font = new Font("Arial", 10F, FontStyle.Bold);
this.chartControl1.PrimaryXAxis.GroupingLabels.Add(Q2);

//Enable grid for grouped labels
this.chartControl1.PrimaryXAxis.DrawTickLabelGrid = true;

{% endhighlight %}

{% highlight vb %}

'Create quarterly grouping labels
Dim Q1 As New ChartAxisGroupingLabel(New DoubleRange(1, 3), "Q1")
Q1.BorderStyle = ChartAxisGroupingLabelBorderStyle.Rectangle
Q1.Font = New Font("Arial", 10.0F, FontStyle.Bold)
Me.chartControl1.PrimaryXAxis.GroupingLabels.Add(Q1)

Dim Q2 As New ChartAxisGroupingLabel(New DoubleRange(4, 6), "Q2")
Q2.BorderStyle = ChartAxisGroupingLabelBorderStyle.Rectangle
Q2.Font = New Font("Arial", 10.0F, FontStyle.Bold)
Me.chartControl1.PrimaryXAxis.GroupingLabels.Add(Q2)

'Enable grid for grouped labels
Me.chartControl1.PrimaryXAxis.DrawTickLabelGrid = True

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img19.jpeg)

## Rounding Label Values

Control the number of decimal places displayed in numeric axis labels. By default, axis labels show 2 decimal places, but you can adjust this to fit your data precision requirements.

### Setting Decimal Places

Specify the number of decimal places to display for numeric labels using the `RoundingPlaces` property.

**Key Property:**
- {{'[RoundingPlaces](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_RoundingPlaces)'| markdownify }} - Sets the number of decimal places for numeric labels (default: 2)

{% tabs %}

{% highlight c# %}

//Set RoundingPlaces for axis
this.chartControl1.PrimaryYAxis.RoundingPlaces = 3;

{% endhighlight %}

{% highlight vb %}

//Set RoundingPlaces for axis
Me.chartControl1.PrimaryYAxis.RoundingPlaces = 3;

{% endhighlight %}
{% endtabs %}

The following screenshot illustrates a chart whose y-axis labels rendered with three decimal places.

![Chart Axes](Chart-Axes_images/Chart-Axes_img42.png)

## Positioning Labels by Index or Position

Control how custom labels are positioned on the axis by specifying whether positioning is based on label index or data position. This feature provides flexibility in binding custom labels to chart data.

### Using Position-Based Label Placement

Position custom labels based on their associated data position rather than their index in the labels collection, allowing more flexible label binding.

**Key Property:**
- {{'[CustomLabelsParameter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_CustomLabelsParameter)'| markdownify }} - Determines label positioning method:
  - `Index` - Position labels by their index in the collection (default)
  - `Position` - Position labels by their associated data position value

{% tabs %}

{% highlight c# %}

//Set CustomLabelsParameter for axis
series.SeriesModel = new ChartDataBindModel(ShowCompleteInformation, "test1")
{
    YNames = new string[] { "YValue" },
};

chart.Series.Add(series);
ChartDataBindAxisLabelModel xAxisLabelModel = new ChartDataBindAxisLabelModel(Data, "test1");
xAxisLabelModel.LabelName = "XValue";
xAxisLabelModel.PositionName = "ID";
chart.PrimaryXAxis.LabelsImpl = xAxisLabelModel;
chart.PrimaryXAxis.CustomLabelsParameter = ChartCustomLabelsParameter.Position;

{% endhighlight %}

{% highlight vb %}

//Set CustomLabelsParameter for axis
series.SeriesModel = new ChartDataBindModel(ShowCompleteInformation, "test1")
{
    YNames = new string[] { "YValue" },
};

chart.Series.Add(series);
ChartDataBindAxisLabelModel xAxisLabelModel = new ChartDataBindAxisLabelModel(Data, "test1");
xAxisLabelModel.LabelName = "XValue";
xAxisLabelModel.PositionName = "ID";
chart.PrimaryXAxis.LabelsImpl = xAxisLabelModel;
chart.PrimaryXAxis.CustomLabelsParameter = ChartCustomLabelsParameter.Position;

{% endhighlight %}
{% endtabs %}

The following screenshot illustrates a chart whose x-axis labels rendered with CustomLabelsParameter as position.

![Chart Axes](Chart-Axes_images/Chart-Axes_img43.png)

## Positioning Axis Labels

Control the placement of axis labels to optimize chart layout and readability. Position labels inside or outside the plotted chart area to maximize chart space or accommodate lengthy labels.

### Overview

When axis labels are long, they consume additional space outside the plot area, reducing the chart drawing area. Use label placement control to position labels strategically for better space utilization.

### Positioning Labels Inside or Outside Chart Area

Specify whether axis labels should be placed inside or outside the plotted chart area using the {{'[AxisLabelPlacement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_AxisLabelPlacement)'| markdownify }} property.

**Key Property:**
- {{'[AxisLabelPlacement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_AxisLabelPlacement)'| markdownify }} - Specifies label position:
  - `Inside` - Places labels inside the chart plot area
  - `Outside` - Places labels outside the plot area (default)

The following code illustrates how to place the chart axis label inside the plotted chart area:

{% tabs %}

{% highlight c# %}

//Place axis labels inside the chart area
this.chartControl1.PrimaryXAxis.AxisLabelPlacement = ChartPlacement.Inside;

{% endhighlight %}

{% highlight vb %}

'Place axis labels inside the chart area
Me.chartControl1.PrimaryXAxis.AxisLabelPlacement = ChartPlacement.Inside

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img37.png)

### Positioning Individual Labels Dynamically

Customize the placement of individual axis labels dynamically based on data values or conditions. Use the **FormatLabel** event to adjust label placement for specific labels based on your requirements.

Handle the [FormatLabel](/windowsforms/chart/chart-control-events#chartformataxislabel-event) event to dynamically adjust individual label placements based on data conditions.

{% tabs %}

{% highlight c# %}

//Set default placement for all labels
this.chartControl1.PrimaryYAxis.AxisLabelPlacement = ChartPlacement.Inside;

//Customize individual label placement in the FormatLabel event
private void chartControl1_ChartFormatAxisLabel(object sender, ChartFormatAxisLabelEventArgs e)

        {
            if (e.AxisOrientation == ChartOrientation.Vertical)
            {
                //Adjust label placement based on data values
                if (e.Label == "1")
                {
                    if (series.Points[(int)e.Value - 1].YValues[0] > 0)
                        e.AxisLabelPlacement = ChartPlacement.Outside;
                    e.Label = "Canada";
                }
                else if (e.Label == "2")
                {
                    if (series.Points[(int)e.Value - 1].YValues[0] > 0)
                        e.AxisLabelPlacement = ChartPlacement.Outside;
                    e.Label = "France";
                }
                else if (e.Label == "3")
                {
                    if (series.Points[(int)e.Value - 1].YValues[0] > 0)
                        e.AxisLabelPlacement = ChartPlacement.Outside;
                    e.Label = "Japan";
                }
                else if (e.Label == "4")
                {
                    if (series.Points[(int)e.Value - 1].YValues[0] > 0)
                        e.AxisLabelPlacement = ChartPlacement.Outside;
                    e.Label = "Britain";
                }
                else if (e.Label == "5")
                {
                    if (series.Points[(int)e.Value - 1].YValues[0] > 0)
                        e.AxisLabelPlacement = ChartPlacement.Outside;
                    e.Label = "United States";
                }
                e.Handled = true;
            }
        }

{% endhighlight %}

{% highlight vb %}

'Set default placement for all labels
Me.chartControl1.PrimaryYAxis.AxisLabelPlacement = ChartPlacement.Inside

'Customize individual label placement in the FormatLabel event
Private Sub chartControl1_ChartFormatAxisLabel(ByVal sender As Object, ByVal e As ChartFormatAxisLabelEventArgs)
    If e.AxisOrientation = ChartOrientation.Vertical Then
        'Adjust label placement based on data values
        If e.Label = "1" Then
            If series.Points(CInt(Fix(e.Value)) - 1).YValues(0) > 0 Then
                e.AxisLabelPlacement = ChartPlacement.Outside
            End If
            e.Label = "Canada"
        ElseIf e.Label = "2" Then
            If series.Points(CInt(Fix(e.Value)) - 1).YValues(0) > 0 Then
                e.AxisLabelPlacement = ChartPlacement.Outside
            End If
            e.Label = "France"
        ElseIf e.Label = "3" Then
            If series.Points(CInt(Fix(e.Value)) - 1).YValues(0) > 0 Then
                e.AxisLabelPlacement = ChartPlacement.Outside
            End If
            e.Label = "Japan"
        ElseIf e.Label = "4" Then
            If series.Points(CInt(Fix(e.Value)) - 1).YValues(0) > 0 Then
                e.AxisLabelPlacement = ChartPlacement.Outside
            End If
            e.Label = "Britain"
        ElseIf e.Label = "5" Then
            If series.Points(CInt(Fix(e.Value)) - 1).YValues(0) > 0 Then
                e.AxisLabelPlacement = ChartPlacement.Outside
            End If
            e.Label = "United States"
        End If
        e.Handled = True
    End If
End Sub

{% endhighlight %}
{% endtabs %}

The following screenshot illustrates the customization options for individual label positions on the y-axis to the right or left side based on the y value of the data points. If the export value is positive, the label is rendered to the left side of the axis, and if it is negative, the label is rendered on the right side of the axis.

![Chart Axes](Chart-Axes_images/Chart-Axes_img38.png)
