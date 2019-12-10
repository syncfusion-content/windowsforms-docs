---
layout: post
title: How-to-Change-the-Backcolor-of-a-Column | Windows Forms | Syncfusion
description: how to change the backcolor of a column
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Change the BackColor of a Column

The GridDataBoundGrid maintains a collection of GridBoundColumn objects that will allow you to set column properties like BackColor, TextColor, Font, etc. You can explicitly add GridBoundColumns to this.gridDataBoundGrid1.GridBoundColumns property either from code or at design-time. If you do not explicitly add GridBoundColumns to this collection, then the grid will generate an internal set of columns that you can use, this.gridDataBoundGrid1.Binder.InternalColumns. 

To change the BackColor of a column named "Price", use the code given below. 

{% tabs %}
{% highlight c# %}

//If you have added GridBoundColumns.
this.gridDataBoundGrid1.GridBoundColumns["Price"].StyleInfo.BackColor = Color.Red;

//If you have not explicitly added GridBoundColumns.
this.gridDataBoundGrid1.Binder.InternalColumns["Price"].StyleInfo.BackColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

'If you have added GridBoundColumns.
Me.gridDataBoundGrid1.GridBoundColumns("Price").StyleInfo.BackColor = Color.Red

'If you have not explicitly added GridBoundColumns.
Me.gridDataBoundGrid1.Binder.InternalColumns("Price").StyleInfo.BackColor = Color.Red

{% endhighlight %}
{% endtabs %}
