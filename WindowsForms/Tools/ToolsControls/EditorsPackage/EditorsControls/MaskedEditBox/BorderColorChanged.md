---
layout: post
title: BorderColorChanged
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# BorderColorChanged

This event occurs when the BorderColor property is changed. The BorderColor property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %} 



private void maskedEditBox1_BorderColorChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderColorChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderColorChanged event is raised ")

End Sub

{% endhighlight %}
