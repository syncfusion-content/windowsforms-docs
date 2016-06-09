---
layout: post
title: Printing-and-Print-Preview | Windows Forms | Syncfusion
description: printing and print preview 
platform: windowsforms
control: Chart
documentation: ug
---

# Printing and Print Preview 

## Print Preview

The chart provides a PrintDocument that can be sent to the .NET PrintPreviewDialog to get a preview of the chart that gets printed. Here is some code that shows how this is done.


{% tabs %}  {% highlight c# %}

PrintPreviewDialog printPreviewDialog1 = new PrintPreviewDialog();

printPreviewDialog1.Document = this.chartControl1.PrintDocument;

printPreviewDialog1.ShowDialog();

{% endhighlight %}

{% highlight vbnet %}

Me.printPreviewDialog1 = New System.Windows.Forms.PrintPreviewDialog

printPreviewDialog1.Document = Me.chartControl1.PrintDocument

printPreviewDialog1.ShowDialog()

{% endhighlight %}
{% endtabs %}

![](Printing-and-Print-Preview_images/Printing-and-Print-Preview_img1.jpeg)



## Printing
Print a chart control using the PrintDocument exposed by the chart control as follows:



{% tabs %}  {% highlight c# %}

this.chartControl1.PrintDocument.Print();

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.PrintDocument.Print()

{% endhighlight %}
{% endtabs %}


You can also specify if you want to print the chart in Color or GrayScale using this property.


<table>
<tr>
<th>
Chart control Property</th><th>
Description</th></tr>
<tr>
<td>
PrintColorMode</td><td>
Indicates the color mode during printing. Possible Values:* Color - Always Print in Color.* GrayScale - Always Print using GrayScale.* CheckPrinter - If printer allows color print in color, otherwise use gray scale (default setting).</td></tr>
</table>


{% tabs %}  {% highlight c# %}

this.chartControl1.PrintColorMode = ChartPrintColorMode.GrayScale;

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.PrintColorMode = ChartPrintColorMode.GrayScale

{% endhighlight %}
{% endtabs %}


## Automatic GrayScale Handling

Setting GrayScale print mode for the chart lets you print the chart in a gray scale and when multiple series are printed in this case, chart data points are automatically rendered with a patterned brush to differentiate the different series as shown in the image below.



![](Printing-and-Print-Preview_images/Printing-and-Print-Preview_img2.jpeg)



A sample illustrating the printing features is available in the below location.

..\My Documents\Syncfusion\EssentialStudio\_Version Number_\Windows\Chart.Windows\Samples\2.0\Print\Chart Print

## Displaying ToolBar while printing

ShowToolBar property should be set to true to display a toolbar in the Chart. You can show or hide the toolbar while printing a Chart using PrintToolBar property. 



{% tabs %}  {% highlight c# %}

chartControl1.ShowToolbar = true;

chartControl1.PrintDocument.PrintToolBar = true;

{% endhighlight %}

{% highlight vbnet %}

chartControl1.ShowToolbar = True

chartControl1.PrintDocument.PrintToolBar = True

{% endhighlight %}
{% endtabs %}