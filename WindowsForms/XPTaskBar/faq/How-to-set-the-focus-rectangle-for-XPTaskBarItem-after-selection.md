---
layout: post
title: How to set the focus rectangle for XPTaskBarItem after selection
description: Frequently Asked Questions
platform: WindowsForms
control: XPtaskBar
documentation: ug
---
# How to set the focus rectangle for XPTaskBarItem after selection

This can be achieved by setting DrawFocusRect property to true. The following code snippet illustrates this.

{% highlight C# %}   

this.xpTaskBarBox1.DrawFocusRect = true;

 {% endhighlight %}



 {% highlight vbnet %} 

Me.xpTaskBarBox1.DrawFocusRect = True

{% endhighlight %}
