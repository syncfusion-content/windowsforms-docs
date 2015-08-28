---
layout: post
title: How-to-get-or-set-an-accelerator-key-programmatica
description: how to get or set an accelerator key programmatically?
platform: windowsforms
control: Tools
documentation: ug
---

# How to get or set an accelerator key programmatically?

To get or set the accelerator key, call GetAccelerator and SetAccelerator methods respectively. 

{% highlight c# %}



this.superAccelerator1.GetAccelerator(this.toolStripTabItem1);

this.superAccelerator1.SetAccelerator(this.toolStripTabItem1, "C");

{% endhighlight %}

{% highlight vbnet %}



Me.superAccelerator1.GetAccelerator(Me.toolStripTabItem1) 

Me.superAccelerator1.SetAccelerator(Me.toolStripTabItem1, "C") 

{% endhighlight %}

> Note: GetMenuButtonAccelerator and SetMenuButtonAccelerator methods gets or sets the OfficeMenuButton accelerator key. See Menu_Button Settings _for details.

