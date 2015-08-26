---
layout: post
title: How to delete the items in the list at run time
description: How to delete the items in the list at run time
platform: WindowsForms
control: Tools
documentation: ug
---



# How to delete the items in the list at run time?

You can delete items in the list at run time by pressing the Delete Key, by enabling AllowListDelete property.


{% highlight C# %}


this.autoComplete1.AllowListDelete = true;

{% endhighlight %}



{% highlight vbnet %}





Me.autoComplete1.AllowListDelete = True
{% endhighlight %}