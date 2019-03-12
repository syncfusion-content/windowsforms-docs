---
layout: post
title: HubTile Image transition | WindowsForms | Syncfusion
description: How to modify HubTile Image Transition direction in runtime
platform: WindowsForms
control: HubTile
documentation: ug
---

# How to modify HubTile image transition direction in runtime?

You can set HubTile [SlideTransition](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~SlideTransition.html) property to achieve this.

{% tabs %}
{% highlight C# %} 
// Sets Image transition direction as RightToLeft
this.HubTile1.SlideTransition = TransitionDirection.RightToLeft;
// Sets Image transition direction as LeftToRight
this.HubTile1.SlideTransition = TransitionDirection.LeftToRight;
// Sets Image transition direction as TopToBottom
this.HubTile1.SlideTransition = TransitionDirection.TopToBottom;
// Sets Image transition direction as BottomToTop
this.HubTile1.SlideTransition= TransitionDirection.BottomToTop;
{% endhighlight %}
{% highlight VB %}
‘Sets Image transition direction as RightToLeft
Me.HubTile1.SlideTransition = TransitionDirection.RightToLeft
‘Sets Image transition direction as LeftToRight
Me.HubTile1.SlideTransition = TransitionDirection.LeftToRight
‘Sets Image transition direction as TopToBottom
Me.HubTile1.SlideTransition = TransitionDirection.TopToBottom
‘Sets Image transition direction as BottomToTop
Me.HubTile1.SlideTransition= TransitionDirection.BottomToTop
{% endhighlight %}
{% endtabs %}