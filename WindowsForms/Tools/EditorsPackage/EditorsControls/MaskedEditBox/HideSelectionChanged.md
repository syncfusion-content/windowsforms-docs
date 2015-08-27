---
layout: post
title: HideSelectionChanged
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# HideSelectionChanged

This event occurs when the HideSelection property is changed. The HideSelection property indicates that the selection should be 
hidden when the edit control loses focus.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}  

private void maskedEditBox1_HideSelectionChanged(object sender, EventArgs e)

{

Console.WriteLine(" HideSelectionChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_HideSelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" HideSelectionChanged event is raised ")

End Sub

{% endhighlight %}