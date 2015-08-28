---
layout: post
title: ValueChanged
description: valuechanged
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# ValueChanged

This event occurs when the Value property is changed. The Value property gets / sets the value assigned to the spin box (also known as an up-down control).

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}



private void numericUpDownExt1_ValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" ValueChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub numericUpDownExt1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ValueChanged event is raised ")

End Sub

{% endhighlight %}

