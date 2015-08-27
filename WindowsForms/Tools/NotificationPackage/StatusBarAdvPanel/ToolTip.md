---
layout: post
title: ToolTip
description: tooltip
platform: windowsforms
control: Notification Package 
documentation: ug
---

# ToolTip

ToolTip can be set for the StatusBarAdvPanel using the property given below.

_Table_ _676_: _Property Table_

<table>
<tr>
<td>
StatusBarAdvPanel Property</td><td>
Description</td></tr>
<tr>
<td>
ToolTip</td><td>
Indicates the tooltip of the panel.The text to be displayed in the tooltip can be directly given in the property window.</td></tr>
</table>


This can be done through code as follows.

{% highlight c# %}



this.statusBarAdvPanel1.ToolTip = "Tooltip for StatusBarAdvPanel";

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdvPanel1.ToolTip = "Tooltip for StatusBarAdvPanel"

{% endhighlight %}

![](Overview_images/Overview_img93.jpeg)



