---
layout: post
title: Printing-and-Print-Preview
description: printing and print preview 
platform: WindowsForms
control: Chart
documentation: ug
---

# Printing and Print Preview 

## Print Preview

The chart provides a PrintDocument that can be sent to the .NET PrintPreviewDialog to get a preview of the chart that gets printed. Here is some code that shows how this is done.


{% highlight c# %}

PrintPreviewDialog printPreviewDialog1 = new PrintPreviewDialog();

printPreviewDialog1.Document = this.chartControl1.PrintDocument;

printPreviewDialog1.ShowDialog();

{% endhighlight %}

{% highlight vbnet %}

Me.printPreviewDialog1 = New System.Windows.Forms.PrintPreviewDialog

printPreviewDialog1.Document = Me.chartControl1.PrintDocument

printPreviewDialog1.ShowDialog()

{% endhighlight %}

![](Printing-and-Print-Preview_images/Printing-and-Print-Preview_img1.jpeg)


_Figure_ _362_: _Print Preview Dialog Box_



## Printing
Print a chart control using the PrintDocument exposed by the chart control as follows:



{% highlight c# %}

this.chartControl1.PrintDocument.Print();

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.PrintDocument.Print()

{% endhighlight %}


You can also specify if you want to print the chart in Color or GrayScale using this property.



_Table_ _183_: _Properties_

<table>
<tr>
<th>
Chart control Property</th><th>
Description</th></tr>
<tr>
<td>
PrintColorMode</td><td>
Indicates the color mode during printing. Possible Values:* Color - Always Print in Color.* GrayScale - Always Print using GrayScale.* CheckPrinter - If printer allows color print in color, otherwise use grayscale (default setting).</td></tr>
</table>


{% highlight c# %}

this.chartControl1.PrintColorMode = ChartPrintColorMode.GrayScale;

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.PrintColorMode = ChartPrintColorMode.GrayScale

{% endhighlight %}


## Automatic Grayscale Handling

Setting GrayScale print mode for the chart lets you print the chart in a gray scale and when multiple series are printed in this case, chart data points are automatically rendered with a patterned brush to differentiate the different series as shown in the image below.



![](Printing-and-Print-Preview_images/Printing-and-Print-Preview_img2.jpeg)





_Figure_ _363_: _Column Chart with 2nd and 3rd Series rendered with Patterned Brush_



A sample illustrating the printing features is available in the below location.

..\My Documents\Syncfusion\EssentialStudio\_Version Number_\Windows\Chart.Windows\Samples\2.0\Print\Chart Print

## Displaying ToolBar while printing

ShowToolBar property should be set to true to display a toolbar in the Chart. You can show or hide the toolbar while printing a Chart using PrintToolBar property. 



{% highlight c# %}

chartControl1.ShowToolbar = true;

chartControl1.PrintDocument.PrintToolBar = true;

{% endhighlight %}

{% highlight vbnet %}

chartControl1.ShowToolbar = True

chartControl1.PrintDocument.PrintToolBar = True

{% endhighlight %}