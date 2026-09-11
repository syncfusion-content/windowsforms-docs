---
layout: post
title: Chart Axes in Windows Forms Chart control | Syncfusion
description: Learn about Chart Axes support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Axes in Windows Forms Chart

An axis in Essential® Chart is represented by the [ChartAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html) class. All axes are stored in the [WinForms Chart](https://www.syncfusion.com/winforms-ui-controls/chart) control's **Axes** collection.

By default, the **Axes** collection includes two primary axes:

- **[PrimaryXAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrimaryXAxis)** – Rendered horizontally, typically at the bottom of the chart.
- **[PrimaryYAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrimaryYAxis)** – Rendered vertically, typically on the left side of the chart.

N> In a Bar chart, the positions of the X and Y axes are reversed — the X-axis appears vertically and the Y-axis appears horizontally.

These primary axes can be accessed directly through the `PrimaryXAxis` and `PrimaryYAxis` properties of the Chart control.

## Supported Axis Value Types

Each axis in the WinForms Chart control supports the following value types. You can set the value type for an axis using [Axes.ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property.

| Value Type | Description |
|---|---|
| **Category** | Displays text-based labels instead of numeric values. Typically used for the X-axis to represent discrete categories. |
| **Double** | The default value type. Displays standard numeric (floating-point) values. |
| **DateTime** | Displays date and time values along the axis, with support for various interval types such as days, months, and years. |
| **Logarithmic** | Displays data on a logarithmic scale. Useful for datasets with a wide range of values. Requires setting the `LogBase` property. |
| **Custom** | Allows custom label rendering using user-defined values. |

## Key Features

- **Multiple axis types** – Supports Category, Double, DateTime, Logarithmic, and Custom axis value types to accommodate a wide range of data formats.
- **Axis customization** – Customize the axis line style, tick marks (major and minor), grid lines, and label appearance including font, color, rotation, and format.
- **Custom range and intervals** – Define custom minimum, maximum, and interval values for precise control over axis scale, or let the built-in range engine calculate them automatically.
- **Custom origin** – Set a custom origin point for any axis to control where the axis baseline begins.
- **Range padding** – Configure padding between the data points and the axis boundaries for better visual spacing.
- **Multiple axes** – Add secondary X and Y axes to display multiple series with independent scales within the same chart area.
- **Opposed and inverted axes** – Render axes on the opposite side of their default position, or invert the axis direction for specialized chart layouts.
- **Strip lines** – Add horizontal or vertical bands to highlight specific regions or ranges within the chart area.
- **Grouping labels** – Group a range of adjacent axis labels under a single custom label for better readability.
- **Axis title** – Set and style a title for each axis with options for font, color, rotation angle, and drawing mode (wrap or ellipsis).