---
layout: post
title: Close DateTimePickerAdv drop-down via ENTER or ESC | Syncfusion
description: Learn how to close the drop-down of Syncfusion Windows Forms DateTimePickerAdv (Classic) using ENTER or ESC key via WantEnterKey property and more.
platform: WindowsForms
control: DateTimePickerAdv
documentation: ug
---
# Close DateTimePickerAdv drop-down via ENTER or ESC in Windows Forms

This page explains How to close the DateTimePickerAdv's Drop-Down by hitting ENTER key or ESC key and more details.

## How to close the DateTimePickerAdv's Drop-Down by hitting ENTER key or ESC key

If you want to close the DateTimePickerAdv's drop-down, when you hit the ENTER key or the ESC key, you need to set [DateTimePickerAdv.WantEnterKey](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_WantEnterKey) property to _false_.

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.Calendar.WantEnterKey = false;

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.Calendar.WantEnterKey = False

{% endhighlight %}

{% endtabs %}
