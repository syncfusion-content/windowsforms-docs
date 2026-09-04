---
layout: post
title: Settings in Windows Forms Radio Button | Syncfusion®
description: Settings in Windows Forms Radio Button enable configuring checked states, values, and control behavior for flexible user interactions.
platform: WindowsForms
control: Radio Button
documentation: ug
---

# Settings in Windows Forms Radio Button

This section discusses the various states of the Radio Button control and the method of associating values with the states.


## Radio Button states

The Radio Button can be displayed in two different states which have been described below.


<table>
<tr>
<th>
Radio Button Property</th><th>
Description</th></tr>
<tr>
<td>
Checked</td><td>
Gets / sets the check state of the RadioButton.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.radioButtonAdv1.Checked = true;

{% endhighlight %}

{% highlight vb %}

Me.radioButtonAdv1.Checked = True

{% endhighlight %}
{% endtabs %}

 ![Windows forms Radio Button shows various states](Overview_images/RadioButtonAdv_states.jpeg)


## Radio Button values

This section discusses how values can be associated with the various check states.

Both integer and string values can be associated with the check states as follows.


<table>
<tr>
<th>
Radio Button Properties</th><th>
Description</th></tr>
<tr>
<td>
CheckedInt</td><td>
Specifies the integer value when checked. </td></tr>
<tr>
<td>
CheckedString</td><td>
Specifies the string value when checked.</td></tr>
<tr>
<td>
UncheckedInt</td><td>
Specifies the integer value when Unchecked.</td></tr>
<tr>
<td>
UncheckedString</td><td>
Specifies the string value when Unchecked.</td></tr>
<tr>
<td>
IntValue</td><td>
Gets / sets checked Radio Button in current container according to the TabIndex.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.radioButtonAdv1.CheckedInt = 3;
this.radioButtonAdv1.CheckedString = "RadioButtonAdv is Checked";
this.radioButtonAdv1.UncheckedInt = 3;
this.radioButtonAdv1.UncheckedString = "RadioButtonAdv is Unchecked";
this.radioButtonAdv1.IntValue = 5;

{% endhighlight %}

{% highlight vb %}

Me.radioButtonAdv1.CheckedInt = 3
Me.radioButtonAdv1.CheckedString = "RadioButtonAdv is Checked"
Me.radioButtonAdv1.UncheckedInt = 3
Me.radioButtonAdv1.UncheckedString = "RadioButtonAdv is Unchecked"
Me.radioButtonAdv1.IntValue = 5

{% endhighlight %}
{% endtabs %}
