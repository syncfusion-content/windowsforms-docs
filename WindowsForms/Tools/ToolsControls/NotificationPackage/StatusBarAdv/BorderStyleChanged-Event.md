---
layout: post
title: BorderStyleChanged-Event
description: borderstylechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BorderStyleChanged Event

This event is fired when the value of the BorderStyle property is changed. The BorderStyle property indicates whether the panel should have a border.

The event handler receives an argument of type EventArgs.

{% highlight c# %}


// 2D or 3D border can be set for the StatusBarAdv control using the BorderStyle property. The StatusBarAdv control can also be displayed borderless using this property.

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;



// Handle the BorderStyleChanged event.

this.statusBarAdv1.BorderStyleChanged+=new EventHandler(statusBarAdv1_BorderStyleChanged);



private void statusBarAdv1_BorderStyleChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" BorderStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' 2D or 3D border can be set for the StatusBarAdv control using the BorderStyle property. The StatusBarAdv control can also be displayed borderless using this property. 

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 



' Handle the BorderStyleChanged event. 

AddHandler Me.statusBarAdv1.BorderStyleChanged, AddressOf statusBarAdv1_BorderStyleChanged 



Private Sub statusBarAdv1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at runtime, when this event is fired. 

    Console.WriteLine(" BorderStyleChanged event is raised ")

End Sub

{% endhighlight %}

