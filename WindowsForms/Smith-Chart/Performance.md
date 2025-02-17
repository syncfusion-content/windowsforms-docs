---
layout: post
title: Performance in Windows Forms Smith Chart control | Syncfusion®
description: Learn about Performance support in Syncfusion® Windows Forms Smith Chart (SfSmithChart) control and more details.
platform: windowsforms
control: SfSmithChart
documentation: ug
---

# Performance in Windows Forms Smith Chart (SfSmithChart)

The performance of the SfSmithChart can be improved by using the following methods.

## Begin update and end update

Encapsulate your "data points" adding code within `BeginUpdate` and `EndUpdate` method which allows you to stop the continuous update of control and resume it finally.

<table>
<tr>
<th>
SfSmithChart performance Methods</th><th>
Description</th></tr>
<tr>
<td>
BeginUpdate</td><td>
Calling this method will stop the painting of the control.</td></tr>
<tr>
<td>
EndUpdate</td><td>
Resumes the painting of the control suspended by BeginUpdate method.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.sfSmithChart.BeginUpdate();

   //Add more points here
   LineSeries lineSeries = sfSmithChart.Series[0] as LineSeries;
   Random random = new Random();
   for (int i = 0; i < 100; i++)
   {
      double val = random.Next(0, 5);
      double val1 = random.Next(-5, 5);
      lineSeries.Points.Add(val, val1);
   }

this.sfSmithChart.EndUpdate();

{% endhighlight %}

{% highlight vb %}

Me.sfSmithChart.BeginUpdate()

    ' Add more points here
    Dim lineSeries As LineSeries = TryCast(sfSmithChart.Series(0), LineSeries)
    Dim random As Random = New Random()

    For i As Integer = 0 To 100 - 1
        Dim val As Double = random.[Next](0, 5)
        Dim val1 As Double = random.[Next](-5, 5)
        lineSeries.Points.Add(val, val1)
    Next

Me.sfSmithChart.EndUpdate()

{% endhighlight %}

{% endtabs %}

