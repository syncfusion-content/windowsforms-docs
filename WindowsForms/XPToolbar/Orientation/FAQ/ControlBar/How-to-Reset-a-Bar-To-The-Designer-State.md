---
layout: post
title: How-to-Reset-a-Bar-To-The-Designer-State
description: how to reset a bar to the designer state
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to Reset a Bar To The Designer State

At run time, user can change the Bar settings like arranging the bar items within the bar etc., The bar can also be reset to the designer state by a simple method call.

{% highlight c# %}

//LoadDesignerBarState Method Of MainFrameBarManager

mainFrameBarManager1.LoadDesignerBarState();

{% endhighlight %}

{% highlight vbnet %}

'LoadDesignerBarState Method Of MainFrameBarManager

mainFrameBarManager1.LoadDesignerBarState()

{% endhighlight %}

