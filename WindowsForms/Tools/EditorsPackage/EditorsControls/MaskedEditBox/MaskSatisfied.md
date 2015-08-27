---
layout: post
title: MaskSatisfied
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# MaskSatisfied

This event is raised when the required fields in a mask have been satisfied after new text has been entered / the text changes.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}  



private void maskedEditBox1_MaskSatisfied(object sender, EventArgs e)

{

Console.WriteLine(" MaskSatisfied event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_MaskSatisfied(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MaskSatisfied event is raised ")

End Sub


{% endhighlight %}
