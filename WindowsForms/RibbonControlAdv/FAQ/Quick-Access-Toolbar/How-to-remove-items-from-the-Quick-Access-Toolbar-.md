---
layout: post
title: How-to-remove-items-from-the-Quick-Access-Toolbar- | Windows Forms | Syncfusion
description: how to remove items from the quick access toolbar programmatically?
platform: windowsforms
control: Frequently Asked Questions
documentation: ug
---

# How to remove items from the Quick Access Toolbar programmatically?

Call RibbonControlAdv.Header.QuickItem.RemoveAt method for this purpose. The parameter idx is a zero based index of the item, to remove.

{% highlight c# %}

this.ribbonControlAdv1.Header.QuickItems.RemoveAt(1);

{% endhighlight  %}

{% highlight vbnet %}

Me.ribbonControlAdv1.Header.QuickItems.RemoveAt(1)

{% endhighlight  %}
