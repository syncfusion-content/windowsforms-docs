---
layout: post
title: Close the DateTimePickerAdv | WindowsForms | Syncfusion
description: how to close the datetimepickeradv's drop-down by hitting enter key or esc key
platform: WindowsForms
control: Calendar 
documentation: ug
---
# How to close the DateTimePickerAdv's Drop-Down by hitting ENTER key or ESC key

If you want to close the DateTimePickerAdv's drop-down, when you hit the ENTER key or the ESC key, you need to set [DateTimePickerAdv.WantEnterKey](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~WantEnterKey.html) property to _false_.

{% highlight C#  %}
this.dateTimePickerAdv1.Calendar.WantEnterKey = false;
{% endhighlight  %}
{% highlight VB  %}
Me.dateTimePickerAdv1.Calendar.WantEnterKey = False
{% endhighlight   %}