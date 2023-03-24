---
layout: post
title: How-to-find-value-maximum-value-and-minimum-value- | Windows Forms | Syncfusion
description: how to find value, maximum value and minimum value of the data points
platform: windowsforms
control: chart
documentation: ug
---

# How to find value, maximum value and minimum value of the data points

EssentialChart has FindValue, FindMaximumValue and FindMinimumValue methods that can return the corresponding chart data point values depending upon the parameter(s) passed to these methods.

All these methods are overloaded. 

Find Value


_Properties_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
FindValue(Double)</td><td>
It should return the chart point in the collection that has a specified Y-value. The search always should start at the beginning of the collection. </td></tr>
<tr>
<td>
FindValue(Double, String)<br></td><td>
It should return the chart point in the collection with the specified X or Y-value.</td></tr>
<tr>
<td>
FindValue(Double, String,index ) <br></td><td>
It should return the chart point with the specified X or Y-value, and should start the search at the specified index. </td></tr>
<tr>
<td>
FindValue(Double, String, Index, Index )<br></td><td>
It should return the chart point with the specified X or Y-value, and should start and end the search at the specified index.</td></tr>
</table>

{% tabs %}

{% highlight c# %}
textBoxVale.Text = "40";
dbl = Int64.Parse(textBoxValue.Text);

ChartPoint dp1 = this.chartControl1.Series[0].Summary.FindValue();

ChartPoint dp2 = this.chartControl1.Series[0].Summary.FindValue(dbl);

ChartPoint dp3 = this.chartControl1.Series[0].Summary.FindValue(50, 'Y');

int index = 2;

ChartPoint dp4 = this.chartControl1.Series[0].Summary.FindValue(22, 'Y', ref index);


{% endhighlight %}

{% highlight vb %}

textBoxValue = "40";

dbl = Int64.Parse(textBoxValue.Text)

Dim dp1 As ChartPoint = Me.chartControl1.Series(0).Summary.FindValue()

Dim dp2 As ChartPoint = Me.chartControl1.Series(0).Summary.FindValue(dbl)

Dim dp3 As ChartPoint = Me.chartControl1.Series(0).Summary.FindValue(dbl, 'Y');

Dim index As Int16 = 3

Dim dp4 As ChartPoint = Me.chartControl1.Series(0).Summary.FindValue(dbl, 'Y', ref index);

{% endhighlight %}

{% endtabs %}


#### FindMaximumValue

_Properties_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
FindMaxValue()<br></td><td>
It should return the chart point in the collection with a maximum first Y-value. The search always should start at the beginning of the collection. </td></tr>
<tr>
<td>
FindMaxValue(String)<br></td><td>
It should return the chart point in the collection with the maximum specified value. The search always should start at the beginning of the collection. </td></tr>
<tr>
<td>
FindMaxValue(String, index)<br></td><td>
It should return the chart point with a maximum value. The search should start at the specified index.</td></tr>
<tr>
<td>
FindMaxValue(String, Index , Index)<br></td><td>
It should return the chart point with a maximum value. The search should start and end at the specified index. </td></tr>
</table>

{% tabs %}

{% highlight c# %}

String str = textBoxString.Text;

startIndex = Int32.Parse(textBoxIndex.Text);

endIndex = Int32.Parse(textBox1.Text);

ChartPoint dp1 = this.chartControl1.Series[0].Summary.FindMaxValue();

ChartPoint dp2 = this.chartControl1.Series[0].Summary.FindMaxValue("Y");

int endIndex1 = 4;

ChartPoint dp3 = this.chartControl1.Series[0].Summary.FindMaxValue("Y", ref endIndex1);

ChartPoint dp4 = this.chartControl1.Series[0].Summary.FindMaxValue("Y", ref startIndex, endIndex);

{% endhighlight %}

{% highlight vb %}

Dim str As String = textBoxString.Text

startIndex = Int32.Parse(textBoxIndex.Text)

endIndex = Int32.Parse(textBox1.Text)

Dim dp1 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMaxValue();

Dim dp2 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMaxValue("Y");

int endIndex1 = 4;

Dim dp3 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMaxValue("Y", ref endIndex1);

Dim dp4 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMaxValue("Y", ref startIndex, endIndex)

{% endhighlight %}

{% endtabs %}

#### FindMinimumValue

_Properties_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
FindMinValue()<br></td><td>
It should return the first chart point in the collection that has a first Y-value that is equal to the series' minimum Y1 value. The search always should start at the beginning of the collection. </td></tr>
<tr>
<td>
FindMinValue(String)<br></td><td>
It should return the first chart point in the collection that has an X or Y-value that is equal to the series' minimum value. The search always should start at the beginning of the collection.</td></tr>
<tr>
<td>
FindMinValue(String, index)<br></td><td>
It should return the first Chart point with a minimum value. The search should start at the specified index.</td></tr>
<tr>
<td>
FindMinValue(String, Index , Index)<br></td><td>
It should return the first Chart point with a minimum value. The search should start and end at the specified index.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

String str = textBoxString.Text;

startIndex = Int32.Parse(textBoxIndex.Text);

endIndex = Int32.Parse(textBox1.Text);

ChartPoint dp1 = this.chartControl1.Series[0].Summary.FindMinValue();

ChartPoint dp2 = this.chartControl1.Series[0].Summary.FindMinValue("Y");

int endIndex1 = 4;

ChartPoint dp3 = this.chartControl1.Series[0].Summary.FindMinValue("Y", ref endIndex1);

ChartPoint dp4 = this.chartControl1.Series[0].Summary.FindMinValue("Y", ref startIndex, endIndex);

{% endhighlight %}

{% highlight vb %}

Dim str As String = textBoxString.Text

startIndex = Int32.Parse(textBoxIndex.Text)

endIndex = Int32.Parse(textBox1.Text)

Dim dp1 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMinValue();

Dim dp2 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMinValue("Y");

int endIndex1 = 4;

Dim dp3 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMinValue("Y", ref endIndex1);

Dim dp4 As ChartPoint = Me.chartControl1.Series[0].Summary.FindMinValue("Y", ref startIndex, endIndex)

{% endhighlight %}

{% endtabs %}

