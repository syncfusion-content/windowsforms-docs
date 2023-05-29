---
layout: post
title: CheckBoxAdv Settings in Windows Forms CheckBox control | Syncfusion
description: Learn about CheckBoxAdv Settings support in Syncfusion Windows Forms CheckBox (CheckBoxAdv) control and more details.
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# CheckBoxAdv Settings in Windows Forms CheckBox (CheckBoxAdv)

This section discusses the various states of the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control and the method of associating values with the states.

## CheckBoxAdv States

The [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) states can be changed by using [CheckState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_CheckState) or [Checked](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_Checked) property.

<table>
<tr>
<th>
CheckBoxAdv Property</th><th>
Description</th></tr>
<tr>
<td>
CheckState</td><td>
Gets or sets the check state of the CheckBox. It includes Unchecked,Checked and Indeterminate options. </td></tr>
<tr>
<td>
Checked</td><td>
Gets or sets the checked state of the CheckBox.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.CheckState = System.Windows.Forms.CheckState.Checked;
this.checkBoxAdv1.Checked = true;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.CheckState = System.Windows.Forms.CheckState.Checked
Me.checkBoxAdv1.Checked = True

{% endhighlight %}
{% endtabs %}

![WindowsForms CheckBox various states](overview_images/windowsforms-checkbox-states.jpeg)

{% seealso %}

[Image Settings of CheckBoxAdv](https://help.syncfusion.com/windowsforms/checkbox/image-settings)

{% endseealso %}


## CheckBoxAdv Values

You can customize the values associated with the various check states of [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control. Both integer and string values can be associated with the check states.

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
Gets or sets a value indicating the check state. This property can be set to use bool values for data binding. Refer {{'[Frequently Asked Questions section](https://help.syncfusion.com/windowsforms/checkbox/faq/how-to-databind-a-checkboxadv-to-an-sql-database-if-the-corresponding-datatable-field-is-boolean)' | markdownify }}. </td></tr>
<tr>
<td>
IntValue</td><td>
Gets or sets the int value. Refer {{'[Frequently Asked Questions section](https://help.syncfusion.com/windowsforms/checkbox/faq/how-to-databind-a-checkboxadv-to-an-sql-database-if-the-corresponding-datatable-field-is-a-bit-field)' | markdownify }}</td></tr>
</table>

{% tabs %}
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

{% highlight vb %}

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
{% endtabs %}



