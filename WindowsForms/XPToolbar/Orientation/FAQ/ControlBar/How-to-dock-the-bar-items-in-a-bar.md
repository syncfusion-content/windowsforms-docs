---
layout: post
title: How-to-dock-the-bar-items-in-a-bar | WindowsForms | Syncfusion
description: how to dock the bar items in a bar
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to dock the bar items in a bar

We can dock the bar items in a bar using XPMenus CommandBarExt class as follows.

{% highlight c# %}

CommandBarExt bar = this.mainFrameBarManager1.GetBarControl(this.bar1) as CommandBarExt;

//Get the bar control that hold the baritems.

bar.BarControl.Dock = System.Windows.Forms.DockStyle.Right;

{% endhighlight %}

{% highlight vbnet %}


Dim bar As CommandBarExt = TryCast(Me.mainFrameBarManager1.GetBarControl(Me.bar1), CommandBarExt)

'Get the bar control that hold the baritems. 

bar.BarControl.Dock = System.Windows.Forms.DockStyle.Right

{% endhighlight %}

