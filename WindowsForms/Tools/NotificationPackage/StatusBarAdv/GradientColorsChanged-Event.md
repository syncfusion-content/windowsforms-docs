---
layout: post
title: GradientColorsChanged-Event
description: gradientcolorschanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# GradientColorsChanged Event

This event is fired when the value of the GradientColors property is changed. The GradientColors property specifies the color array that defines the gradient.

The event handler receives an argument of type EventArgs.

{% highlight c# %}

private void statusBarAdv1_GradientColorsChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientColorsChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub statusBarAdv1_GradientColorsChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" GradientColorsChanged event is raised ")

End Sub

{% endhighlight %}

