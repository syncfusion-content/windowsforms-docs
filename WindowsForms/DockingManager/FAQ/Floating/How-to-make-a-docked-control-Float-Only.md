---
layout: post
title: How to make a docked control Float Only
description: How to make a docked control Float Only
platform: WindowsForms
control: Control Name undefined
documentation: ug
---


# How to make a docked control Float Only?

The docked control can also be only floating and cannot be docked, by calling the SetFloatOnly method.

Table 105: Parameter Table

<table>
<tr>
<td>
Parameter</td><td>
Description</td></tr>
<tr>
<td>
SetFloatOnly</td><td>
Make the docked control a float only control.{{ 'Ctrl' | markdownify }} - The control for which docking is enabled.{{ 'bFloating' | markdownify }} - Represents a boolean value, TRUE, to disabled docking.</td></tr>
</table>

{% highlight C# %}





this.dockingManager1.SetFloatOnly(this.listBox2, true);
{% endhighlight %}


{% highlight vbnet %}





Me.dockingManager1.SetFloatOnly(Me.listBox2, True);
{% endhighlight %}


 ![](Floating_images/Floating_img1.jpeg) 



