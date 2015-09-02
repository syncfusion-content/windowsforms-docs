---
layout: post
title: How-to-add-a-component-in-the-QuickAccessMenu-prog
description: how to add a component in the quickaccessmenu programmatically?
platform: windowsforms
control: Frequently Asked Questions
documentation: ug
---

# How to add a component in the QuickAccessMenu programmatically?

By calling the SetUseInQuickAccessMenu method, with the component passed as a parameter, we can include a component in the QuickAccessToolbar.

{% highlight c# %}

this.ribbonControlAdv1.SetUseInQuickAccessMenu(this.toolStripDropDownButton1, true);

{% endhighlight %}

{% highlight vbnet %}

Me.ribbonControlAdv1.SetUseInQuickAccessMenu(Me.toolStripDropDownButton1, True)

{% endhighlight  %}

> Note: You can also identify whether a particular item is added to the Quick Access Toolbar or not, using the GetUseInQuickAccessMenu method, by passing the item as the parameter.

