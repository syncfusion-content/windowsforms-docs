---
layout: post
title: Overview-Control  | Windows Forms | Syncfusion
description: overview control   
platform: windowsforms
control: Diagram
documentation: ug
---

# Overview Control 

Overview Control provides a perspective view of a diagram model, and allows users to dynamically pan and zoom the diagrams. The control features a view port window that can be moved and / or resized using the mouse to modify the diagrams' origin and magnification properties at run-time.

The important property of the Overview Control is the Diagram property. The following are the list of properties of the Overview control.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Background color of the component.</td></tr>
<tr>
<td>
AllowDrop</td><td>
Gets or sets a value indicating whether the control can accept the data that the user can drops on it.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Background image of the component.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Sets the border style for the component. It can be FixedSingle, Fixed3D or None.</td></tr>
<tr>
<td>
Controls</td><td>
Indicates the collection of control within the component.</td></tr>
<tr>
<td>
Enabled</td><td>
Indicates if the control is enabled.</td></tr>
<tr>
<td>
Dock</td><td>
Indicates which control borders are docked to its parent control and determine how the control is resized with its parent.</td></tr>
<tr>
<td>
Diagram</td><td>
Sets the corresponding diagram to the Overview Control.</td></tr>
<tr>
<td>
Visible</td><td>
Sets the visibility of the control.</td></tr>
</table>


The important events of Overview Control are listed below with their corresponding descriptions.


<table>
<tr>
<th>
Event</th><th>
Description</th></tr>
<tr>
<td>
Click</td><td>
Occurs when the component is clicked.</td></tr>
<tr>
<td>
DoubleClick</td><td>
Occurs when the component is double-clicked.</td></tr>
<tr>
<td>
ViewPortBoundsChanged </td><td>
Occurs when the controls viewport bounds is changed.</td></tr>
<tr>
<td>
ViewPortBoundsChanging Event</td><td>
Occurs when the controls viewport bounds is changing.</td></tr>
</table>


Programmatically, the properties can be set as follows.


{% tabs %}
{% highlight c# %}

	overviewControl1.BackColor = System.Drawing.SystemColors.AppWorkspace;
	overviewControl1.Diagram = diagram1;
	overviewControl1.Dock = System.Windows.Forms.DockStyle.Bottom;
	overviewControl1.ForeColor = System.Drawing.Color.Red;
	overviewControl1.Location = new System.Drawing.Point(0, 377);
	overviewControl1.Name = "overviewControl";
	overviewControl1.Size = new System.Drawing.Size(200, 100);
	overviewControl1.TabIndex = 1;

{% endhighlight %}
{% highlight vbnet %}

	overviewControl1.BackColor = System.Drawing.SystemColors.AppWorkspace
	overviewControl1.Diagram = diagram1
	overviewControl1.Dock = System.Windows.Forms.DockStyle.Bottom
	overviewControl1.ForeColor = System.Drawing.Color.Red
	overviewControl1.Location = New System.Drawing.Point(0, 377)
	overviewControl1.Name = "overviewControl"
	overviewControl1.Size = New System.Drawing.Size(200, 100)
	overviewControl1.TabIndex = 1

{% endhighlight %}
{% endtabs %}

![](Supported-Controls_images/Supported-Controls_img2.jpeg)