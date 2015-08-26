---
layout: post
title: ThemeChanged
description: themechanged
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# ThemeChanged

This event occurs when the ThemesEnabled property is changed. The ThemesEnabled property indicates whether XP Themes (visual styles) should be used for this control when available.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}



private void numericUpDownExt1_ThemeChanged(object sender, EventArgs e)

{

Console.WriteLine(" ThemeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub numericUpDownExt1_ThemeChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ThemeChanged event is raised ")

End Sub


{% endhighlight %}
