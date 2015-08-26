---
layout: post
title: Border3DStyleChanged
description: border3dstylechanged
platform: windowsforms
control: EditorsPackage
documentation: ug
---

#### Border3DStyleChanged

This event occurs when the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}



private void numericUpDownExt1_Border3DStyleChanged(object sender, EventArgs e)

{

Console.WriteLine(" Border3DStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub numericUpDownExt1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" Border3DStyleChanged event is raised ")

End Sub

{% endhighlight %}

