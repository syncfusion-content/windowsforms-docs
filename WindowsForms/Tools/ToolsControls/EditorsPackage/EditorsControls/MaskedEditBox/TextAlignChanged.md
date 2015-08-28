---
layout: post
title: TextAlignChanged
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# TextAlignChanged

This event occurs when the TextAlign property is changed. The TextAlign property indicates how the text should be aligned for 
edit controls.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}  

private void maskedEditBox1_TextAlignChanged(object sender, EventArgs e)

{

Console.WriteLine(" TextAlignChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_TextAlignChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" TextAlignChanged event is raised ")

End Sub

{% endhighlight %}