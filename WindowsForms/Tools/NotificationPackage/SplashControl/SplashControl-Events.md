---
layout: post
title: SplashControl-Events
description: splashcontrol events
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashControl Events

The list of events and a detailed explanation about each of them is given in the following sections.

_Table_ _625_: _Events Table_

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

