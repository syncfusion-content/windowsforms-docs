---
layout: post
title: How-to-dock-the-ControlBars-to-any-edge-of-the-hos
description: how to dock the controlbars to any edge of the host form
platform: windowsforms
control: Orientation
documentation: ug
---

# How to dock the ControlBars to any edge of the host form

It can be done using the DockState property of the control bar. The options are Right, Left, Top and Bottom.

{% highlight c# %}

// Dock to the right edge of the host form

this.controlBar1.DockState = CommandBarDockState.Right;

{% endhighlight %}

{% highlight vbnet %}


// Dock to the right edge of the host form

Me.controlBar1.DockState = CommandBarDockState.Right

{% endhighlight %}

{% seealso %}

Detached ControlBars

{% endseealso %}