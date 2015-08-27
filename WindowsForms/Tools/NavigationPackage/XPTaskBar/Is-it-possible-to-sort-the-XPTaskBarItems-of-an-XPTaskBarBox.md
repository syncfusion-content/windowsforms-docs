---
layout: post
title: Is it possible to sort the XPTaskBarItems of an XPTaskBarBox
description: Frequently Asked Questions
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# Is it possible to sort the XPTaskBarItems of an XPTaskBarBox?

Yes. It is possible to sort the XPTaskBarItems of an XPTaskBarBox control, by calling the Sort() method as follows.

{% highlight C# %}  

 this.xpTaskBarBox1.Items.Sort();

{% endhighlight %}

 

{% highlight vbnet %} 

Me.xpTaskBarBox1.Items.Sort()

{% endhighlight %}