---
layout: post
title: Spacing
description: Spacing
platform: windowsforms
control: AutoLabel
documentation: ug
---


# Spacing

The space between the AutoLabel control and the labeled control can be customized using the properties given below. When using relative positioning, you can also specify the gap between the label and the control.

Table 386: Property Table

<table>
<tr>
<th>
AutoLabel Properties</th><th>
Description</th></tr>
<tr>
<td>
DX</td><td>
The effective horizontal distance between the left of the AutoLabel and its labeled control.</td></tr>
<tr>
<td>
DY</td><td>
The effective vertical distance between the top of the AutoLabel and its labeled control.</td></tr>
<tr>
<td>
Gap</td><td>
Specifies the horizontal and vertical gap to use when computing the relative position.</td></tr>
</table>




{% highlight C# %}




this.autoLabel1.DX = -80;

this.autoLabel1.DY = 3;

this.autoLabel1.Gap = 10;
{% endhighlight %}





{% highlight vbnet %}



Me.autoLabel1.DX = -80

Me.autoLabel1.DY = 3

Me.autoLabel1.Gap = 10

{% endhighlight %}

 ![](AutoLabel-Images/Overview_img8.jpg) 

