---
layout: post
title: Data-Binding
description: data binding
platform: windowsforms
control: Editors Package
documentation: ug
---

# Data Binding

MultiSelectionComboBox control can be bound with external data source. Objects that can acts as Datasource to MultiSelectionComboBox are

* ArrayList
* DataView
* DataTable

You can add objects to the MultiSelectionComboBox by using the Items method. You can also add objects to a MultiSelectionComboBox using the DataSource, DisplayMember and ValueMember properties to fill the ComboBox. When the DataSource property is set, you cannot modify the items collection. When the DataSource property setting causes the data source to change, the DataSourceChanged event is raised .When you set DataSource to a null, DisplayMember is set with an empty string ("").

_Table_ _229_: _Property Table_

<table>
<tr>
<td>
MultiSelectionComboBox Properties</td><td>
Description</td></tr>
<tr>
<td>
DataSource</td><td>
Indicates the list that this control will use to get its items.</td></tr>
<tr>
<td>
DisplayMember</td><td>
Indicates the property to display for the items in this control.</td></tr>
<tr>
<td>
ValueMember</td><td>
Indicates the property to use as the actual value for the items in the control.</td></tr>
</table>


{% highlight c# %}

//Specifies the DataSource to MultiSelectionComboBox.

this.multiSelectionComboBox1.DataSource = dataTable;

//To set Display Member for the MultiSelectionComboBox.

this.multiSelectionComboBox1.DisplayMember = "Name";

//To set value member for the MultiSelectionComboBox.

this.multiSelectionComboBox1.ValueMember = "ID";

{% endhighlight %}

{% highlight vbnet %}

'Specifies the DataSource to MultiSelectionComboBox.

Me.multiSelectionComboBox1.DataSource = dataTable

'To set Display Member for the MultiSelectionComboBox.

Me.multiSelectionComboBox1.DisplayMember = "Name"

'To set value member for the MultiSelectionComboBox.

Me.multiSelectionComboBox1.ValueMember = "ID"

{% endhighlight %}