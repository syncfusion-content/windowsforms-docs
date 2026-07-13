---
layout: post
title: Sparkline Types in Windows Forms Sparkline control | Syncfusion
description: Learn about Sparkline Types support in Syncfusion® Windows Forms Sparkline control, its elements and more details.
platform: windowsforms
control: Sparkline
documentation: ug
---

# Sparkline Types in Windows Forms Sparkline

The Sparkline control supports three types of sparklines, and the sparkline control must be bound to a data source by using the [Source](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.SparkLine.html#Syncfusion_Windows_Forms_Chart_SparkLine_Source) property. It supports a variety of data sources such as DataTable and any component that implements the interfaces IEnumerable, ICollection, and IList.

* Line
* Column
* WinLoss

## Drawing Line Sparkline in an Application

The Line type of sparkline represents a set of data points connected by a line. The sparkline type can be changed by using the [Type](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.SparkLine.html#Syncfusion_Windows_Forms_Chart_SparkLine_Type) property.

Refer to the following code samples to draw the line sparkline.

{% tabs %}

{% highlight c# %}

//Set Sparkline points to Source property
this.sparkLine1.Source = new double[] { 30, -20, 80, 20, 40, -50, -30, 70, -40, 50 };

//Set Line type sparkline
this.sparkLine1.Type = SparkLine.SparkLineType.Line;

{% endhighlight %}

{% highlight vb %}

'Set Sparkline points to Source property
Me.sparkLine1.Source = New Double() { 30, -20, 80, 20, 40, -50, -30, 70, -40, 50 }

'Set Line type sparkline
Me.sparkLine1.Type = SparkLine.SparkLineType.Line

{% endhighlight %}

{% endtabs %}

![WinForms Sparkline line type](SparklineTypes_images/Line.png)

## Drawing Column Sparkline in an Application

The Column type of sparkline represents each data point by a column. The vertical column direction represents the negative or positive value.

Refer to the following code samples to draw the column sparkline:

{% tabs %}

{% highlight c# %}

//Set Sparkline points to Source property
this.sparkLine1.Source = new double[] { 30, -20, 80, 20, 40, -50, -30, 70, -40, 50 };

//Set Column type sparkline
this.sparkLine1.Type = SparkLine.SparkLineType.Column;

{% endhighlight %}

{% highlight vb %}

'Set Sparkline points to Source property
Me.sparkLine1.Source = New Double() { 30, -20, 80, 20, 40, -50, -30, 70, -40, 50 }

'Set Column type sparkline
Me.sparkLine1.Type = SparkLine.SparkLineType.Column

{% endhighlight %}

{% endtabs %}

![WinForms Sparkline column type](SparklineTypes_images/Column.png)

## Drawing WinLoss Sparkline in an Application

The WinLoss type of sparkline is similar to the Column type, but all columns have equal length for data points. The vertical column direction represents the negative or positive value. The [SparkLineType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.SparkLineType.html) enum is used to set the WinLoss type.

Refer to the following code samples to draw the WinLoss sparkline:

{% tabs %}

{% highlight c# %}

//Set Sparkline points to Source property
this.sparkLine1.Source = new double[] { 30, -20, 80, 20, 40, -50, -30, 70, -40, 50 };

//Set WinLoss type sparkline
this.sparkLine1.Type = SparkLine.SparkLineType.WinLoss;

{% endhighlight %}

{% highlight vb %}

'Set Sparkline points to Source property
Me.sparkLine1.Source = New Double() { 30, -20, 80, 20, 40, -50, -30, 70, -40, 50 }

'Set WinLoss type sparkline
Me.sparkLine1.Type = SparkLine.SparkLineType.WinLoss

{% endhighlight %}

{% endtabs %}

![WinForms Sparkline WinLoss type](SparklineTypes_images/Winloss.png)
