---
layout: post
title: How-to-determine-on-which-control-a-context-menu-w | WindowsForms | Syncfusion
description: how to determine on which control a context menu was shown
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to determine on which control a context menu was shown

We can identify the control on which the context menu was shown by using the below code.

{% highlight c# %}



// The PopupMenu's SourceControl specifies its target control

Control srcControl = this.popupMenu1.SourceControl;

{% endhighlight %}

{% highlight vbnet %}



' The PopupMenu's SourceControl specifies its target control 

Dim srcControl As Control = Me.popupMenu1.SourceControl

{% endhighlight %}

