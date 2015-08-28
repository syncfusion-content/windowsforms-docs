---
layout: post
title: BorderSidesChanged
description:  MaskedEditBox Events
platform: windowsforms
control: HubTile
documentation: ug
---
# BorderSidesChanged

This event occurs when the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}  



private void maskedEditBox1_BorderSidesChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderSidesChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderSidesChanged event is raised ")

End Sub

{% endhighlight %}