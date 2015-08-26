---
layout: post
title: Animation Settings 
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Animation Settings 

Animation during expanding / collapsing of the Taskbar items in an XPTaskBar can be controlled using the following properties. 
Animation can also be enabled while adding or removing any TaskBar items.

_Table_ _584__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
<tr>
<td>
AnimationDelay</td><td>
Specifies the animation delay during expand / collapse of the  XPTaskBarBox.</td></tr>
<tr>
<td>
AnimationPositionsCount</td><td>
Specifies the number of animation positions during expand / collapse.</td></tr>
<tr>
<td>
UseAdditionalAnimation</td><td>
It indicates whether animation is enabled when items are added / removed.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.AnimationDelay = 100;

this.xpTaskBarBox1.AnimationPositionsCount = 20;

this.xpTaskBarBox1.UseAdditionalAnimation = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.AnimationDelay = 100

Me.xpTaskBarBox1.AnimationPositionsCount = 20

Me.xpTaskBarBox1.UseAdditionalAnimation = True

{% endhighlight %}

 ![](Overview_images/Overview_img108.jpeg) 
Figure 1009: Collapse and Header Image for XPTaskBar
