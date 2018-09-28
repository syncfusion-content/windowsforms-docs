---
layout: post
title: How to set the focus rectangle for XPTaskBarItem after selection | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# How to set the focus rectangle for XPTaskBarItem after selection

This can be achieved by setting the DrawFocusRect property to `true`.

{% tabs %}

{% highlight C# %}   

this.xpTaskBarBox1.DrawFocusRect = true;

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBarBox1.DrawFocusRect = True

{% endhighlight %}

{% endtabs %}