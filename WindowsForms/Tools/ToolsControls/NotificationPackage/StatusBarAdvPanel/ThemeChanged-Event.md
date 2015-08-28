---
layout: post
title: ThemeChanged-Event
description: themechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# ThemeChanged Event

This event is fired when the value of the ThemesEnabled property is changed. The ThemesEnabled property indicates if the background color will be set to 'Transparent' ( Indicated Settings: BorderSides = Right, BorderStyle = Fixed3D, Border3DStyle = Etched).

The event handler receives an argument of type EventArgs.

{% highlight c# %}



private void statusBarAdvPanel1_ThemeChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" ThemeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub statusBarAdvPanel1_ThemeChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" ThemeChanged event is raised ")

End Sub

{% endhighlight %}

