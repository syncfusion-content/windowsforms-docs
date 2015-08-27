---
layout: post
title: GradientBackgroundChanged-Event
description: gradientbackgroundchanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# GradientBackgroundChanged Event

This event is fired when the value of the GradientBackground property is changed. The GradientBackground property indicates whether the background will be drawn with the gradient.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_GradientBackgroundChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientBackgroundChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_GradientBackgroundChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientBackgroundChanged event is raised ")

End Sub

{% endhighlight %}

