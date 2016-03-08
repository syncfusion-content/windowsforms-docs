---
layout: post
title: How to delete the items in the list at runtime | WindowsForms | Syncfusion
description: How to delete the items in the list at runtime
platform: WindowsForms
control: Tools
documentation: ug
---



# How to delete the items in the list at runtime?

You can delete items in the list at runtime by enabling the AllowListDelete property and then pressing the Delete key.


{% highlight C# %}


this.autoComplete1.AllowListDelete = true;

{% endhighlight %}



{% highlight vbnet %}





Me.autoComplete1.AllowListDelete = True
{% endhighlight %}