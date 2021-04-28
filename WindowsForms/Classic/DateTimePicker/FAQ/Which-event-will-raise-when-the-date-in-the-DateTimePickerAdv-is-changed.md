---
layout: post
title: DateTimePickeradv is Changed in Windows Forms xptoolbar | Syncfusion
description: Learn about Which Event will Raise When the Date in Syncfusion Windows Forms DateTimePickerAdv control and more.
platform: WindowsForms
control: Calendar
documentation: ug
---
# DateTimePicker adv is Changed in Windows Forms

Calendar [DateChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html) event is raised when a date in the DateTimePickerAdv is changed using the keys, or using the mouse.

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.Calendar.DateChanged += new EventHandler(Calendar_DateChanged);
void Calendar_DateChanged(object sender, EventArgs e)
{
   Console.WriteLine("Date Changed");
}

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.Calendar.DateChanged += New EventHandler(Calendar_DateChanged)
Private Sub Calendar_DateChanged(ByVal sender As Object, ByVal e As EventArgs)
   Console.WriteLine("Date Changed")
End Sub

{% endhighlight %}

{% endtabs %}
