---
layout: post
title: How-to-access-a-particular-DisplayElement-if-RowIn
description: how to access a particular displayelement if rowindex is provided
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to access a particular DisplayElement if RowIndex is provided

You can access DisplayElements with rowindex by using the following code.

{% highlight c# %}



// Accesses a particular display element.

Element el=this.gridGroupingControl1.Table.DisplayElements[rowindex].ParentElement;
{% endhighlight %}


{% highlight vbnet %}



' Accesses a particular display element.

Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(rowindex).ParentElement


{% endhighlight %}
