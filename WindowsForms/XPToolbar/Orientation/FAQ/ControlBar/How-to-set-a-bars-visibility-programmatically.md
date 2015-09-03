---
layout: post
title: How-to-set-a-bars-visibility-programmatically
description: how to set a bar's visibility programmatically
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to set a bar's visibility programmatically

A bar's visibility can be controlled using the below code.

{% highlight c# %}

mainFrameBarManager1.GetBarControl(bar1).Visible = false;

{% endhighlight %}

{% highlight vbnet %}

mainFrameBarManager1.GetBarControl(bar1).Visible = False

{% endhighlight %}

