---
layout: post
title: ReadOnlyChanged
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# ReadOnlyChanged

This event occurs when the ReadOnly property is changed. The ReadOnly property controls whether the text in the edit control 
can be changed or not.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}  

private void maskedEditBox1_ReadOnlyChanged(object sender, EventArgs e)

{

Console.WriteLine(" ReadOnlyChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ReadOnlyChanged event is raised ")

End Sub

{% endhighlight %}