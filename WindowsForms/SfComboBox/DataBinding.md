---
layout: post
title: DataBinding
description: This section explains about the DataBinding support in SfComboBox.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Data Binding

The data source can be bound by using the `DataSource` property. The following properties controls the data binding:

* `DisplayMember`: To display the underlying datasource for SfComboBox.
* `ValueMember`: To use as the actual value for the items. 

{% tabs %}
{% highlight c# %}
//Bind the data source to combo box control
List<USState> list = GetData();
sfComboBox1.DataSource = list;
//Bind the Display member and Value member to the data source
sfComboBox1.DisplayMember = "LongName";
sfComboBox1. ValueMember = "ShortName";
{% endhighlight %}
{% highlight vb %}
'Bind the data source to combo box control
Dim list As List(Of USState) = GetData()
sfComboBox1.DataSource = list
'Bind the Display member and Value member to the data source
sfComboBox1.DisplayMember = "LongName"
sfComboBox1.ValueMember = "ShortName"
{% endhighlight %}
{% endtabs %}

## Limitations:

`DataTable` binding is not supported.