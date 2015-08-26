---
layout: post
title: Navigating between fields
description: navigating between fields
platform: windowsforms
control: Calendar
documentation: ug
---
# Navigating between fields

At run time, user can easily navigate between values in the text field like date, month, year, time using the TAB key. The below properties settings are necessary for tabbing between the fields.

_Table192: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TabStop</td><td>
Indicates whether the user can use the Tab key, to focus the DateTimePickerAdv control.</td></tr>
<tr>
<td>
TabForwarding</td><td>
Indicates if the control will moves its focus to the next field when the tab key is pressed.</td></tr>
<tr>
<td>
TabIndex</td><td>
Indicates the index in the TAB order that this control will occupy.</td></tr>
<tr>
<td>
TabLeave</td><td>
Indicates whether the focus should be moved away from the control, when there is no fields to tab through.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.TabForwarding = true;

this.dateTimePickerAdv1.TabIndex = 1;

this.dateTimePickerAdv1.TabLeave = true;

this.dateTimePickerAdv1.TabStop = true;




{% endhighlight   %}
{% highlight vbnet  %}


Me.dateTimePickerAdv1.TabForwarding = True

Me.dateTimePickerAdv1.TabIndex = 1

Me.dateTimePickerAdv1.TabLeave = True

Me.dateTimePickerAdv1.TabStop = True
{% endhighlight   %}
