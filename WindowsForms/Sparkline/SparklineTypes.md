---
layout: post
title: Sparkline Types in Windows Forms Sparkline control | Syncfusion®
description: Learn about Sparkline Types support in Syncfusion® Windows Forms Sparkline control, its elements and more details.
platform: windowsforms
control: Sparkline
documentation: ug
---

# Sparkline Types in Windows Forms Sparkline

SparkLine control supports three types of Sparklines and the sparkline control must be bound to a data source. It supports a variety of datasource such as DataTable and any component that implements the interface IEnumerable, ICollection, IList. 

* Line
* Column
* WinLoss 

## Drawing Line Sparkline in an Application

The line type of spark line represents a set of data points, connected by a line. 

Refer to the following code samples to draw  the line sparkline.

{% tabs %}  

{% highlight c# %}

//Set Sparkline points to source property

this.sparkLine1.Source =new double[] { 30, -20, 80, 20, 40, -50, -30, 70,    -40, 50 };

//Set line type sparkline

this.sparkLine1.Type = SparkLine.SparkLineType.Line;

{% endhighlight %}

{% highlight vb %}

'Set Sparkline points to source property

Me.sparkLine1.Source = New Double() {30, -20, 80, 20, 40, -50,-30, 70, -40, 50}

'Set line type sparkline

Me.sparkLine1.Type = SparkLine.SparkLineType.Line

{% endhighlight %}

{% endtabs %}

![Line](SparklineTypes_images/Line.png)

## Drawing Column Sparkline in an Application

The column type of spark line represents each data point by a column. The vertical column direction represents the negative or positive value.
Refer to the following code samples to draw the column sparkline:

{% tabs %}

{% highlight c# %}

//Set Sparkline points to source property

this.sparkLine1.Source =new double[] { 30, -20, 80, 20, 40, -50, -30, 70,    -40, 50 };

//Set line type sparkline

this.sparkLine1.Type = SparkLine.SparkLineType.Column;

{% endhighlight %}

{% highlight vb %}

'Set Sparkline points to source property

Me.sparkLine1.Source = New Double() {30, -20, 80, 20, 40, -50,-30, 70, -40, 50}

'Set line type sparkline

Me.sparkLine1.Type = SparkLine.SparkLineType. Column

{% endhighlight %}

{% endtabs %}

![Column](SparklineTypes_images/Column.png)

## Drawing WinLoss Sparkline in an Application

The WinLoss type of spark line is similar to column type but all columns have equal length for data points.   The vertical column direction represents the negative or positive value.
Refer to the following code samples to draw the WinLoss sparkline:

{% tabs %}

{% highlight c# %}

//Set Sparkline points to source property

this.sparkLine1.Source =new double[] { 30, -20, 80, 20, 40, -50, -30, 70,    -40, 50 };

//Set line type sparkline

this.sparkLine1.Type = SparkLine.SparkLineType.WinLoss;

{% endhighlight %}

{% highlight vb %}

'Set Sparkline points to source property

Me.sparkLine1.Source = New Double() {30, -20, 80, 20, 40, -50,-30, 70, -40, 50}

'Set line type sparkline

Me.sparkLine1.Type = SparkLine.SparkLineType. WinLoss

{% endhighlight %}

{% endtabs %}

![Winloss](SparklineTypes_images/Winloss.png)
