---
layout: post
title: How to change the date in a DateTimePickerAdv control, when it is ReadOnly?
description: how to change the date in a datetimepickeradv control, when it is readonly?
platform: windowsforms
control: Calendar 
documentation: ug
---
# How to change the date in a DateTimePickerAdv control, when it is ReadOnly?

We can make the control read only by setting ReadOnly property to true. DateTimePickerAdv control have an option to change the date, even in ReadOnly mode using Arrow keys. Set ReadOnlyValueChange property to true to effect this setting.




{% highlight c#  %}
this.dateTimePickerAdv1.ReadOnly = true;

this.dateTimePickerAdv1.ReadOnlyValueChange = true;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv1.ReadOnly = True

Me.dateTimePickerAdv1.ReadOnlyValueChange = True

{% endhighlight  %}

![](FAQ_images/Overview_img224.jpeg)


