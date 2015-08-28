---
layout: post
title: VerticalGradientChanged-Event
description: verticalgradientchanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# VerticalGradientChanged Event

This event is fired when the value of the VerticalGradient property is changed. The VerticalGradient property indicates whether the gradient is vertical.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_VerticalGradientChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" VerticalGradientChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_VerticalGradientChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" VerticalGradientChanged event is raised ")

End Sub

{% endhighlight %}