---
layout: post
title: How to Sort a Collection in Windows Forms Grouping | Syncfusion®
description: Sort a collection in the Syncfusion® Windows Forms Grouping control by adding columns to the SortedColumns collection for organized data ordering.
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Sort a Collection in Windows Forms Grouping

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
