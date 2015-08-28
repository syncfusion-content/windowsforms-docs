---
layout: post
title: Integrated Scrolling
description: Integrated Scrolling
platform: windowsforms
control: GroupBar
documentation: ug
---
# Integrated Scrolling

Scroll buttons can be included for the client controls in the GroupBar by setting the IntegratedScrolling propertyto 'True'.

_Table_ _537__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
IntegratedScrolling</td><td>
Draws a set of scroll thumbs on the GroupBar. This mode is used for creating a VS.NET toolbox type interface where the GroupBar provides the scrolling support for the GroupView client controls.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.IntegratedScrolling = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.IntegratedScrolling = True 

{% endhighlight %}

![](Overview_images/Overview_img11.jpeg) 
Figure 924: GroupBar with Integrated Scrolling
