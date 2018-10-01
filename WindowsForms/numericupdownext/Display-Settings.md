---
layout: post
title: Display-Settings | WindowsForms | Syncfusion
description: display settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Display Settings

This section discusses the Display settings of the NumericUpDownExt control.

The NumericUpDownExt provides the following properties to set the display characteristics associated with the integer value.

<table>
<tr>
<th>
NumericUpDownExt Properties</th><th>
Description</th></tr>
<tr>
<td>
DecimalPlaces</td><td>
Gets / sets the number of decimal places to display in the spin box (also known as an up-down control).</td></tr>
<tr>
<td>
ThousandsSeparator</td><td>
Gets / sets a value indicating whether a thousand separator is displayed in the spin box (also known as an up-down control) when appropriate.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.DecimalPlaces = 2;
this.numericUpDownExt1.ThousandsSeparator = true;

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.DecimalPlaces = 2
Me.numericUpDownExt1.ThousandsSeparator = True

{% endhighlight %}
{% endtabs %}

![](Display-Settings_images/Display-Settings_img1.png)
