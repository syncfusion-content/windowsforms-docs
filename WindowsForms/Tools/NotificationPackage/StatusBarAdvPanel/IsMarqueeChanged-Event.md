---
layout: post
title: IsMarqueeChanged-Event
description: ismarqueechanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# IsMarqueeChanged Event

This event is fired when the value of the IsMarquee property is changed. The IsMarquee property indicates whether the control uses the marquee style for the displayed text.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Set the IsMarquee property to 'True' to activate the animation.

this.statusBarAdvPanel1.IsMarquee = true;



// Handle the IsMarqueeChanged event.

this.statusBarAdvPanel1.IsMarqueeChanged+=new EventHandler(statusBarAdvPanel1_IsMarqueeChanged);



// Start the animation.

private void Form1_Load(object sender, EventArgs e)

{

this.statusBarAdvPanel1.StartAnimation();

}



// Stop the animation.

private void button1_Click_1(object sender, EventArgs e)

{

this.statusBarAdvPanel1.StopAnimation();

}



private void statusBarAdvPanel1_IsMarqueeChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.WriteLine(" IsMarqueeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Set the IsMarquee property to 'True' to activate the animation. 

Me.statusBarAdvPanel1.IsMarquee = True 



' Handle the IsMarqueeChanged event. 

AddHandler Me.statusBarAdvPanel1.IsMarqueeChanged, AddressOf statusBarAdvPanel1_IsMarqueeChanged 

' Start the animation. 

Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)

    Me.statusBarAdvPanel1.StartAnimation()

End Sub



' Stop the animation. 

Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)

    Me.statusBarAdvPanel1.StopAnimation()

End Sub



Private Sub statusBarAdvPanel1_IsMarqueeChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at runtime, when this event is fired. 

    Console.WriteLine(" IsMarqueeChanged event is raised ")

End Sub

{% endhighlight %}

