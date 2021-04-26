---
layout: post
title: Is it Possible to Restrict the Dates that are Selected in Windows Forms xptoolbar control | Syncfusion
description: Learn about Is it Possible to Restrict the Dates that are Selected support in Syncfusion Windows Forms MonthCalendarAdv(Classic) control and more details.
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# Is it Possible to Restrict the Dates that are Selected in Windows Forms MonthCalendarAdv(Classic)

Yes, we can restrict the dates that are selected. If you want to allow the user to select only Mondays on the calendar, you can set Clickable property to `false` for other days except Monday using [DateCellQueryInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html) event handler.


{% tabs %}

{% highlight C# %}

void monthCalendarAdv1_DateCellQueryInfo(object sender, DateCellQueryInfoEventArgs e)

{

    // if not Monday 

    if (e.ColIndex != 2)

    {

        e.Style.Clickable = false;

        e.Style.Enabled = false;

    }

}




{% endhighlight %}

{% highlight VB %}


Private Sub monthCalendarAdv1_DateCellQueryInfo(ByVal sender As Object, ByVal e As DateCellQueryInfoEventArgs)

    ' if not Monday 

    If e.ColIndex <> 2 Then

        e.Style.Clickable = False

        e.Style.Enabled = False

    End If

End Sub

{% endhighlight %}

{% endtabs %}

