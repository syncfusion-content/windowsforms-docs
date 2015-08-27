---
layout: post
title: How-to-Change-the-Backcolor-of-a-Column
description: how to change the backcolor of a column
platform: windowsforms
control: Tools
documentation: ug
---

# How to Change the Backcolor of a Column

### Introduction

The GridDataBoundGrid maintains a collection of GridBoundColumn objects that will allow you to set column properties like backcolor, textcolor, font, etc. You can explicitly add GridBoundColumns to this.gridDataBoundGrid1.GridBoundColumns property either from code or at design-time. If you do not explicitly add GridBoundColumns to this collection, then the grid will generate an internal set of columns that you can use, this.gridDataBoundGrid1.Binder.InternalColumns. 

#### Example

To change the backcolor of a column named "Price", use the code given below. 

{% highlight c# %}



//If you have added GridBoundColumns.
this.gridDataBoundGrid1.GridBoundColumns["Price"].StyleInfo.BackColor = Color.Red;
//If you have not explicitly added GridBoundColumns.
this.gridDataBoundGrid1.Binder.InternalColumns["Price"].StyleInfo.BackColor = Color.Red;

{% endhighlight %}

{% highlight vbnet %}



'If you have added GridBoundColumns.
Me.gridDataBoundGrid1.GridBoundColumns("Price").StyleInfo.BackColor = Color.Red
'If you have not explicitly added GridBoundColumns.
Me.gridDataBoundGrid1.Binder.InternalColumns("Price").StyleInfo.BackColor = Color.Red

{% endhighlight %}

