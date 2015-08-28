---
layout: post
title: SplashDisplayed-Event
description: splashdisplayed event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashDisplayed Event

The SplashDisplayed event is raised after the splash screen is displayed on the screen. For example in the below code, the event logs are recorded and displayed in a textbox.

{% highlight c# %}

// Handle the SplashDisplayed event.

this.splashControl1.SplashDisplayed += new System.EventHandler(this.splashControl1_SplashDisplayed);



private void splashControl1_SplashDisplayed(object sender, System.EventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "SplashDisplayed", sender.ToString());

textBox1.Text = textBox1.Text + eventlogmessage;

}

{% endhighlight %}

{% highlight vbnet %}

' Handle the SplashDisplayed event.

AddHandler Me.splashControl1.SplashDisplayed, AddressOf Me.splashControl1_SplashDisplayed



Private Sub splashControl1_SplashDisplayed(ByVal sender As Object, ByVal e As System.EventArgs) Handles splashControl1.SplashDisplayed

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "SplashDisplayed", sender.ToString())

textBox1.Text = textBox1.Text & eventlogmessage

End Sub

{% endhighlight %}

![](Overview_images/Overview_img41.jpeg) 


SplashDisplayedevent will be triggered when the SplashDisplayedNotify() method is called. This method is an implementation of the ISplashWrapperFormListener for receiving notification from the SplashWrapperForm when the splash window is displayed.

{% highlight c# %}

this.splashPanel1.SplashDisplayedNotify();

{% endhighlight %}

{% highlight vbnet %}

Me.splashPanel1.SplashDisplayedNotify()

{% endhighlight %}

