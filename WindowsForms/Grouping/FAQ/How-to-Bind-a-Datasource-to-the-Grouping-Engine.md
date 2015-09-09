---
layout: post
title: How to Bind a Datasource to the Grouping Engine
description: How to Bind a Datasource to the Grouping Engine
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Bind a Datasource to the Grouping Engine?
Essential Grouping can use any IList object holding objects and a common System.Type as its datasource. The public properties of the common type can be used to group, sort and summarize the data in the IList.

## Example

The following code shows how to set an IList object to be the data source of a GroupingEngine object. Within Essential Grouping, the items in your IList datasource are referred to as records.

{% highlight C# %}
 
using Syncfusion.Grouping;
 
// Create a Grouping.Engine object.
Engine groupingEngine = new Engine();
 
// Set its datasource.
groupingEngine.SetSourceList(list);
{% endhighlight %}

{% highlight vbnet %}

 Imports Syncfusion.Grouping
 
' Create a Grouping.Engine object.
Dim groupingEngine As New Engine()
 
' Set its datasource.
groupingEngine.SetSourceList(list)
 Syncfusion Logo Essential Studio Windows Forms - v. 13.2.0.29 Class Reference Demo Support
 
 {% endhighlight %}
 