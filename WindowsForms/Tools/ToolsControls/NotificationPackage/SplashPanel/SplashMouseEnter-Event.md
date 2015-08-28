---
layout: post
title: SplashMouseEnter-Event
description: splashmouseenter event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashMouseEnter Event

When an application with SplashPanel is loaded, the splash screen will be displayed based on the alignment that is set. At this time, when the mouse is moved over the SplashPanel that is visible in the application, the SplashMouseEnter event will be raised. This event will not be triggered after the splash screen is closed.

The event handler receives an argument of type EventArgs containing data related to this event.

You can handle this event by including the below code.



{% highlight c# %}



// Handle the SplashMouseEnter event.

this.splashPanel1.SplashMouseEnter +=new EventHandler(splashPanel1_SplashMouseEnter);



private void splashPanel1_SplashMouseEnter(object sender, System.EventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "SplashMouseEnter", ((Control)sender).Name);

if (this.InvokeRequired)

{

this.Invoke(new SetStringDelegate(OutputText), new object[] { eventlogmessage });

}

else

{

OutputText(eventlogmessage);

}

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the SplashMouseEnter event.

AddHandler Me.splashPanel1.SplashMouseEnter, AddressOf splashPanel1_SplashMouseEnter



Private Sub splashPanel1_SplashMouseEnter(ByVal sender As Object, ByVal e As System.EventArgs) Handles splashPanel1.SplashMouseEnter

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "SplashMouseEnter", (CType(sender, Control)).Name)

If Me.InvokeRequired Then

Me.Invoke(New SetStringDelegate(AddressOf OutputText), New Object() { eventlogmessage })

Else

OutputText(eventlogmessage)

End If

End Sub

{% endhighlight %}

