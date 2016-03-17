---
layout: post
title: How-to-adjust-the-height-of-the-ToolStripEx-splitter | WindowsForms | Syncfusion
description: how to adjust the height of the ToolStripEx splitter?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---


# How to adjust the height of the ToolStripEx splitter?

The ToolStripEx splitter height can be changed using function named ApplyTouchStyleColorTable and the following code example illustrates the same.

N> This has been applicable only for TouchStyle in RibbonControlAdv

{% highlight c# %}

//Specifies the ToolStripEx border which fits the Ribbon Panel

this.ribbonControlAdv1.ApplyTouchStyleColorTable(touch, ToolStripExSplitterStyle.Advanced);

//Specifies the default ToolStripEx border like in outlook 

this.ribbonControlAdv1.ApplyTouchStyleColorTable(touch, ToolStripExSplitterStyle.Default);

{% endhighlight %}

{% highlight vb %}

'Specifies the ToolStripEx border which fits the Ribbon Panel

Me.ribbonControlAdv1.ApplyTouchStyleColorTable(touch, ToolStripExSplitterStyle.Advanced)

'Specifies the default ToolStripEx border like in outlook 

Me.ribbonControlAdv1.ApplyTouchStyleColorTable(touch, ToolStripExSplitterStyle.Default)

{% endhighlight %}

* Default

![](How-to-adjust-the-height-of-the-ToolStripEx-splitter_images/How-to-adjust-the-height-of-the-ToolStripEx-splitter_images2.png)

* Advanced

![](How-to-adjust-the-height-of-the-ToolStripEx-splitter_images/How-to-adjust-the-height-of-the-ToolStripEx-splitter_images1.png)
