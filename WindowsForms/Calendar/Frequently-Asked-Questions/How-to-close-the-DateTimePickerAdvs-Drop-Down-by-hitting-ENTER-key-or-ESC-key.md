---
layout: post
title: How to close the DateTimePickerAdv's Drop-Down by hitting ENTER key or ESC key
description: how to close the datetimepickeradv's drop-down by hitting enter key or esc key
platform: windowsforms
control: Calendar 
documentation: ug
---
# How to close the DateTimePickerAdv's Drop-Down by hitting ENTER key or ESC key

If you want to close the DateTimePickerAdv's drop-down, when you hit the ENTER key or the ESC key, you need to set DateTimePickerAdv.WantEnterKey property to _false_.

Table199: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
WantEnterKey</td><td>
True – Drop-down is not closed when hitting the Enter key or Esc keyFalse – Drop-down will get closed when hitting the Enter key or Esc key</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.Calendar.WantEnterKey = false;


{% endhighlight  %}
{% highlight vbnet  %}




Me.dateTimePickerAdv1.Calendar.WantEnterKey = False
{% endhighlight   %}