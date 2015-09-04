---
layout: post
title: RadioButtonAdv -Settings
description: radiobuttonAdvsettings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# RadioButtonAdv Settings

This section discusses the various states of the RadioButtonAdv control and the method of associating values with the states.

It includes the below given topics.

## RadioButtonAdv States

The RadioButtonAdv can be displayed in two different states which have been described below.

Table 407 : Property Table

<table>
<tr>
<th>
RadioButtonAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Checked</td><td>
Gets / sets the check state of the RadioButton.</td></tr>
</table>


{% highlight c# %}

this.radioButtonAdv1.Checked = true;

{% endhighlight %}

{% highlight vbnet %}

Me.radioButtonAdv1.Checked = True

{% endhighlight %}

 ![](Overview_images/Overview_img632.jpeg)


{%seealso%}

RadioButtonAdv Values, Image Settings, RadioButtonAdv Events

{%endseealso%}

## RadioButtonAdv Values

This section discusses how values can be associated with the various check states.

Both integer and string values can be associated with the check states as follows.

Table 408 : Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
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
Gets / sets checked RadioButtonAdv in current container according to the TabIndex.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.CheckedInt = 3;

this.radioButtonAdv1.CheckedString = "RadioButtonAdv is Checked";

this.radioButtonAdv1.UncheckedInt = 3;

this.radioButtonAdv1.UncheckedString = "RadioButtonAdv is Unchecked";

this.radioButtonAdv1.IntValue = 5;

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.CheckedInt = 3

Me.radioButtonAdv1.CheckedString = "RadioButtonAdv is Checked"

Me.radioButtonAdv1.UncheckedInt = 3

Me.radioButtonAdv1.UncheckedString = "RadioButtonAdv is Unchecked"

Me.radioButtonAdv1.IntValue = 5

{% endhighlight %}

{%seealso%}

RadioButtonAdv States, Image Settings

{%endseealso%}