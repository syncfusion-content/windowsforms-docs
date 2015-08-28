---
layout: post
title: CharacterCasingChanged
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# CharacterCasingChanged

This event occurs when the CharacterCasing property is changed. The CharacterCasing property gets / sets the case of the characters as they are typed.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}  

private void maskedEditBox1_CharacterCasingChanged(object sender, EventArgs e)

{

Console.WriteLine(" CharacterCasingChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_CharacterCasingChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" CharacterCasingChanged event is raised ")

End Sub

{% endhighlight %}