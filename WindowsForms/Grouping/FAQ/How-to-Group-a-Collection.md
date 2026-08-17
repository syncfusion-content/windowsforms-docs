---
layout: post
title: How to Group a Collection in Windows Forms Grouping | Syncfusion®
description: Group a collection in Syncfusion® Windows Forms Grouping control by adding columns to the GroupedColumns collection for organized data presentation.
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Group a Collection in Windows Forms Grouping

To sort your data, add the name of the property you want to sort to the Engine.TableDescriptor.GroupedColumns collection. 

{% tabs %}
{% highlight C# %}

// Group column A.
groupingEngine.TableDescriptor.GroupedColumns.Add("A");

{% endhighlight %}
 
{% highlight vb %}
 
' Group column A.
groupingEngine.TableDescriptor.GroupedColumns.Add("A")
{% endhighlight %}
{% endtabs %}
