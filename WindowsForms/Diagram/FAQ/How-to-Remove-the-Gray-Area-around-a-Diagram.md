---
layout: post
title: How to Remove the Gray Area around a Diagram | Syncfusion®
description: Set the ScrollVirtualBounds property to Empty to eliminate the extra gray area surrounding a diagram, ensuring a cleaner presentation.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Remove the Gray Area around a Diagram?

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

