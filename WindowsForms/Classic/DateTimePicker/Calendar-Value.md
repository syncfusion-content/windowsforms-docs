---
layout: post
title: Calendar Value | WindowsForms | Syncfusion
description: Learn here about how to show the default date, maximum and minimum calendar value in Windows Forms DateTimePickerAdv
platform: WindowsForms
control: DateTimePickerAdv
documentation: ug
---
# Calendar Value

In the Popup calendar, today's date will be selected by default, at run time. This default date can be changed using [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~Value.html) property. You can also specify the range of values / dates that can be selected at run time using the [MaxValue] and [MinValue]() properties of DateTimePickerAdv. 

{% tabs %}

{% highlight c# %}

this.dateTimePickerAdv1.Value = new System.DateTime(2008, 2, 23, 16, 15, 46, 0);
this.dateTimePickerAdv1.MaxValue = new System.DateTime(2008, 12, 31, 23, 59, 0, 0);
this.dateTimePickerAdv1.MinValue = new System.DateTime(2007, 1, 1, 0, 0, 0, 0);

{% endhighlight %}

{% highlight vb %}

Me.dateTimePickerAdv1.Value = New System.DateTime(2008, 2, 23, 16, 15, 46, 0)
Me.dateTimePickerAdv1.MaxValue = New System.DateTime(2008, 12, 31, 23, 59, 0, 0)
Me.dateTimePickerAdv1.MinValue = New System.DateTime(2007, 1, 1, 0, 0, 0, 0)

{% endhighlight %}

{% endtabs %}

{% seealso %}

[Customizing the Calendar](http://help.syncfusion.com/windowsforms/calendar/customizing-the-calendar)

{% endseealso %}