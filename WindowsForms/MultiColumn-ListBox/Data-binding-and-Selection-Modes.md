---
layout: post
title: Data-binding-and-Selection-Modes | Windows Forms | Syncfusion
description: Learn here all about data binding and selection modes feature of Syncfusion Windows Forms MultiColumn ListBox (GridListControl) control and more.
platform: windowsforms
control: GridList
documentation: ug
---

# Data Binding and Selection Modes in Windows Forms MultiColumn ListBox

## Data Binding

Data binding used in the web pages that contain interactive components such as forms, calculators, tutorials, and games. Pages are displayed incrementally so that portions of a page can be used even before the entire page has finished downloading. Data binding helps in populating the GridList control with large amounts of data by using the DataSource property that allows the system to acquire data from the Data Source Object (DSO).

{% tabs %}
{% highlight c# %}
ArrayList array = new ArrayList();
array.Add(new MyClass(001,"John David"));
array.Add(new MyClass(002,"Tom"));
array.Add(new MyClass(003,"Bretney"));
array.Add(new MyClass(004,"Jessy"));
array.Add(new MyClass(005,"Bruch"));
array.Add(new MyClass(006,"Johny"));
this.gridlistControl1.DataSource = array;
{% endhighlight  %}
{% highlight vb %}
Dim array As ArrayList = New ArrayList()
array.Add(New [MyClass](1, "John David"))
array.Add(New [MyClass](2, "Tom"))
array.Add(New [MyClass](3, "Bretney"))
array.Add(New [MyClass](4, "Jessy"))
array.Add(New [MyClass](5, "Bruch"))
array.Add(New [MyClass](6, "Johny"))
Me.gridlistControl1.DataSource = array
{% endhighlight  %}
{% endtabs %}

## Selection modes

Selection behavior of the GridList control can be specified by using the SelectionMode property. There are three types of selection behaviors:

* One: Selects only one item.
* MultiSimple: Selects multiple items.
* MultiExtended: Selects multiple items using SHIFT, CTRL, arrow keys, etc.

{% tabs %}
{% highlight c# %}
this.gridListControl1.SelectionMode = SelectionMode.One;
this.gridListControl1.SelectionMode = SelectionMode.MultiSimple;
this.gridListControl1.SelectionMode = SelectionMode.MultiExtended;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.SelectionMode = SelectionMode.One
Me.gridListControl1.SelectionMode = SelectionMode.MultiSimple
Me.gridListControl1.SelectionMode = SelectionMode.MultiExtended
{% endhighlight  %}
{% endtabs %}
