---
layout: post
title: Performance | WindowsForms | Syncfusion
description: performance
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Performance

This section discusses the fast load mode of the Edit Control.



## Quick File Loading

The Edit Control loads files extremely quick, and hence its performance is unmatched by any of our competitors or the Visual Studio.NET IDE. 

The ConvertOnLoad property of the Edit Control should be set to False to enable the fast load mode. By default, this property is set to True.



{% highlight c# %}



// Enable the fast load mode.

this.editControl1.ConvertOnLoad = false;

{% endhighlight %}

{% highlight vbnet %}



' Enable the fast load mode.

Me.editControl1.ConvertOnLoad = False

{% endhighlight %}





