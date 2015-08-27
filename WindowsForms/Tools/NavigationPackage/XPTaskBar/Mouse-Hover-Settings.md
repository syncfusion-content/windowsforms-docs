---
layout: post
title: Mouse Hover Settings 
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# Mouse Hover Settings 

This section discusses the mouse hover settings of the XPTaskBar control.

The position of the mouse with respect to the control can be known using the properties given below.

_Table_ _585__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
<tr>
<td>
HitTaskBoxArea</td><td>
Specifies whether the mouse is moved over the TaskBox area.</td></tr>
<tr>
<td>
HeaderHit</td><td>
Indicates whether the mouse is currently over the header portion.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.HitTaskBoxArea= true;

this.xpTaskBarBox1.HeaderHit= true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.HitTaskBoxArea = True

Me.xpTaskBarBox1.HeaderHit = True

{% endhighlight %}
