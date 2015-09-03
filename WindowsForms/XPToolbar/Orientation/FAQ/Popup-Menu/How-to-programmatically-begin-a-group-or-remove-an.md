---
layout: post
title: How-to-programmatically-begin-a-group-or-remove-an
description: how to programmatically begin a group or remove an existing group in a popup menu
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to programmatically begin a group or remove an existing group in a popup menu

You can easily group the menu items or remove the existing group, within a ParentBarItem using the below two methods respectively.

The below code snippet draws a separator just before bar item 2.

{% highlight c# %}



//Adds a separator before the specified BarItem, if any

this.popupMenu1.ParentBarItem.BeginGroupAt(this.barItem2);

{% endhighlight %}

{% highlight vbnet %}



'Adds a separator before the specified BarItem, if any 

Me.popupMenu1.ParentBarItem.BeginGroupAt(Me.barItem1)

{% endhighlight %}


![](How-to-programmatically-begin-a-group-or-remove-an_images/How-to-programmatically-begin-a-group-or-remove-an_img1.jpeg)





{% highlight c# %}



//Removes the separator before the specified BarItem, if any

this.popupMenu1.ParentBarItem.RemoveGroupAt(this.barItem2);

{% endhighlight %}

{% highlight vbnet %}



'Removes the separator before the specified BarItem, if any

Me.popupMenu1.ParentBarItem.RemoveGroupAt(Me.barItem2)

{% endhighlight %}

{% seealso %}

Grouping Items in a Popup Menu

{% endseealso %}