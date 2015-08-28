---
layout: post
title: SplashClosed-Event
description: splashclosed event
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashClosed Event

At run time, after the splash screen is displayed for a specified time and when it is closed, the SplashClosed event will be triggered.

### Event Data

The event handler receives an argument of type SplashClosedEventArgs containing data related to this event. The following SplashClosedEventArgs member provides information specific to this event.

_Table_ _650_: _Member Table_

<table>
<tr>
<td>
Member</td><td>
Description</td></tr>
<tr>
<td>
SplashCloseType</td><td>
Returns the value which indicates the way in which the splash was closed.</td></tr>
</table>


You can handle this event by including the below code.

{% highlight c# %}



// Handle the SplashClosed event.

this.splashPanel1.SplashClosed +=new SplashClosedEventHandler(splashPanel1_SplashClosed);



private void splashPanel1_SplashClosed(object sender, Syncfusion.Windows.Forms.Tools.SplashClosedEventArgs args)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "SplashClosing", ((Control)sender).Name);

if (this.InvokeRequired)

{

this.Invoke(new SetStringDelegate(OutputText), new object[] { eventlogmessage });

}

else

{

OutputText(eventlogmessage);

}

if(this.Controls.Contains(this.splashPanel1) == false)

this.Controls.Add(this.splashPanel1);

this.splashPanel1.Location = this.currentPt1;

this.splashPanel1.Visible = true;



// Returns the SplashCloseType value indicating the way in which the splash was closed.

args.SplashCloseType.ToString();

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the SplashClosed event.

AddHandler Me.splashPanel1.SplashClosed, AddressOf splashPanel1_SplashClosed



Private Sub splashPanel1_SplashClosed(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.SplashClosedEventArgs) Handles splashPanel1.SplashClosed

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "SplashClosing", (CType(sender, Control)).Name)

If Me.InvokeRequired Then

Me.Invoke(New SetStringDelegate(AddressOf OutputText), New Object() { eventlogmessage })

Else

OutputText(eventlogmessage)

End If

If Me.Controls.Contains(Me.splashPanel1) = False Then

Me.Controls.Add(Me.splashPanel1)

End If

Me.splashPanel1.Location = Me.currentPt1

Me.splashPanel1.Visible = True



' Returns the SplashCloseType value indicating the way in which the splash was closed.

args.SplashCloseType.ToString()

End Sub

{% endhighlight %}

SplashClosedevent is raised when the SplashFormClosedNotify() method is called. This method is an implementation of the ISplashWrapperFormListener for receiving notification from the SplashWrapperForm when the splash window is closed.

{% highlight c# %}



this.splashPanel1.SplashFormClosedNotify();

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.SplashFormClosedNotify()

{% endhighlight %}

