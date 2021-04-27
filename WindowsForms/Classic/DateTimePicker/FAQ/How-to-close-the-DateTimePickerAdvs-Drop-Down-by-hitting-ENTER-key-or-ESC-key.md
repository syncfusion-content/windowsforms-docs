---
layout: post
title: Close the DateTimePickerAdv | WindowsForms | Syncfusion
description: Learn about How to Close the DateTimePickerAdvs Drop Down by Hitting ENTER key or ESC key support in Syncfusion Windows Forms DateTimePickerAdv control and more.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# ESC key in Windows Forms DateTimePickerAdv(Classic)

If you want to close the DateTimePickerAdv's drop-down, when you hit the ENTER key or the ESC key, you need to set [DateTimePickerAdv.WantEnterKey](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_WantEnterKey) property to _false_.

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.Calendar.WantEnterKey = false;

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.Calendar.WantEnterKey = False

{% endhighlight %}

{% endtabs %}
