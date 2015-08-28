---
layout: post
title: BeforeSplash-Event
description: beforsplash event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BeforeSplash Event

You can handle the BeforeSplash event to process any code just before the splash screen is displayed. For example in the below code, the event logs are recorded and displayed in the textbox.

### Event Data

The event handler receives an argument of type CancelEventArgs containing data related to this event. The following CancelEventArgs member provides information specific to this event.

_Table_ _626_: _Member Table_

<table>
<tr>
<td>
Member</td><td>
Description</td></tr>
<tr>
<td>
Cancel</td><td>
Indicates whether the event should be canceled.</td></tr>
</table>

{% highlight c# %}

// Handle the BeforeSplash event.

this.splashControl1.BeforeSplash += new System.ComponentModel.CancelEventHandler(this.splashControl1_BeforeSplash);



private void splashControl1_BeforeSplash(object sender, System.ComponentModel.CancelEventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "BeforeSplash", sender.ToString());

textBox1.Text = textBox1.Text + eventlogmessage;



// To cancel this event, give the below code.

e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}

' Handle the BeforeSplash event.

AddHandler Me.splashControl1.BeforeSplash, AddressOf Me.splashControl1_BeforeSplash



Private Sub splashControl1_BeforeSplash(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles splashControl1.BeforeSplash

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "BeforeSplash", sender.ToString())

textBox1.Text = textBox1.Text & eventlogmessage



' To cancel this event, give the below code.

e.Cancel = True

End Sub

{% endhighlight %}

![](Overview_images/Overview_img40.jpeg) 


BeforeSplashevent is raised when the BeforeSplashNotify() method is called. This method is an implementation of the ISplashWrapperFormListener for receiving notification from the SplashWrapperForm before the splash window is displayed.

{% highlight c# %}

this.splashPanel1.BeforeSplashNotify();

{% endhighlight %}

{% highlight vbnet %}

Me.splashPanel1.BeforeSplashNotify()

{% endhighlight %}

