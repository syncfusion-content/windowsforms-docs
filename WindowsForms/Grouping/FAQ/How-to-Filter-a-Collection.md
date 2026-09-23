---
layout: post
title: How to Filter a Collection in Windows Forms Grouping | Syncfusion®
description: Filter collections in Syncfusion® Windows Forms Grouping control by applying RecordFilterDescriptor expressions to display matching records.
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Filter a Collection in Windows Forms Grouping

To add a filter condition, add a RecordFilterDescriptor to the Engine.TableDescriptor.RecordFilters collection. The constructor on the RecordFilterDescription takes an expression, "[D] LIKE 'd1'". This expression will be True only for those items in the list where the string property D has the value d1. Here are some other valid expressions where B is an integer property:

* "[B] = 5 OR [B] < 0"

* "[D] LIKE 'd1' OR [B] = 2"

{% tabs %}
{% highlight C# %}

// Filter on [D] = d1
RecordFilterDescriptor recordFilterDescriptor = new RecordFilterDescriptor("[D] LIKE 'd1'");
this.groupingEngine.TableDescriptor.RecordFilters.Add(recordFilterDescriptor);

{% endhighlight %}

{% highlight vb %}

' Filter on [D] = d1
Dim recordFilterDescriptor As New RecordFilterDescriptor("[D] LIKE 'd1'")
Me.groupingEngine.TableDescriptor.RecordFilters.Add(recordFilterDescriptor)

{% endhighlight %}
{% endtabs %}
