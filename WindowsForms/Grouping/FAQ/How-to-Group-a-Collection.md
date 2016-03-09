---
layout: post
title: How to Group a Collection | WindowsForms | Syncfusion
description: How to Group a Collection
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Group a Collection?

To sort your data, add the name of the property you want to sort to the Engine.TableDescriptor.GroupedColumns collection. 

{% highlight C# %}

// Group column A.
groupingEngine.TableDescriptor.GroupedColumns.Add("A");

{% endhighlight %}
 
{% highlight vbnet %}
 
' Group column A.
groupingEngine.TableDescriptor.GroupedColumns.Add("A")
{% endhighlight %}
