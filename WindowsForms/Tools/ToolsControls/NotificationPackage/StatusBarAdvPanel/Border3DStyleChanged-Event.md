---
layout: post
title: Border3DStyleChanged-Event
description: border3dstylechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Border3DStyleChanged Event

This event is fired when the value of the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the BorderStyle property to 'Fixed3D' to view the 3D border style.

this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

// Set the 3D border style for the StatusBarAdvPanel control using the Border3DStyle property.

this.statusBarAdvPanel1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;



// Handle the Border3DStyleChanged event.

this.statusBarAdvPanel1.Border3DStyleChanged+=new EventHandler(statusBarAdvPanel1_Border3DStyleChanged);



private void statusBarAdvPanel1_Border3DStyleChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" Border3DStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the BorderStyle property to 'Fixed3D' to view the 3D border style. 

Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

' Set the 3D border style for the StatusBarAdvPanel control using the Border3DStyle property. 

Me.statusBarAdvPanel1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump 



' Handle the Border3DStyleChanged event. 

AddHandler Me.statusBarAdvPanel1.Border3DStyleChanged, AddressOf statusBarAdvPanel1_Border3DStyleChanged 



Private Sub statusBarAdvPanel1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at runtime, when this event is fired. 

    Console.WriteLine(" Border3DStyleChanged event is raised ")

End Sub

{% endhighlight %}



