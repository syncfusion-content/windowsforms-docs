---
layout: post
title: Close the DateTimePickerAdv | WindowsForms | Syncfusion
description: Learn here about how to close the Windows Forms datetimepickeradv drop-down by hitting enter key or esc key.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# How to close the DateTimePickerAdv's Drop-Down by hitting ENTER key or ESC key

If you want to close the DateTimePickerAdv's drop-down, when you hit the ENTER key or the ESC key, you need to set [DateTimePickerAdv.WantEnterKey](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_WantEnterKey) property to _false_.

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.Calendar.WantEnterKey = false;

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.Calendar.WantEnterKey = False

{% endhighlight %}

{% endtabs %}
