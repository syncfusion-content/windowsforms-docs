---
layout: post
title: Calendar Value | WindowsForms | Syncfusion
description: calendar value
platform: WindowsForms
control: Calendar
documentation: ug
---
# Calendar Value

In the Popup calendar, today's date will be selected by default, at run time. This default date can be changed using Value property. You can also specify the range of values / dates that can be selected at run time. 

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
MaxValue</td><td>
Specifies the maximum value that can be picked from the DateTimePickerAdv.</td></tr>
<tr>
<td>
MinValue</td><td>
Specifies the minimum value that can be picked from the DateTimePickerAdv.</td></tr>
</table>



{% highlight c#  %}


this.dateTimePickerAdv1.Value = new System.DateTime(2008, 2, 23, 16, 15, 46, 0);

this.dateTimePickerAdv1.MaxValue = new System.DateTime(2008, 12, 31, 23, 59, 0, 0);

this.dateTimePickerAdv1.MinValue = new System.DateTime(2007, 1, 1, 0, 0, 0, 0);

{% endhighlight  %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.Value = New System.DateTime(2008, 2, 23, 16, 15, 46, 0)

Me.dateTimePickerAdv1.MaxValue = New System.DateTime(2008, 12, 31, 23, 59, 0, 0)

Me.dateTimePickerAdv1.MinValue = New System.DateTime(2007, 1, 1, 0, 0, 0, 0)
{% endhighlight   %}

{% seealso %}

[Customizing the Calendar](http://help.syncfusion.com/windowsforms/calendar/customizing-the-calendar)

{% endseealso %}