---
layout: post
title: About Syncfusion® Windows Forms Chart Control | Syncfusion®
description: Learn about the introduction of Syncfusion Essential Studio® Windows Forms Chart control, its features, capabilities, and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# About syncfusion® Windows Forms chart control

This section covers information about the Essential® Chart control, its key features, prerequisites for using the control, compatibility with various operating systems and browsers, and the complementary documentation provided with the product. It comprises the following subsections:

## Introduction to essential® Chart

Essential® Chart is an easily configurable, presentation-quality business chart control. Its unique point-based styles architecture, easily extensible data model, easily extensible rendering model, native data handling, and unique shared data model are the features that distinguish Essential® Chart. This control was created using C#, which means that it is a fully managed .NET component specifically designed for use with Microsoft Visual Studio .NET.

Essential® Chart for Windows Forms is a perfect solution for developers looking to add advanced, feature-rich, and visually appealing charts to their Windows Forms applications. The product comes with numerous samples and extensive documentation to guide you every step of the way.

A chart is used to show the graphical representation of two values. For example, a line chart can be used in health statistics reports to show rates over time or across a series of values, such as age-specific death rates. Logarithmic charts can be used in share price charts, where price is plotted against time. In a logarithmic chart, we can identify the "proportional change in price" with respect to the "change in time." We use the proportional change in price to observe market sentiment. Market participants move share prices either up or down proportionally, depending on how bullish or bearish they feel.

![Overview in WindowsForms Chart](overview_images/windowsforms-chart-overview.jpeg)

### Key Features

Some of the key features of Essential® Chart are listed below:

* The control provides complete support for customizing the Chart control through the Chart Wizard at design time and runtime. The Chart Wizard comes with a new Office look and feel.
* The Chart Data Model is an innovative data object model that makes it easy to populate the chart using any kind of data source.
* Essential® Chart features built-in support for dates. The data type of any series plotted on the chart can be set to `DateTime`.
* Essential® Chart offers automatic interval calculation capabilities for any range of numbers or dates. This calculation can be overridden by explicitly specifying the ranges and intervals. Settings are also available to control how "nice" numbers are calculated for display.
* Essential® Chart offers extensive customization options for the legend. The position and appearance of the legend within the chart area can be completely customized. Essential® Chart also supports modifying legend items using events. It supports custom legend items that are not tied to a data series.
* Statistical formulas such as Mean, Standard Deviation, Variance, Distributions, T-test, F-test, and Z-test are supported.
* Exporting charts to PDF, Excel, and Doc etc., are available for the chart control. Importing is also supported.
* Users can create custom palettes for their charts using the `CustomPalette` property. They can also create non-gradient palettes using this custom palette feature.
* Multiple Chart Titles and Multiple Legends can be provided with abilities to format the Title text. 
* Chart Breaks are very useful when you use series points with large difference. 

## Prerequisites and compatibility

This section covers the requirements mandatory for using Essential® Chart control. It also lists operating systems and browsers compatible with the product.

### Prerequisites

The prerequisites details are listed in the following table.

<table>
<tr>
<th>
Development Environments</th><th>
.NET Framework versions</th></tr>
<tr>
<td>
<ul>
<li>Visual Studio 2017</li>
<li>Visual Studio 2015</li>
<li>Borland Delphi for .NET</li>
<li>SharpCode</li></ul></td>
<td>
<ul>
<li>.NET 4.6</li>
<li>.NET 4.5.1</li>
<li>.NET 4.5</li>
<li>.NET 4.0</li>
</ul></td></tr>
</table>

### Compatibility

The compatibility details are listed in the following table.

<table>
<tr>
<th>
Operating Systems</th></tr>
<tr>
<td>
<ul>
<li> Windows 10 (32 bit and 64 bit)</li>
<li> Windows 8.1 (32 bit and 64 bit)</li>
<li> Windows Server 2008 (32 bit and 64 bit)</li>
<li> Windows 7 (32 bit and 64 bit)</li>
<li> Windows Vista (32 bit and 64 bit)</li>
<li> Windows XP</li>
<li> Windows 2003</li>
</ul>
</td></tr>
</table>

## Control structure

