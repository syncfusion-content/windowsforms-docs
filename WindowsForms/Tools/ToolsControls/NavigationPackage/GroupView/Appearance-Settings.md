---
layout: post
title: Appearance Settings
description: Concepts and Features
platform: windowsforms
control: GroupView
documentation: ug
---
# Appearance Settings

The following table describes the properties that enhance the appearance of the GroupView control.

_Table_ _559__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
FlatLook</td><td>
Specifies whether the control is displayed with a flat look.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Gets / sets the border style for the GroupView control. It includes the following options:* None,* FixedSingle and* Fixed3D.</td></tr>
</table>



{% highlight C# %}  

this.groupView1.FlatLook = true;

this.groupView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.FlatLook = True

Me.groupView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

{% endhighlight %}

The border of the GroupView Items can be changed by drawing the border without the 3-dimensional edge which can be attained by setting the FlatLook propertyto 'True'. 

![](Overview_images/Overview_img56.jpeg) 
Figure 964: Flat Look of GroupView Control Illustrated

We can specify the border style for the GroupView control using the BorderStyle property.

 ![](Overview_images/Overview_img57.jpeg) 
Figure 965: GroupView with BorderStyle set to "FixedSingle"
