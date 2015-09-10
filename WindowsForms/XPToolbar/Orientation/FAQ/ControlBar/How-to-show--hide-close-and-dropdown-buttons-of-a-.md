---
layout: post
title: How-to-show--hide-close-and-dropdown-buttons-of-a- | WindowsForms | Syncfusion
description: how to show / hide close and dropdown buttons of a floating bar in xpmenus
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to show / hide close and dropdown buttons of a floating bar in XPMenus

This can be done by using HideCloseButton and HideDropDownButton properties.

{% highlight c# %}

//to hide close button

this.mainFrameBarManager1.GetBarControl(this.bar1).HideCloseButton = true;


//to hide dropdown button

this.mainFrameBarManager1.GetBarControl(this.bar1).HideDropDownButton = true;

{% endhighlight %}

{% highlight vbnet %}



'to hide close button

Me.mainFrameBarManager1.GetBarControl(Me.bar1).HideCloseButton = True


'to hide dropdown button

Me.mainFrameBarManager1.GetBarControl(Me.bar1).HideDropDownButton = True

{% endhighlight %}

{% seealso %}

Toolbar Properties

{% endseealso %}