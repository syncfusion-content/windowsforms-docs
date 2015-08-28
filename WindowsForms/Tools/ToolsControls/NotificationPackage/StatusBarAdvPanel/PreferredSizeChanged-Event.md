---
layout: post
title: PreferredSizeChanged-Event
description: preferredsizechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# PreferredSizeChanged Event

This event is fired when the value of the PreferredSize property is changed. The PreferredSize property specifies the preferred size of the panel in the FlowLayout.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the preferred size for the StatusBarAdvPanel control.

this.statusBarAdvPanel1.PreferredSize = new System.Drawing.Size(200, 100);

// Set the AutoScrollMinSize property to provide scrollbars for the StatusBarAdvPanel control.

this.statusBarAdvPanel1.AutoScrollMinSize = new System.Drawing.Size(50, 100);

// Set the AutoScroll property to 'True' to activate the scrollbars.

this.statusBarAdvPanel1.AutoScroll = true;



// Handle the PreferredSizeChanged event.

this.statusBarAdvPanel1.PreferredSizeChanged += new EventHandler(statusBarAdvPanel1_PreferredSizeChanged);



private void statusBarAdvPanel1_PreferredSizeChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" PreferredSizeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the preferred size for the StatusBarAdvPanel control. 

Me.statusBarAdvPanel1.PreferredSize = New System.Drawing.Size(200, 100) 

' Set the AutoScrollMinSize property to provide scrollbars for the StatusBarAdvPanel control. 

Me.statusBarAdvPanel1.AutoScrollMinSize = New System.Drawing.Size(50, 100) 

' Set the AutoScroll property to 'True' to activate the scrollbars. 

Me.statusBarAdvPanel1.AutoScroll = True 



' Handle the PreferredSizeChanged event. 

AddHandler Me.statusBarAdvPanel1.PreferredSizeChanged, AddressOf statusBarAdvPanel1_PreferredSizeChanged 



Private Sub statusBarAdvPanel1_PreferredSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at runtime, when this event is fired. 

    Console.WriteLine(" PreferredSizeChanged event is raised ")

End Sub

{% endhighlight %}

