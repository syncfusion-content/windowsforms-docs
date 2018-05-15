---
layout: post
title: How to change the days displayed in the calendar | WindowsForms | Syncfusion
description: how to change the days displayed in the calendar
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# How to change the days displayed in the calendar?

To change the days displayed in the calendar, you need to handle the PrepareViewStyleInfo event of the Grid control, which is embedded in the MonthCalendarAdv control and change its cell value as follows.


{% tabs %}

{% highlight C# %}


private void Form1_Load(object sender, EventArgs e)

{

    foreach (Control ctrl in this.monthCalendarAdv1.Controls)

    {

        grid = ctrl as GridControl;

        if (grid != null)

        {

            grid.PrepareViewStyleInfo += new GridPrepareViewStyleInfoEventHandler(grid_PrepareViewStyleInfo);



            break;

        }

    }

}



void grid_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)

{

    if (e.Style.Text == "1")

    {

        e.Style.Text = "a";

    }

}



{% endhighlight %}

{% highlight VB %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)

    For Each ctrl As Control In Me.monthCalendarAdv1.Controls

        grid = CType(IIf(TypeOf ctrl Is GridControl, ctrl, Nothing), GridControl)

        If Not grid Is Nothing Then

            grid.PrepareViewStyleInfo += New GridPrepareViewStyleInfoEventHandler(grid_PrepareViewStyleInfo)

            Exit For

        End If

    Next ctrl

End Sub



Private Sub grid_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)

    If e.Style.Text = "1" Then

        e.Style.Text = "a"

    End If

End Sub

{% endhighlight %}

{% endtabs %}
