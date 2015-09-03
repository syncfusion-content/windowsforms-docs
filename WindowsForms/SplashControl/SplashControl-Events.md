---
layout: post
title: SplashControl-Events
description: splashcontrol events
platform: windowsforms
control: SplashControl
documentation: ug
---

# SplashControl Events

The list of events and a detailed explanation about each of them is given in the following sections.

Table 625: Events Table

<table>
<tr>
<td>
SplashControl Events</td><td>
Description</td></tr>
<tr>
<td>
BeforeSplash</td><td>
This event is raised before the splash screen is displayed.</td></tr>
<tr>
<td>
SplashDisplayed</td><td>
This event is raised after the splash screen is displayed.</td></tr>
<tr>
<td>
SplashClosing</td><td>
This event is raised before the SplashControl is closed.</td></tr>
<tr>
<td>
SplashClosed</td><td>
This event is raised when the splash window is closed.</td></tr>
</table>


Follow the below steps and use the corresponding events to get the results.

1. Create a SplashControl and a TextBox in a form.
2. Set the textbox properties and add the textbox to the form as given below.

{% highlight c# %}

// Declare the controls.

private Syncfusion.Windows.Forms.Tools.SplashControl splashControl1;

private System.Windows.Forms.TextBox textBox1;



// Initialize the controls.

this.splashControl1 = new Syncfusion.Windows.Forms.Tools.SplashControl();

this.textBox1 = new System.Windows.Forms.TextBox();



// Set the properties for the textbox.

this.textBox1.Dock = System.Windows.Forms.DockStyle.Fill;

this.textBox1.ForeColor = System.Drawing.Color.FromArgb(((System.Byte)(103)), ((System.Byte)(110)), ((System.Byte)(154)));

this.textBox1.Location = new System.Drawing.Point(0, 0);

this.textBox1.Multiline = true;

this.textBox1.Name = "textBox1";

this.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;

this.textBox1.Size = new System.Drawing.Size(248, 206);

this.textBox1.TabIndex = 4;

this.textBox1.Text = "";



// Add the textbox to the form.

this.Controls.Add(Me.textBox1)

{% endhighlight %}

{% highlight vbnet %}

' Declare the textbox.

Friend WithEvents textBox1 As System.Windows.Forms.TextBox



' Initialize the textbox.

Me.textBox1 = New System.Windows.Forms.TextBox



' Set the properties for the textbox.

Me.textBox1.Dock = System.Windows.Forms.DockStyle.Fill

Me.textBox1.ForeColor = System.Drawing.Color.FromArgb(CType(103, Byte), CType(110, Byte), CType(154, Byte))

Me.textBox1.Location = New System.Drawing.Point(0, 0)

Me.textBox1.Multiline = True

Me.textBox1.Name = "textBox1"

Me.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical

Me.textBox1.Size = New System.Drawing.Size(292, 266)

Me.textBox1.TabIndex = 5

Me.textBox1.Text = ""



' Add the textbox to the form.

Me.Controls.Add(this.textBox1);

{% endhighlight %}

## BeforeSplash Event

You can handle the BeforeSplash event to process any code just before the splash screen is displayed. For example in the below code, the event logs are recorded and displayed in the textbox.

### Event Data

The event handler receives an argument of type CancelEventArgs containing data related to this event. The following CancelEventArgs member provides information specific to this event.

Table 626: Member Table

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

## SplashDisplayed Event

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

## SplashClosing Event

The SplashClosing event is raised when the splash screen is closing. For example in the below code, the event logs are recorded and displayed in a textbox.

{% highlight c# %}

// Handle the SplashClosing event.

this.splashControl1.SplashClosing +=new CancelEventHandler(splashControl1_SplashClosing);



private void splashControl1_SplashClosing(object sender, System.ComponentModel.CancelEventArgs e)

{

string eventlogmessage = String.Format("Event: {0} Object: {1}\r\n", "SplashClosing", sender.ToString());

textBox1.Text = textBox1.Text + eventlogmessage;

}

{% endhighlight %}

{% highlight vbnet %}

' Handle the SplashClosing event.

AddHandler Me.splashControl1.SplashClosing, AddressOf splashControl1_SplashClosing



Private Sub splashControl1_SplashClosing(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles splashControl1.SplashClosing

Dim eventlogmessage As String = String.Format("Event: {0} Object: {1}" & Constants.vbCrLf, "SplashClosing", sender.ToString())

textBox1.Text = textBox1.Text & eventlogmessage

End Sub

{% endhighlight %}

![](Overview_images/Overview_img42.jpeg) 


SplashClosingevent is raised when the SplashClosingNotify() method is called. This method is an implementation of the ISplashWrapperFormListener for receiving notification from the SplashWrapperForm when the splash window is closing.

{% highlight c# %}

this.splashControl1.SplashClosingNotify();

{% endhighlight %}

{% highlight vbnet %}

Me.splashControl1.SplashClosingNotify()

{% endhighlight %}

## SplashClosed Event

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