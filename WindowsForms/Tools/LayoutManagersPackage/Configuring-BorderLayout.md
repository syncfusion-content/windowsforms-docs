---
layout: post
title: Configuring BorderLayout
description: configuring borderlayout
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Configuring BorderLayout

The configuration settings for the BorderLayout have been discussed in this topic.

## Spacing

The horizontal and the vertical gap between the Child controls can be set using the properties given below.

_Table431: Property Table_

<table>
<tr>
<th>
BorderLayout Properties</th><th>
Description</th></tr>
<tr>
<td>
HGap</td><td>
Gets / sets the horizontal spacing between the components.</td></tr>
<tr>
<td>
VGap</td><td>
Gets / sets the vertical spacing between the components.</td></tr>
</table>


{% highlight c# %}



this.borderLayout1.HGap = 10;

this.borderLayout1.VGap = 10;







Me.borderLayout1.HGap = 10

Me.borderLayout1.VGap = 10

{% endhighlight %}

![](Overview_images/Overview_img17.jpeg) 



See Also

Margin Settings, Border Layout - Configuring Child Controls