---
layout: post
title: Advanced-Features
description: advanced features
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Advanced Features

This section will discuss the auto complete support available for the ComboBoxAdv control and databinding using external source.

## AutoComplete Support

ComboBoxAdv has in-built support of auto-completion of the text entered in the control. This feature is automatically enabled for the control. To disable, set ComboBoxAdv.AutoComplete property to false. 

_Table_ _219_: _Properties_

<table>
<tr>
<td>
ComboBoxAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
CaseSensitiveAutoComplete</td><td>
Specifies whether search in the AutoComplete is case sensitive.</td></tr>
<tr>
<td>
MatchFirstCharacterOnly</td><td>
It specifies the AutoComplete behavior in the dropdown mode. When set to true, it matches the first character in the drop list and returns the matching result.</td></tr>
</table>

{% highlight c# %}

//ComboBoxAdv AutoComplete properties

this.comboBoxAdv1.AutoComplete = true;

this.comboBoxAdv1.CaseSensitiveAutocomplete = true;

this.comboBoxAdv1.MatchFirstCharacterOnly = true;

{% endhighlight %}

{% highlight vbnet %}

'ComboBoxAdv AutoComplete properties

Me.comboBoxAdv1.AutoComplete = True

Me.comboBoxAdv1.CaseSensitiveAutocomplete = True

Me.comboBoxAdv1.MatchFirstCharacterOnly = True

{% endhighlight %}

![C:/Users/ashwini/Desktop/ComboBoxAdv image/Autocomplete true.png](Overview_images/Overview_img305.png)



## Data Binding

ComboBoxAdv control can be bound with an external data source. Objects that can act as Datasource to ComboBoxAdv are:

* ArrayList
* DataView
* DataTable

You can add objects to the ComboBoxAdv by using the Items method. You can also add objects to a ComboBoxAdv using the DataSource, DisplayMember and Valuemember properties to fill the ComboBox.

When the DataSource property is set, you cannot modify the items collection. If setting the DataSource property causes the data source to change, the Datasource event is raised. If setting this property causes the data member to change, theDisplayMember event is raised.

When you set DataSource to a null reference, DisplayMember is set to an empty string ("").

ComboBoxAdv can be bound to DataView using the following code example.



{% highlight c# %}

DataTable dt = new DataTable("Table1");

// Adding Columns.

dt.Columns.Add("FirstName");

dt.Columns.Add("LastName");

dt.Columns.Add("occupation");

dt.Columns.Add("place");

// Create a Data Set.

DataSet ds = new DataSet();

ds.Tables.Add(dt);

dt.Rows.Add(new string[] { "John", "Tina", "Doctor", "Italy" });

dt.Rows.Add(new string[] { "Mary", "anu", "Teacher", "America" });

dt.Rows.Add(new string[] { "asha", "roy", "Staff", "London" });

dt.Rows.Add(new string[] { "George", "Gaskin", "Nurse", "germany" });

dt.Rows.Add(new string[] { "sam", "jens", "Engineer", "Russia" });

dt.Rows.Add(new string[] { "Ben", "Geo", "Developer", "India" });

// Create a DataView.

DataView view = new DataView(dt);

// Set DataSource.

this.comboBoxAdv1.DataSource = view;

// Set DisplayMember.

this.comboBoxAdv1.DisplayMember = "place";

{% endhighlight %}

{% highlight vbnet %}

Dim dt As DataTable = New DataTable("Table1")

' Adding Columns.

 dt.Columns.Add("FirstName")

dt.Columns.Add("LastName")

dt.Columns.Add("occupation")

dt.Columns.Add("place")

' Create a Data Set.

Dim ds As DataSet = New DataSet

ds.Tables.Add(dt)

dt.Rows.Add(New String() {"John", "Tina", "Doctor", "Italy"})

dt.Rows.Add(New String() {"Mary", "anu", "Teacher", "America"})

dt.Rows.Add(New String() {"asha", "roy", "Staff", "London"})

dt.Rows.Add(New String() {"George", "Gaskin", "Nurse", "germany"})

dt.Rows.Add(New String() {"sam", "jens", "Engineer", "Russia"})

dt.Rows.Add(New String() {"Ben", "Geo", "Developer", "India"})

' Create a DataView.

Dim view As DataView = New DataView(dt)

' Set DataSource. 

Me.comboBoxAdv1.DataSource = view

' Set DisplayMember.

Me.comboBoxAdv1.DisplayMember = "place"

{% endhighlight %}

![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxDataTable.png](Overview_images/Overview_img306.png) 

