---
layout: post
title: SplashPanel-Events
description: splashpanel events
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashPanel Events

The list of events and a detailed explanation about each of them is given in the following sections.

_Table_ _647_: _Events Table_

<table>
<tr>
<td>
SplashPanel Events</td><td>
Description</td></tr>
<tr>
<td>
BeforeSplash</td><td>
Specifies the function which will be triggered before the splash image is displayed.</td></tr>
<tr>
<td>
SplashDisplayed</td><td>
Specifies the function which will be triggered when splash image is displayed.</td></tr>
<tr>
<td>
SplashClosing</td><td>
Specifies the function which will be triggered when the splash image is closing.</td></tr>
<tr>
<td>
SplashClosed</td><td>
Specifies the function which will be triggered when the splash image is closed.</td></tr>
<tr>
<td>
SplashMouseEnter</td><td>
Specifies the function which will be triggered when mouse enters the splash image.</td></tr>
<tr>
<td>
SplashMouseLeave</td><td>
Specifies the function which will be triggered when the mouse leaves the splash image.</td></tr>
</table>


Follow the below steps and use the corresponding events to get the results.

1. Create a SplashPanel and a TextBox in a form.
2. Set the textbox properties and add the textbox to the form as given below.

{% highlight c# %}



// Declare the controls.

private Syncfusion.Windows.Forms.Tools.SplashPanel splashPanel1;

private System.Windows.Forms.TextBox textBox1;

private delegate void SetStringDelegate(string val);

private Point currentPt1;



// Initialize the controls.

this.splashPanel1 = new Syncfusion.Windows.Forms.Tools.SplashPanel();

this.textBox1 = new System.Windows.Forms.TextBox();



// Set the properties for the textbox.

this.textBox1.Dock = System.Windows.Forms.DockStyle.Fill;

this.textBox1.ForeColor = System.Drawing.Color.Black;

this.textBox1.Location = new System.Drawing.Point(0, 0);

this.textBox1.Multiline = true;

this.textBox1.Name = "textBox1";

this.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;

this.textBox1.Size = new System.Drawing.Size(248, 142);

this.textBox1.TabIndex = 4;

this.textBox1.Text = "";



// Add the textbox to the form.

this.Controls.Add(this.textBox1);



private void OutputText(string text)

{

textBox1.Text = textBox1.Text + text;

}

{% endhighlight %}

{% highlight vbnet %}



' Declare the controls.

Friend WithEvents splashPanel1 As Syncfusion.Windows.Forms.Tools.SplashPanel

Friend WithEvents textBox1 As System.Windows.Forms.TextBox

Private Delegate Sub SetStringDelegate(ByVal val As String) 'Any string value

Private currentPt1 As Point



' Initialize the controls.

Me.splashPanel1 = New Syncfusion.Windows.Forms.Tools.SplashPanel

Me.textBox1 = New System.Windows.Forms.TextBox



' Set the properties for the textbox.

Me.textBox1.Dock = System.Windows.Forms.DockStyle.Fill

Me.textBox1.ForeColor = System.Drawing.Color.Black

Me.textBox1.Location = New System.Drawing.Point(0, 0)

Me.textBox1.Multiline = True

Me.textBox1.Name = "textBox1"

Me.textBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical

Me.textBox1.Size = New System.Drawing.Size(272, 190)

Me.textBox1.TabIndex = 5

Me.textBox1.Text = ""



' Add the textbox to the form.

Me.Controls.Add(Me.textBox1)



Private Sub OutputText(ByVal text As String)

textBox1.Text = textBox1.Text & text

End Sub

{% endhighlight %}

