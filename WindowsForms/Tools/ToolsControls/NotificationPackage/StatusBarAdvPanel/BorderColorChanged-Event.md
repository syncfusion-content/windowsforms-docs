---
layout: post
title: BorderColorChanged-Event
description: bordercolorchanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BorderColorChanged Event

This event is fired when the value of the BorderColor property is changed. The BorderColor property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the border color for the StatusBarAdvPanel control using the BorderColor property.

this.statusBarAdvPanel1.BorderColor = System.Drawing.Color.DeepPink;

// Set the BorderStyle property to 'FixedSingle' to view the 2D border color. 

this.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;



// Handle the BorderColorChanged event.

this.statusBarAdvPanel1.BorderColorChanged+=new EventHandler(statusBarAdvPanel1_BorderColorChanged);



private void statusBarAdvPanel1_BorderColorChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" BorderColorChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the border color for the StatusBarAdvPanel control using the BorderColor property. 

Me.statusBarAdvPanel1.BorderColor = System.Drawing.Color.DeepPink 

' Set the BorderStyle property to 'FixedSingle' to view the 2D border color. 

Me.statusBarAdvPanel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 



' Handle the BorderColorChanged event. 

AddHandler Me.statusBarAdvPanel1.BorderColorChanged, AddressOf statusBarAdvPanel1_BorderColorChanged 



Private Sub statusBarAdvPanel1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)

' Below line will be displayed in the output window at runtime, when this event is fired. 

Console.WriteLine(" BorderColorChanged event is raised ")

End Sub

{% endhighlight %}

