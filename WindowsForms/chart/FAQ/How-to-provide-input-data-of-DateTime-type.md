---
layout: post
title: How-to-provide-input-data-of-DateTime-type | Windows Forms | Syncfusion®
description: how to provide input data of datetime type
platform: windowsforms
control: chart
documentation: ug
---

# How to provide input data of DateTime type

The Start Date and Time can be expressed using an instance of the DateTime class. If you want to add days, the AddDays() method can be used along with that instance. AddHours() and AddMinutes() can be used for adding any number of hours and minutes.

{% tabs %}

{% highlight c# %}

DateTime start = new DateTime(2006, 11, 1);

ChartSeries series = new ChartSeries(“”);

series.Points.Add(start.AddDays(7), 363);

series.Points.Add(start.AddDays(14), 417);

{% endhighlight %}

{% highlight vb %}

Dim start As DateTime = New DateTime(2006, 11, 1)

ChartSeries series = Me.chartControl1.Model.NewSeries(“”)

series.Points.Add(start.AddDays(7), 363)

series.Points.Add(start.AddDays(14), 417)

{% endhighlight %}

{% endtabs %}
