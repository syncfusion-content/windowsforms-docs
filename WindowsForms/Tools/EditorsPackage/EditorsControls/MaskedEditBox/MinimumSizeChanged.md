---
layout: post
title: MinimumSizeChanged
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# MinimumSizeChanged

This event occurs when the MinimumSize property is changed. The MinimumSize property gets / sets the minimum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %} 


private void maskedEditBox1_MinimumSizeChanged(object sender, EventArgs e)

{

Console.WriteLine(" MinimumSizeChanged event is raised ");

}

 {% endhighlight %}




{% highlight vbnet %} 

Private Sub maskedEditBox1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MinimumSizeChanged event is raised ")

End Sub
 
 {% endhighlight %}