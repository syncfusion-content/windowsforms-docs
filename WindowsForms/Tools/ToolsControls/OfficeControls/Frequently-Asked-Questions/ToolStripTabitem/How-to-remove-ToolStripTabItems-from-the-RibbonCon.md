---
layout: post
title: How-to-remove-ToolStripTabItems-from-the-RibbonCon
description: how to remove toolstriptabitems from the ribboncontroladv programmatically?
platform: windowsforms
control: Frequently Asked Questions
documentation: ug
---

# How to remove ToolStripTabItems from the RibbonControlAdv Programmatically?

Call RibbonControlAdv.Header.MainItem.RemoveAt method for this purpose. The parameter idx is a zero based index of the item to remove.

{% highlight c# %}

this.ribbonControlAdv1.Header.MainItems.RemoveAt(1);

{% endhighlight  %}

{% highlight vbnet %}

Me.ribbonControlAdv1.Header.MainItems.RemoveAt(1)

{% endhighlight  %}
