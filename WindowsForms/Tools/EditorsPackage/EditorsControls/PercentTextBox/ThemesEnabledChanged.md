---
layout: post
title: ThemesEnabledChanged
description: ThemesEnabledChanged
platform: windowsforms
control: Editors Package
documentation: ug
---


# ThemesEnabledChanged 

This event occurs when the ThemesEnabled property is changed. The ThemesEnabled property specifies whether or not to use XP Themes when the BorderStyle property is set to 'Fixed3D'.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}



private void percentTextBox1_ThemesEnabledChanged(object sender, EventArgs e)

{

Console.WriteLine(" ThemesEnabledChanged event is raised ");

}
{% endhighlight %}


{% highlight vbnet %}



Private Sub percentTextBox1_ThemesEnabledChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ThemesEnabledChanged event is raised ")

End Sub
{% endhighlight %}