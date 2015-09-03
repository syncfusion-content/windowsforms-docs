---
layout: post
title: How-to-hide-the-Focus-Rectangle-which-gets-display
description: how to hide the focus rectangle which gets displayed on the selected tab
platform: WindowsForms
control: TabsPackage
documentation: ug
---

# How to hide the Focus Rectangle which gets displayed on the selected Tab

The focus rectangle can be hidden by setting the FocusOnTabClick property to False. This can be done programmatically using the code snippet given below.

{% highlight c# %}

this.tabControlAdv1.FocusOnTabClick = false;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.FocusOnTabClick = False

{% endhighlight %}

N> The TabControlAdv.GetTabRect() method is used to get the Rectangle region of a Tab in client co-ordinates, given it's TabIndex.

