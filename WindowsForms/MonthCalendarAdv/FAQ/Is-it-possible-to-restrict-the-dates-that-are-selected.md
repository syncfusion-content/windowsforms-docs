---
layout: post
title: Is it possible to restrict the dates that are selected?
description: is it possible to restrict the dates that are selected?
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# Is it possible to restrict the dates that are selected?

Yes, we can restrict the dates that are selected. If you want to allow the user to select only Mondays on the calendar, you can set Clickable property to false for other days except Monday using DateCellQueryInfo event handler.

The following code snippet can be used for this.




{% highlight c#  %}
void monthCalendarAdv1_DateCellQueryInfo(object sender, DateCellQueryInfoEventArgs e)

{

    // if not Monday 

    if (e.ColIndex != 2)

    {

        e.Style.Clickable = false;

        e.Style.Enabled = false;

    }

}




{% endhighlight  %}
{% highlight vbnet %}


Private Sub monthCalendarAdv1_DateCellQueryInfo(ByVal sender As Object, ByVal e As DateCellQueryInfoEventArgs)

    ' if not Monday 

    If e.ColIndex <> 2 Then

        e.Style.Clickable = False

        e.Style.Enabled = False

    End If

End Sub
{% endhighlight   %}
