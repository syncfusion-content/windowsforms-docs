---
layout: post
title: How to Sort a Collection | WindowsForms | Syncfusion
description: How to Sort a Collection
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Sort a Collection

To sort your data, add the name of the property that you want to sort to the Engine.TableDescriptor.SortedColumns collection.

{% tabs %}
{% highlight C# %}
 
// Sort column A.
groupingEngine.TableDescriptor.SortedColumns.Add("A");
 
{% endhighlight %}

{% highlight vb %}
 
' Sort column A.
groupingEngine.TableDescriptor.SortedColumns.Add("A")

{% endhighlight %}
{% endtabs %}
