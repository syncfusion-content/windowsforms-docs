---
layout: post
title: How to align the XPTaskBarItems in XPTaskBar
description: Frequently Asked Questions
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# How to align the XPTaskBarItems in XPTaskBar

We can arrange the XPTaskBarItems horizontally or vertically using BoxItemsAlignment property. The following code snippet can be 
used.

{% highlight C# %}  

this.xpTaskBar1.BoxItemsAlignment = Syncfusion.Windows.Forms.Tools.XPTaskBar.ItemsAlignment.Horizontal;

{% endhighlight %}



 {% highlight vbnet %} 

Me.xpTaskBar1.BoxItemsAlignment = Syncfusion.Windows.Forms.Tools.XPTaskBar.ItemsAlignment.Horizontal

{% endhighlight %}