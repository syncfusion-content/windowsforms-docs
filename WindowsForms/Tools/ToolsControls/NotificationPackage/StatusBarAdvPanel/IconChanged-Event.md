---
layout: post
title: IconChanged-Event
description: iconchanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# IconChanged Event

This event is fired when the value of the Icon property is changed. The Icon property indicates the icon of the panel.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



private void statusBarAdvPanel1_IconChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" IconChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub statusBarAdvPanel1_IconChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired. 

Console.WriteLine(" IconChanged event is raised ")

End Sub

{% endhighlight %}

