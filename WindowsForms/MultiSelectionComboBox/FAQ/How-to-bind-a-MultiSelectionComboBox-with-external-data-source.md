---
layout: post
title: How-to-bind-a-MultiSelectionComboBox-with-external-data-source
description: how to bind a multiselectioncombobox with external data source
platform: WindowsForms
control: Editors Package
documentation: ug
---
# How to bind a MultiSelectionComboBox with external data source?

You can achieve this by using DataSource and DisplayMember properties in MultiSelectionComboBox. 

The following code sample defines how to bind MultiSelectionComboBox with datasource.

{% highlight c# %}

// Create a DataTable.             

DataTable dt = new DataTable("Table1");

// Adding Columns.

dt.Columns.Add("FirstName");

dt.Columns.Add("LastName");

dt.Columns.Add("occupation");

dt.Columns.Add("place");

// Create a Data Set.

DataSet ds = new DataSet();

ds.Tables.Add(dt);

dt.Rows.Add(new string[] { "John", "Tina", "Doctor", "Italy" });

dt.Rows.Add(new string[] { "Mary", "anu", "Teacher", "America" });

dt.Rows.Add(new string[] { "asha", "roy", "Staff", "London" });

dt.Rows.Add(new string[] { "George", "Gaskin", "Nurse", "germany" });

dt.Rows.Add(new string[] { "sam", "jens", "Engineer", "Russia" });

dt.Rows.Add(new string[] { "Ben", "Geo", "Developer", "India" });

// Create a DataView.

DataView view = new DataView(dt);

// Set DataSource.

this.comboBoxAdv1.DataSource = view;

// Set DisplayMember.

this.comboBoxAdv1.DisplayMember = "place";

{% endhighlight %}

{% highlight vbnet %}

' Create a DataTable.    

Dim dt As DataTable = New DataTable("Table1")

' Adding Columns.

dt.Columns.Add("FirstName") 
dt.Columns.Add("LastName") 
dt.Columns.Add("occupation") 
dt.Columns.Add("place")

' Create a Data Set.

Dim ds As DataSet = New DataSet 
ds.Tables.Add(dt) 
dt.Rows.Add(New String() {"John", "Tina", "Doctor", "Italy"}) 
dt.Rows.Add(New String() {"Mary", "anu", "Teacher", "America"}) 
dt.Rows.Add(New String() {"asha", "roy", "Staff", "London"}) 
dt.Rows.Add(New String() {"George", "Gaskin", "Nurse", "germany"}) 
dt.Rows.Add(New String() {"sam", "jens", "Engineer", "Russia"}) 
dt.Rows.Add(New String() {"Ben", "Geo", "Developer", "India"})

' Create a DataView.

Dim view As DataView = New DataView(dt)

' Set DataSource. 
Me.comboBoxAdv1.DataSource = view

' Set DisplayMember.
Me.comboBoxAdv1.DisplayMember = "place"

{% endhighlight %}