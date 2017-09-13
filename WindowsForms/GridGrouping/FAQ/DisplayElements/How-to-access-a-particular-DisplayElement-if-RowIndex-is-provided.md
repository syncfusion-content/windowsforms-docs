---
layout: post
title: How-to-access-a-particular-DisplayElement-if-RowIn | Windows Forms | Syncfusion
description: how to access a particular displayelement if row index is provided
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access a particular DisplayElement if Row Index is provided

You can access DisplayElements with row index by using the following code.

{% highlight c# %}



// Accesses a particular display element.

Element el=this.gridGroupingControl1.Table.DisplayElements[rowing].ParentElement;
{% endhighlight %}


{% highlight vbnet %}



' Accesses a particular display element.

Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(rowing).ParentElement


{% endhighlight %}
