---
layout: post
title: How to Filter a Collection
description: How to Filter a Collection
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Filter a Collection?

To add a filter condition, add a RecordFilterDescriptor to the Engine.TableDescriptor.RecordFilters collection. The constructor on the RecordFilterDescription takes an expression, "[D] LIKE 'd1'". This expression will be True only for those items in the list where the string property D has the value d1. Here are some other valid expressions where B is an integer property:

* "[B] = 5 OR [B] < 0"

* "[D] LIKE 'd1' OR [B] = 2"

{% highlight C# %}

// Filter on [D] = d1
RecordFilterDescriptor rfd = new RecordFilterDescriptor("[D] LIKE 'd1'");
this.groupingEngine.TableDescriptor.RecordFilters.Add(rfd);

{% endhighlight %}

{% highlight vbnet %}

 
' Filter on [D] = d1
Dim rfd As New RecordFilterDescriptor("[D] LIKE 'd1'")
Me.groupingEngine.TableDescriptor.RecordFilters.Add(rfd)

{% endhighlight %}
