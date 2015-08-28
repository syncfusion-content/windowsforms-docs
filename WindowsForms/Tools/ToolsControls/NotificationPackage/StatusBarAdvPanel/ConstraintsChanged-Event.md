---
layout: post
title: ConstraintsChanged-Event
description: constraintschanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# ConstraintsChanged Event

This event is fired when changes are made in the list of constraints.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



private void statusBarAdvPanel1_ConstraintsChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" ConstraintsChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub statusBarAdvPanel1_ConstraintsChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired. 

Console.WriteLine(" ConstraintsChanged event is raised ")

End Sub

{% endhighlight %}

