---
layout: post
title: How to Bind a Datasource to Windows Forms Grouping | Syncfusion®
description: Bind a datasource to Syncfusion® Windows Forms Grouping control using an IList object to group, sort, and summarize records efficiently.
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Bind a Datasource to Windows Forms Grouping
Essential Grouping can use any IList object holding objects and a common System.Type as its datasource. The public properties of the common type can be used to group, sort and summarize the data in the IList.

The following code shows how to set an IList object to be the data source of a GroupingEngine object. Within Essential Grouping, the items in your IList datasource are referred to as records.

{% tabs %}
{% highlight C# %}
 
using Syncfusion.Grouping;
 
// Create a Grouping.Engine object.
Engine groupingEngine = new Engine();
 
// Set its datasource.
groupingEngine.SetSourceList(list);
{% endhighlight %}

{% highlight vb %}

 Imports Syncfusion.Grouping
 
' Create a Grouping.Engine object.
Dim groupingEngine As New Engine()
 
' Set its datasource.
groupingEngine.SetSourceList(list)
 Syncfusion Logo Essential Studio Windows Forms - v. 13.2.0.29 Class Reference Demo Support
 
 {% endhighlight %}
 {% endtabs %}
 
 