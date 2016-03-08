---
layout: post
title: CheckBoxAdv-Settings | WindowsForms | Syncfusion
description: checkboxadv settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# CheckBoxAdv Settings

This section discusses the various states of the CheckBoxAdv control and the method of associating values with the states.

It includes the below given topics.

## CheckBoxAdv States

The CheckBoxAdv can be displayed in three different states which have been described below.


<table>
<tr>
<th>
CheckBoxAdv Property</th><th>
Description</th></tr>
<tr>
<td>
CheckState</td><td>
Gets / sets the check state of the CheckBox.It includes the below given options.{{ 'Unchecked,' | markdownify }}{{ 'Checked and' | markdownify }}{{ 'Indeterminate.' | markdownify }}</td></tr>
<tr>
<td>
Checked</td><td>
Gets / sets the checked state of the CheckBox.</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.CheckState = System.Windows.Forms.CheckState.Checked;

this.checkBoxAdv1.Checked = true;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.CheckState = System.Windows.Forms.CheckState.Checked

Me.checkBoxAdv1.Checked = True

{% endhighlight %}

![](Overview_images/Overview_img610.jpeg)



![](Overview_images/Overview_img611.jpeg)


{% seealso %}

[CheckBoxAdv States](http://docs.syncfusion.com/windowsforms/checkboxadv/checkboxadv-settings#checkboxadv-states),  [Image Settings](http://docs.syncfusion.com/windowsforms/checkboxadv/image-settings)

{% endseealso %}


## CheckBoxAdv Values

This section discusses how values can be associated with the various check states.

Both integer and string values can be associated with the check states as follows.


<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
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
IndeterminateInt</td><td>
Specifies the integer value when indeterminate.</td></tr>
<tr>
<td>
IndeterminateString</td><td>
Specifies the string value when indeterminate.</td></tr>
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
StringValue</td><td>
Gets or sets the string value.</td></tr>
<tr>
<td>
BoolValue</td><td>
Gets / sets a value indicating the check state. This property can be set to use bool values for data binding. Refer Frequently Asked Questions section. </td></tr>
<tr>
<td>
IntValue</td><td>
Gets / sets the int value. Refer Frequently Asked Questions section.</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.CheckedInt = 3;

this.checkBoxAdv1.CheckedString = "CheckBoxAdv is Checked";

this.checkBoxAdv1.IndeterminateInt = 5;

this.checkBoxAdv1.IndeterminateString = "CheckBoxAdv is Indeterminate";

this.checkBoxAdv1.UncheckedInt = 3;

this.checkBoxAdv1.UncheckedString = "CheckBoxAdv is Unchecked";

this.checkBoxAdv1.StringValue = "String";

this.checkBoxAdv1.IntValue = 5;

this.checkBoxAdv1.BoolValue = true;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.CheckedInt = 3

Me.checkBoxAdv1.CheckedString = "CheckBoxAdv is Checked"

Me.checkBoxAdv1.IndeterminateInt = 5

Me.checkBoxAdv1.IndeterminateString = "CheckBoxAdv is Indeterminate"

Me.checkBoxAdv1.UncheckedInt = 3

Me.checkBoxAdv1.UncheckedString = "CheckBoxAdv is Unchecked"

Me.checkBoxAdv1.StringValue = "String"

Me.checkBoxAdv1.IntValue = 5

Me.checkBoxAdv1.BoolValue = True

{% endhighlight %}

{% seealso %}

[CheckBoxAdv States](http://docs.syncfusion.com/windowsforms/checkboxadv/checkboxadv-settings#checkboxadv-states),  [Image Settings](http://docs.syncfusion.com/windowsforms/checkboxadv/image-settings)

{% endseealso %}

