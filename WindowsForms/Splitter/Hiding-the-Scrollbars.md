---
layout: post
title: Hiding-the-Scrollbars
description: hiding the scrollbars
platform: WindowsForms
control: Splitter  
documentation: ug
---

# Hiding the Scrollbars

The Horizontal and Vertical scrollbars in SplitterControl can be hidden by using the ShowHorizontalScrollBar and ShowVerticalScrollBar properties.

The following code example illustrates this.

{% highlight c# %}

this.splitterControl1.ShowHorizontalScrollBar = false;

this.splitterControl1.ShowVerticalScrollBar = false;

{% endhighlight %}

{% highlight vbnet %}

Me.splitterControl1.ShowHorizontalScrollBar = False

Me.splitterControl1.ShowVerticalScrollBar = False

{% endhighlight %}

