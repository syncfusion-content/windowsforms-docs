---
layout: post
title: AnimationDelayChanged-Event
description: animationdelaychanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# AnimationDelayChanged Event

This event is fired when the value of the AnimationDelay property is changed. The AnimationDelay property indicates the delay for the animation of marquee style.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Specify the delay of animation for the marquee style.

this.statusBarAdvPanel1.AnimationDelay = 50;

// Set the IsMarquee property to 'True' to activate the animation.

this.statusBarAdvPanel1.IsMarquee = true;



// Handle the  AnimationDelayChanged event.

this.statusBarAdvPanel1.AnimationDelayChanged+=new EventHandler(statusBarAdvPanel1_AnimationDelayChanged);

}



// Start the animation.

private void Form1_Load_1(object sender, EventArgs e)

{

this.statusBarAdvPanel1.StartAnimation();

}



// Stop the animation.

private void button1_Click_1(object sender, EventArgs e)

{

this.statusBarAdvPanel1.StopAnimation();

}



private void statusBarAdvPanel1_AnimationDelayChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" AnimationDelayChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Specify the delay of animation for the marquee style. 

Me.statusBarAdvPanel1.AnimationDelay = 50 

' Set the IsMarquee property to 'True' to activate the animation. 

Me.statusBarAdvPanel1.IsMarquee = True 

' Handle the AnimationDelayChanged event. 

AddHandler Me.statusBarAdvPanel1.AnimationDelayChanged, AddressOf statusBarAdvPanel1_AnimationDelayChanged 



' Start the animation. 

Private Sub Form1_Load_1(ByVal sender As Object, ByVal e As EventArgs)

    Me.statusBarAdvPanel1.StartAnimation()

End Sub



' Stop the animation. 

Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)

    Me.statusBarAdvPanel1.StopAnimation()

End Sub



Private Sub statusBarAdvPanel1_AnimationDelayChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at run-time, when this event is fired. 

    Console.WriteLine(" AnimationDelayChanged event is raised ")

End Sub

{% endhighlight %}