This section describes the different parts of the Chart control. The following image illustrates the various sections of the control.

![Control structure in WindowsForms Chart](getting-started_images/windowsforms-chart-control-structure.jpeg)

<table>
<tr>
<th>
Section
</th>
<th>
Description
</th>
</tr>
<tr>
<td>
Chart Control
</td>
<td>
The ChartControl represents the complete visual display of the control. All other sections are displayed within the ChartControl.
</td>
</tr>
<tr>
<td>
Chart Title
</td>
<td>
The chart title is the area at the top of the Chart control that displays the title text.
</td>
</tr>
<tr>
<td>
Chart Legend
</td>
<td>
The chart legend displays an entry for each data series added to the ChartControl. By default, the chart legend is positioned within the ChartControl but outside the ChartArea. However, when the chart legend is set to floating mode, it can be positioned anywhere inside the Chart control.

The legend can also contain custom items with custom images and text.
</td>
</tr>
<tr>
<td>
Chart Area
</td>
<td>
The chart area contains the plots or graphs defined in the chart. It also includes the chart axes. A primary X-axis and a primary Y-axis are defined by default.
</td>
</tr>
<tr>
<td>
Axis Title
</td>
<td>
The axis title indicates the title of an individual axis.
</td>
</tr>
<tr>
<td>
Axis Label
</td>
<td>
The axis label represents the label text displayed for data points along the chart axes.
</td>
</tr>
<tr>
<td>
Chart Interior
</td>
<td>
The chart interior is the area within the chart area that contains the data points plotted against the X-axis and Y-axis.
</td>
</tr>
<tr>
<td>
Chart Series
</td>
<td>
Chart series are the elements displayed inside the chart area.
</td>
</tr>
<tr>
<td>
Series Symbol
</td>
<td>
A series symbol is a symbol that can be displayed on the series points.
</td>
</tr>
<tr>
<td>
Chart Shadow
</td>
<td>
The chart shadow indicates the shadow applied to the chart area.
</td>
</tr>
</table>

{% seealso %}

1.[Text](https://help.syncfusion.com/windowsforms/chart/chart-appearance#foreground-settings)

2.[Chart Legend](https://help.syncfusion.com/windowsforms/chart/chart-legend-and-legend-items)

3.[Chart Series](https://help.syncfusion.com/windowsforms/chart/chart-series)

4.[Chart Area](https://help.syncfusion.com/windowsforms/chart/chart-area)

5.[Axis Label Text Formatting](https://help.syncfusion.com/windowsforms/chart/chart-axes#axis-label-text-formatting-appearance-and-positionin)

6.[Appearance and Positioning](https://help.syncfusion.com/windowsforms/chart/chart-appearance)

7.[Customizing Label Text](https://help.syncfusion.com/windowsforms/chart/chart-axes#customizing-label-text)

8.[Intersecting Labels](https://help.syncfusion.com/windowsforms/chart/chart-axes#intersecting-labels)

9.[Grouping Labels](https://help.syncfusion.com/windowsforms/chart/chart-axes#grouping-labels)

{% endseealso %}

## Documentation

Syncfusion® provides the following documentation segments to provide all necessary information for using Essential® Chart control in Windows application in an efficient manner.

<table>
<tr>
<th>
Type of documentation
</th>
<th>
Location
</th>
</tr>
<tr>
<td>
Release Notes
</td>
<td>
{{ '<https://help.syncfusion.com/windowsforms/release-notes/v16.1.0.32>' | markdownify }}
</td>
</tr>
<tr>
<td>Class Reference
</td>
<td>
Click on this {{ '<https://help.syncfusion.com/cr/windowsforms/Syncfusion.html>' | markdownify }} link.

Select Chart from the second text box. Namespaces will be listed out at the left side of the page.
</td>
</tr>
</table>

N> You can refer to our [WinForms Chart](https://www.syncfusion.com/winforms-ui-controls/chart) control feature tour page for its groundbreaking feature representations. You can also explore our [WinForms Chart example](https://github.com/syncfusion/winforms-demos/tree/master/chart) that shows how to render various chart types as well as how to easily configure with built-in support for creating stunning visual effects.