---
layout: post
title: Get Row and Column Indexes in Windows Forms GridControl | Syncfusion®
description: Get the top, bottom, left, and right viewable row and column indexes in Syncfusion® Windows Forms GridControl using grid layout properties and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Get Viewable Row, Column Indexes in Windows Forms GridControl

Use the following variables to get the viewable row and column indexes.

{% tabs %}
{% highlight c# %}

//Top Row Index.
this.grid.TopRowIndex

//Left Column Index.
this.grid.LeftColIndex

//Bottom Row Index.
this.grid.ViewLayout.LastVisibleRow

//Right Column Index.
this.grid.ViewLayout.LastVisibleCol

{% endhighlight %}

{% highlight vb %}

'Top Row Index.
Me.grid.TopRowIndex

'Left Column Index.
Me.grid.LeftColIndex

'Bottom Row Index.
Me.grid.ViewLayout.LastVisibleRow

'Right Column Index.
Me.grid.ViewLayout.LastVisibleCol

{% endhighlight %}
{% endtabs %}
