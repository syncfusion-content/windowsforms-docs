---
layout: post
title: Printing in Windows Forms Chart control | Syncfusion
description: Learn about Printing support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Printing in Windows Forms Chart

## Print Preview

The chart provides a [PrintDocument](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrintDocument) that can be sent to the .NET PrintPreviewDialog to get a preview of the chart that gets printed. Here is some code that shows how this is done.

{% tabs %}  

{% highlight c# %}

PrintPreviewDialog printPreviewDialog1 = new PrintPreviewDialog();

//Customizing the icon of print preview dialog

(printPreviewDialog1 as Form).Icon = new Icon(@"..\..\App.ico");

printPreviewDialog1.Document = this.chartControl1.PrintDocument;

printPreviewDialog1.ShowDialog();

{% endhighlight %}

{% highlight vb %}

Me.printPreviewDialog1 = New System.Windows.Forms.PrintPreviewDialog

'Customizing the icon of print preview dialog

CType(printPreviewDialog1,Form).Icon = New Icon("..\..\App.ico")

printPreviewDialog1.Document = Me.chartControl1.PrintDocument

printPreviewDialog1.ShowDialog()

{% endhighlight %}
{% endtabs %}

![Chart Print](Printing-and-Print-Preview_images/Printing-and-Print-Preview_img1.jpeg)

## Printing

Print a chart control using the [PrintDocument](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrintDocument) exposed by the chart control as follows:

{% tabs %}  

{% highlight c# %}

this.chartControl1.PrintDocument.Print();

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrintDocument.Print()

{% endhighlight %}
{% endtabs %}

You can also specify if you want to print the chart in Color or GrayScale using [PrintColorMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrintColorMode) property.

<table>
<tr>
<th>
Chart control Property
</th>
<th>
Description
</th>
</tr>
<tr>
<td>

{{'[PrintColorMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrintColorMode)'| markdownify }}
</td>
<td>
Indicates the color mode during printing. Possible Values: <ul><li>Color - Always Print in Color.</li><li>GrayScale - Always Print using GrayScale.</li><li>CheckPrinter - If printer allows color print in color, otherwise use gray scale (default setting).</li></ul></td></tr>
</table>

{% tabs %}  

{% highlight c# %}

this.chartControl1.PrintColorMode = ChartPrintColorMode.GrayScale;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrintColorMode = ChartPrintColorMode.GrayScale

{% endhighlight %}
{% endtabs %}

## Automatic GrayScale Handling

Setting GrayScale print mode for the chart lets you print the chart in a gray scale and when multiple series are printed in this case, chart data points are automatically rendered with a patterned brush to differentiate the different series as shown in the image below.

![Chart Print](Printing-and-Print-Preview_images/Printing-and-Print-Preview_img2.jpeg)

A sample illustrating the printing features is available in the below location.

&lt;Install Location&gt;\Syncfusion\EssentialStudio\<Install version>\Windows\Chart.Windows\Samples\Print\Chart Print

## Displaying ToolBar while printing

[ShowToolBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowToolbar) property should be set to true to display a toolbar in the Chart. You can show or hide the toolbar while printing a Chart using [PrintToolBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPrintDocument.html#Syncfusion_Windows_Forms_Chart_ChartPrintDocument_PrintToolBar) property. 

{% tabs %}  {% highlight c# %}

chartControl1.ShowToolbar = true;

chartControl1.PrintDocument.PrintToolBar = true;

{% endhighlight %}

{% highlight vb %}

chartControl1.ShowToolbar = True

chartControl1.PrintDocument.PrintToolBar = True

{% endhighlight %}
{% endtabs %}
