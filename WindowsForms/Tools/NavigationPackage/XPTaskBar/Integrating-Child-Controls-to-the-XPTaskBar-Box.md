---
layout: post
title: Integrating Child Controls to the XPTaskBar Box
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Integrating Child Controls to the XPTaskBar Box 

To host multiple controls inside the XPTaskBar Boxes, we prefer the Panel control. We can set the panel's height using the PreferredChildPanelHeight property.

_Table_ _586__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
<tr>
<td>
PreferredChildPanelHeight</td><td>
It sets the height of the panel hosted inside the XPTaskBar Boxes.  </td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.PreferredChildPanelHeight = 35;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.PreferredChildPanelHeight = 35

{% endhighlight %}



![](Overview_images/Overview_img109.jpeg) 
Figure 1010: PreferredChildPanelHeight = "35"
