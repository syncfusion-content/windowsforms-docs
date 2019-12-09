---
layout: post
title: Behavior-Settings | WindowsForms | Syncfusion
description: behavior settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Behavior Settings

The behavior settings of the NumericUpDownExt control are discussed below.

## Intercept arrow keys

The arrow keys can be used to select values using the below given property.

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
InterceptArrowKeys</td><td>
Gets / sets a value indicating whether the user can use the UP and DOWN ARROW keys to select values.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.InterceptArrowKeys = true;                     

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.InterceptArrowKeys = True

{% endhighlight %}
{% endtabs %}

### MaxLength

The maximum length of the text can be set using the property given below.

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
MaxLength</td><td>
Gets / sets the maximum length of the text that can be entered into the editable portion of the control. The default value is set to '32767'.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.MaxLength = 32800;               

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.MaxLength = 32800

{% endhighlight %}
{% endtabs %}

## ReadOnly

The ReadOnly mode can be enabled for the NumericUpDownExt control using the below given property.

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
ReadOnly</td><td>
Gets / sets a value indicating whether the text can be changed by the use of the up or down buttons only.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.ReadOnly = true;

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.ReadOnly = True

{% endhighlight %}
{% endtabs %}
