---
layout: post
title: Multi Columns | WindowsForms | Syncfusion
description: Multi Columns
platform: WindowsForms
control: ComboBoxAutoComplete
documentation: ug
---

# Datasource

The following steps sets a DataView as the DataSource of ComboBoxAutoComplete.

1. Drag and drop SqlDataAdapter or OleDbDataAdapter tool from the Data tab of the Toolbox onto the form. This will appear in component tray under the form. The Data Adapter Configuration Wizard will be automatically launched to assist you. 
2. SqlConnection object and associated Command objects will be created to support the Data Adapter. 
3. Select the DataAdapter you created and click the "Generate DataSet" option at the bottom of the properties window. 
4. This will enable you to create a DataSet object, which will contain the DataTable/DataView which, wraps the record set you configured in the Wizard. 
5. Create a name for your DataSet object and select the table(s) to include. 
6. Enter the following code in the Load event of your form to fill the DataSet with data from the database.

   ![](ComboBoxAutoComplete-Images/Overview_img48.jpeg)

{% tabs %}
{% highlight c# %}

// Fills the DataSet with data from the database.
this.oleDbDataAdapter1.Fill(this.dataSet11);

{% endhighlight %}

{% highlight vb %}

' Fills the DataSet with data from the database.
Me.oleDbDataAdapter1.Fill(Me.dataSet11);

{% endhighlight %}
{% endtabs %}

## Adding Columns to the Popup and Setting the Matching Column

Add columns through designer using ComboBoxAutoComplete.AutoCompleteControl.Columns property. Set the first column as the matching column.

 ![](ComboBoxAutoComplete-Images/Overview_img49.jpeg) 



Using the below code, assign the dataset as the data source for the ComboBoxAutoComplete control.

{% tabs %}
{% highlight C# %}

// Assign  DataSet to the AutoCompleteControl.DataSource property of the ComboBoxAutoComplete.
this.comboBoxAutoComplete1.AutoCompleteControl.DataSource = this.dataSet11.Sports;
this.comboBoxAutoComplete1.DisplayMember = "Name";

// Sets the attributes of columns in the drop down list of the AutoComplete.
this.comboBoxAutoComplete1.AutoCompleteControl.Columns.Add(this.autoCompleteDataColumnInfo1);
this.comboBoxAutoComplete1.AutoCompleteControl.Columns.Add(this.autoCompleteDataColumnInfo2);
this.autoCompleteDataColumnInfo1.ColumnHeaderText = "Name";
this.autoCompleteDataColumnInfo1.MatchingColumn = true;
this.autoCompleteDataColumnInfo2.ColumnHeaderText = "ID";

{% endhighlight %}

{% highlight vb %}

' Assign  DataSet to the AutoCompleteControl.DataSource property of the ComboBoxAutoComplete.
Me.comboBoxAutoComplete1.AutoCompleteControl.DataSource = Me.dataSet11.Sports
Me.comboBoxAutoComplete1.DisplayMember = "Name"

' Sets the attributes of columns in the drop down list of the AutoComplete.
Me.comboBoxAutoComplete1.AutoCompleteControl.Columns.Add(Me.autoCompleteDataColumnInfo1)
Me.comboBoxAutoComplete1.AutoCompleteControl.Columns.Add(Me.autoCompleteDataColumnInfo2)
Me.autoCompleteDataColumnInfo1.ColumnHeaderText = "Name"
Me.autoCompleteDataColumnInfo1.MatchingColumn = True
Me.autoCompleteDataColumnInfo2.ColumnHeaderText = "ID"

{% endhighlight %}
{% endtabs %}

![](ComboBoxAutoComplete-Images/Overview_img50.jpeg) 

