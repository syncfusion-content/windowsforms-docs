---
layout: post
title: BeforeSplash-Event
description: beforesplash event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# BeforeSplash Event

When the application is loaded and before the splash screen is displayed, the BeforeSplash event will be triggered.

### Event Data

The event handler receives an argument of type CancelEventArgs containing data related to this event. The following CancelEventArgs member provides information specific to this event.

_Table_ _648_: _Member Table_

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


You can handle this event by including the below code.

{% highlight c# %}



// Handle the BeforeSplash event.

this.splashPanel1.BeforeSplash +=new CancelEventHandler(splashPanel1_BeforeSplash);



private void splashPanel1_BeforeSplash(object sender, System.ComponentModel.CancelEventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "BeforeSplash", ((Control)sender).Name);

textBox1.Text = textBox1.Text + eventlogmessage;



// To cancel this event, give the below code.

args.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the BeforeSplash event.

AddHandler Me.splashPanel1.BeforeSplash, AddressOf splashPanel1_BeforeSplash



Private Sub splashPanel1_BeforeSplash(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles splashPanel1.BeforeSplash

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "BeforeSplash", (CType(sender, Control)).Name)

If Me.InvokeRequired Then

Me.Invoke(New SetStringDelegate(AddressOf OutputText), New Object() { eventlogmessage })

Else

OutputText(eventlogmessage)

End If



' To cancel this event, give the below code.

args.Cancel = True

End Sub

{% endhighlight %}

{% highlight c# %}

// Handle the SplashDisplayed event.

this.splashPanel1.SplashDisplayed +=new EventHandler(splashPanel1_SplashDisplayed);



private void splashPanel1_SplashDisplayed(object sender, System.EventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "SplashDisplayed", ((Control)sender).Name);

if (this.InvokeRequired)

{

this.Invoke(new SetStringDelegate(OutputText), new object[] { eventlogmessage });

}

else

{

textBox1.Text = textBox1.Text + eventlogmessage;

}

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the SplashDisplayed event.

AddHandler Me.splashPanel1.SplashDisplayed, AddressOf splashPanel1_SplashDisplayed



Private Sub splashPanel1_SplashDisplayed(ByVal sender As Object, ByVal e As System.EventArgs) Handles splashPanel1.SplashDisplayed



Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "SplashDisplayed", (CType(sender, Control)).Name)

If Me.InvokeRequired Then

Me.Invoke(New SetStringDelegate(AddressOf OutputText), New Object() { eventlogmessage })

Else

OutputText(eventlogmessage)

End If

End Sub

{% endhighlight %}

SplashClosedevent is raised when the SplashFormDisplayedNotify() method is called. This method is an implementation of the ISplashWrapperFormListener for receiving notification from the SplashWrapperForm when the splash window is displayed.

{% highlight c# %}



this.splashPanel1.SplashFormDisplayedNotify();

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.SplashFormDisplayedNotify()

{% endhighlight %}

