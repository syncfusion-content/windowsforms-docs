---
layout: post
title: Which event will raise when the date in the DateTimePickerAdv is changed?
description: which event will raise when the date in the datetimepickeradv is changed?
platform: WindowsForms
control: Calendar
documentation: ug
---
# Which event will raise when the date in the DateTimePickerAdv is changed?

CalendarDateChanged event is raised when a date in the DateTimePickerAdv is changed using the keys, or using the mouse.



{% highlight c#  %}

this.dateTimePickerAdv1.Calendar.DateChanged += new EventHandler(Calendar_DateChanged);



void Calendar_DateChanged(object sender, EventArgs e)

{

Console.WriteLine("Date Changed");

}





{% endhighlight   %}
{% highlight vbnet  %}

Me.dateTimePickerAdv1.Calendar.DateChanged += New EventHandler(Calendar_DateChanged)



Private Sub Calendar_DateChanged(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine("Date Changed")

End Sub
{% endhighlight  %}