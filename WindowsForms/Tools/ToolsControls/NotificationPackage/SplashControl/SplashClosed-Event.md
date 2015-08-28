---
layout: post
title: SplashClosed-Event
description: splashclosed event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashClosed Event

The SplashClosed event is raised after the splash screen is closed. For example in the below code, the event logs are recorded and displayed in a textbox.

{% highlight c# %}

// Handle the SplashClosed event.

this.splashControl1.SplashClosed += new System.EventHandler(this.splashControl1_SplashClosed);



private void splashControl1_SplashClosed(object sender, System.EventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "SplashClosed", sender.ToString());

textBox1.Text = textBox1.Text + eventlogmessage;

}

{% endhighlight %}

{% highlight vbnet %}

' Handle the SplashClosed event.

AddHandler Me.splashControl1.SplashClosed, AddressOf Me.splashControl1_SplashClosed



Private Sub splashControl1_SplashClosed(ByVal sender As Object, ByVal e As System.EventArgs) Handles splashControl1.SplashClosed

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "SplashClosed", sender.ToString())

textBox1.Text = textBox1.Text & eventlogmessage

End Sub

{% endhighlight %}

![](Overview_images/Overview_img43.jpeg) 


SplashClosedevent is raised when the SplashClosedNotify() method is called. This method is an implementation of the ISplashWrapperFormListener for receiving notification from the SplashWrapperForm when the splash window is closed.

{% highlight c# %}

this.splashPanel1.SplashClosedNotify();

{% endhighlight %}

{% highlight vbnet %}

Me.splashPanel1.SplashClosedNotify()

{% endhighlight %}

