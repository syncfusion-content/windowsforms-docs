---
layout: post
title: Shapes
description: How to import charts, sparklines, pictures and textboxes in Spreadsheet
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Shapes
 This section explains how to charts, sparklines, pictures and textboxes in Spreadsheet.

## Charts

Spreadsheet provides support to import charts from excel which are used to represent numeric data in graphical format to make it easier to understand large quantities of data.

To import the charts into Spreadsheet, need to create an instance of `GraphicChartCellRenderer` and add that renderer into `GraphicCellRenderers` collection. The `GraphicChartCellRenderer` is available under the this assembly “Syncfusion.SpreadsheetHelper.Windows.dll “

Add the `GraphicChartCellRenderer` into the GraphicCellRenderers collection by using the extension method `AddGraphicChartCellRenderer` of Spreadsheet which method is available under the namespace “Syncfusion.Windows.Forms.Spreadsheet.Helpers”.

{% tabs %}
{% highlight c# %}

    this.spreadsheet.AddGraphicChartCellRenderer(new GraphicChartCellRenderer());

{% endhighlight %}
{% endtabs %}

For adding the Charts in Spreadsheet at runtime, use `AddChart` method, also you can resize and reposition the chart.

{% tabs %}
{% highlight c# %}

var chart = spreadsheet.AddChart(spreadsheet.ActiveSheet);

object[] Yvalues = new object[] { 200, 100, 100 };
object[] Xvalues = new object[] { "Total Income", "Expenses", "Profit" };

IChartSerie series = chart.Series.Add(ExcelChartType.Pie);

// Enters the X and Y values directly
series.EnteredDirectlyValues = Yvalues;
series.EnteredDirectlyCategoryLabels = Xvalues;

var shape = chart as ShapeImpl;

// Re-Positioning Chart
shape.Top = 200;
shape.Left = 200;

//Re-sizing a Chart
shape.Height = 300;
shape.Width = 300;
{% endhighlight %}
{% endtabs %}

## Sparklines

To import the Sparklines into Spreadsheet, need to create an instance of `SparklineCellRenderer` and add that renderer into `GraphicCellRenderers` collection. The `SparklineCellRenderer` is available under the this assembly “Syncfusion.SpreadsheetHelper.Windows.dll”

Add the SparklineCellRenderer into the GraphicCellRenderers collection by using the extension method `AddSparklineCellRenderer` of Spreadsheet which method is available under the namespace “Syncfusion.Windows.Forms.Spreadsheet.Helpers”.

{% tabs %}
{% highlight c# %}

    this.spreadsheet.AddSparklineCellRenderer(new SparklineCellRenderer());

{% endhighlight %}
{% endtabs %}

## Pictures

Spreadsheet provides support to import images in SpreadsheetGrid and to add an image at run time, use `AddImage` method and also you can resize and reposition the image.

{% tabs %}
{% highlight c# %}

var worksheet = spreadsheet.ActiveSheet;
var stream = typeof(MainWindow).Assembly.GetManifestResourceStream("GraphicCellDemo.Data.Sample.jpg");
var shape = spreadsheet.AddImage(worksheet, new RowColumnIndex(5, 5), stream);

// Re-Positioning Picture
shape.Top = 200;
shape.Left = 200;

 //Re-sizing a Picture
shape.Height = 200;
shape.Width = 200;

{% endhighlight %}
{% endtabs %}

## TextBoxes

Spreadsheet provides support to import RichText Box in SpreadsheetGrid and to add the rich text box at run time, use `AddTextBox` method

{% tabs %}
{% highlight c# %}

var rtfText = "{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1033{\\fonttbl{\\f0\\fnil\\fcharset1 Calibri;}{\\f1\\fnil\\fcharset1 Calibri;}}{\\colortbl;\\red0\\green0\\blue0;\\red255\\green0\\blue0;}{\\f0\\fs22\\b\\cf1\\u83*\\u121*\\u110*\\u99*\\u102*\\u117*\\u115*\\u105*\\u111*\\u110*\\u32*\\b0}                           {\\f1\\fs22\\cf2\\u83*\\u111*\\u102*\\u116*\\u119*\\u97*\\u114*\\u101*\\u32*}{\\f1\\fs22\\cf1\\u80*\\u118*\\u116*\\u46*\\u32*\\u76*\\u116*\\u100*}}";
  
var textBox = spreadsheet.AddTextBox(spreadsheet.ActiveSheet, new RowColumnIndex(5, 5), new Size(200, 200), rtfText) as TextBoxShapeImpl;

// Re-positioning RichTextBox
textBox.Left = 200;
textBox.Top = 200;
         
{% endhighlight %}
{% endtabs %}
