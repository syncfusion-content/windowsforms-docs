---
layout: post
title: Border3DStyleChanged
description: Border3DStyleChanged
platform: windowsforms
control: Editors Package
documentation: ug
---



# Border3DStyleChanged

This event occurs when the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}


private void percentTextBox1_Border3DStyleChanged(object sender, EventArgs e)

{

Console.WriteLine(" Border3DStyleChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" Border3DStyleChanged event is raised ")

End Sub
{% endhighlight %}