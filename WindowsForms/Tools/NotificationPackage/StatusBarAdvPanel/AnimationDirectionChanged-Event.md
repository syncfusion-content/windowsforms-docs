---
layout: post
title: AnimationDirectionChanged-Event
description: animationdirectionchanged event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# AnimationDirectionChanged Event

This event is fired when the value of the AnimationDirection property is changed. The AnimationDirection property specifies the direction of animation for the marquee style.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



// Specify the direction of animation for the marquee style.

this.statusBarAdvPanel1.AnimationDirection = Syncfusion.Windows.Forms.Tools.MarqueeDirection.Right;

// Set the IsMarquee property to 'True' to activate the animation.

this.statusBarAdvPanel1.IsMarquee = true;



// Handle the AnimationDirectionChanged event.   

this.statusBarAdvPanel1.AnimationDirectionChanged+=new EventHandler(statusBarAdvPanel1_AnimationDirectionChanged);



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



private void statusBarAdvPanel1_AnimationDirectionChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when this event is fired.

Console.WriteLine(" AnimationDirectionChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Specify the direction of animation for the marquee style. 

Me.statusBarAdvPanel1.AnimationDirection = Syncfusion.Windows.Forms.Tools.MarqueeDirection.Right 

' Set the IsMarquee property to 'True' to activate the animation. 

Me.statusBarAdvPanel1.IsMarquee = True 



' Handle the AnimationDirectionChanged event. 

AddHandler Me.statusBarAdvPanel1.AnimationDirectionChanged, AddressOf statusBarAdvPanel1_AnimationDirectionChanged 



' Start the animation. 

Private Sub Form1_Load_1(ByVal sender As Object, ByVal e As EventArgs)

    Me.statusBarAdvPanel1.StartAnimation()

End Sub



' Stop the animation. 

Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)

    Me.statusBarAdvPanel1.StopAnimation()

End Sub



Private Sub statusBarAdvPanel1_AnimationDirectionChanged(ByVal sender As Object, ByVal e As EventArgs)

    ' Below line will be displayed in the output window at run-time, when this event is fired. 

    Console.WriteLine(" AnimationDirectionChanged event is raised ")

End Sub

{% endhighlight %}

