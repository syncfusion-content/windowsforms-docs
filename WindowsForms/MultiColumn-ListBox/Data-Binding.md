---
layout: post
title: Data Binding in Windows Forms MultiColumn ListBox | Syncfusion®
description: Data Binding in Syncfusion® Windows Forms MultiColumn ListBox enables binding large datasets to display multiple columns.
platform: windowsforms
control: MultiColumn ListBox
documentation: ug
---

# Data Binding in Windows Forms MultiColumn ListBox

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