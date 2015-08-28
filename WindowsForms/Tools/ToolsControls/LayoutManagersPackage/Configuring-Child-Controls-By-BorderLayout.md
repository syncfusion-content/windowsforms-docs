---
layout: post
title: Configuring Child Controls
description: configuring child controls
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Configuring Child Controls

The Child controls can be aligned to various positions (North, South, East, West and Center) using the property given below.

_Table432: Property Table_

<table>
<tr>
<th>
Child Control Property</th><th>
Description</th></tr>
<tr>
<td>
Position on borderLayout</td><td>
Gets / sets the border position for a Child component.</td></tr>
</table>

> Note: This property is added as an extended property in the properties window of the Child control added to the BorderLayout.



{% highlight c# %}

this.borderLayout1.SetPosition(this.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North);







Me.borderLayout1.SetPosition(Me.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North)


{% endhighlight  %}

![](Overview_images/Overview_img19.jpeg) 



![](Overview_images/Overview_img20.jpeg) 



> Note: BorderLayout allows only one control to be aligned along a particular layout position, unlike the .NET framework support.

See Also

Configuring BorderLayout
