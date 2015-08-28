---
layout: post
title: MinimumSizeChanged Event
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# MinimumSizeChanged Event

This event occurs when the MinimumSize property is changed. The MinimumSize property specifies the minimum size with which  
the XPTaskBar is to be created.

The event handler receives an argument of type EventArgs. The event properties associated with the EventArgs are as follows.

{% highlight C# %}  

// Specify the minimum size with which the XPTaskBar control is to be created.

this.xpTaskBar1.MinimumSize = new System.Drawing.Size(5, 5);



// Handle the MinimumSizeChanged event.

this.xpTaskBar1.MinimumSizeChanged+=new EventHandler(xpTaskBar1_MinimumSizeChanged);



private void xpTaskBar1_MinimumSizeChanged(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" MinimumSizeChanged Event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

' Specify the minimum size with which the XPTaskBar control is to be created. 

Me.xpTaskBar1.MinimumSize = New System.Drawing.Size(5, 5) 



' Handle the MinimumSizeChanged event. 

AddHandler Me.xpTaskBar1.MinimumSizeChanged, AddressOf xpTaskBar1_MinimumSizeChanged 



Private Sub xpTaskBar1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" MinimumSizeChanged Event is raised ")

End Sub

{% endhighlight %}
