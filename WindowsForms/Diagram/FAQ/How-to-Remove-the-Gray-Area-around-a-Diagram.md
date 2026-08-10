---
layout: post
title: How to remove surrounding gray area in WinForms Diagram | Syncfusion®
description: Learn how to remove the gray area around a diagram in the Syncfusion® Windows Forms Diagram control using the ScrollVirtualBounds property.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to remove the gray area around a diagram in Windows Forms Diagram

You can remove the unnecessary gray area added around a diagram by setting the ScrollVirtualBounds property as Empty. The following code example illustrates this.

{% tabs %}

{% highlight c# %}

//Remove the unwanted gray area around a diagram.

diagram1.View.ScrollVirtualBounds = RectangleF.Empty;

{% endhighlight %}

{% highlight vbnet %}

'Remove the unwanted gray area around a diagram.

diagram1.View.ScrollVirtualBounds = RectangleF.Empty;

{% endhighlight %}

{% endtabs %}

