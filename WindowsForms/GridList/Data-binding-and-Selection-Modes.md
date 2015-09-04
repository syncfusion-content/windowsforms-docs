---
layout: post
title: Data-binding-and-Selection-Modes
description: data binding and selection modes
platform: WindowsForms
control: GridList
documentation: ug
---

# Data binding and Selection Modes

## Data Binding

Data binding is used in Web pages that contain interactive components such as forms, calculators, tutorials, and games. Pages are displayed incrementally so that portions of a page can be used even before the entire page has finished downloading. Data binding helps in populating Grid List control with large amounts of data. This can be achieved by using DataSource property, which allows the system to acquire data from the Data Source Object (DSO).

The following code example illustrates data binding for Grid List control by using DataSource property.


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

{% highlight vbnet %}


Dim array As ArrayList = New ArrayList()

array.Add(New [MyClass](1, "John David"))

array.Add(New [MyClass](2, "Tom"))

array.Add(New [MyClass](3, "Bretney"))

array.Add(New [MyClass](4, "Jessy"))

array.Add(New [MyClass](5, "Bruch"))

array.Add(New [MyClass](6, "Johny"))

Me.gridlistControl1.DataSource = array

{% endhighlight  %}

## Selection Modes

The selection behavior for Grid List control can be specified by using SelectionMode property. There are 3 types of selection behaviors:

* One - Allows the user to select only one item.
* MultiSimple - Allows the user to select multiple items.
* MultiExtended - Allows the user to select multiple items using SHIFT, CTRL,

arrow keys, etc.

The following code example illustrates setting of various selection behaviors for Grid List control.


{% highlight c# %}


this.gridListControl1.SelectionMode = SelectionMode.One;

this.gridListControl1.SelectionMode = SelectionMode.MultiSimple;

this.gridListControl1.SelectionMode = SelectionMode.MultiExtended;



{% endhighlight  %}
{% highlight vbnet %}



Me.gridListControl1.SelectionMode = SelectionMode.One

Me.gridListControl1.SelectionMode = SelectionMode.MultiSimple

Me.gridListControl1.SelectionMode = SelectionMode.MultiExtended

{% endhighlight  %}

