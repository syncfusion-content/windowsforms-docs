---
layout: post
title: How to use a combo box in a cell in GridControl | Syncfusion
description: Learn here all about how to use a combo box in a cell of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to use a combo box in a cell in Windows Forms GridControl

The control type of a cell is part of the cell style and is determined by GridStyleInfo.CellType property. The items shown in the dropdown list can be provided in two ways.

* Create a StringCollection object holding your choices and then set this StringCollection in GridStyleInfo.ChoiceList property for the cell. 
* Have an IList object that holds object entries that have public properties (such as a DataTable object with its columns serving as public properties).

In the second case, use GridStyleInfo.DataSource, DisplayMember and ValueMember properties to set datasource for the drop list. In addition to setting the CellType, ChoiceList, datasource, DisplayMember and ValueMember, the DropDownStyle property of [GridStyleInfo](/windowsforms/Grid/Cell-Style-Architecture#gridstyleinfo-class-overview)-controls the editing behavior of the combo box cell. You can also use GridStyleInfo.ShowButton property to control when the combo box button is visible. 

Here is the code that will set cells 4,2 to a combo box by setting the items in the combo box through styles ChoiceList property.

{% tabs %}
{% highlight c# %}

//Requires to access the StringCollection.
using System.Collections.Specialized;       

//...
// Creates the list.
StringCollection items = new StringCollection();
items.AddRange(new string[]{"One", "Two", "Three", "Four", "Five"});

//Sets the style properties.
GridStyleInfo style = gridControl1[4, 2];
style.CellType = "ComboBox";
style.ChoiceList = items;
style.CellValue = "Five";

//True drop list - no editing.
style.DropDownStyle = GridDropDownStyle.Exclusive; 

{% endhighlight  %}
{% highlight vb %}

'Requires to access the StringCollection.
Imports System.Collections.Specialized 

'Creates the list.
Dim items As New StringCollection
items.AddRange(New String() {"One", "Two", "Three", "Four", "Five"})

'Sets the style properties.
Dim style As GridStyleInfo = GridControl1(4, 2)

style.CellType = "ComboBox"
style.ChoiceList = items
style.CellValue = "Five"
'True drop list - no editing.
style.DropDownStyle = GridDropDownStyle.Exclusive 
{% endhighlight  %}
{% endtabs %}

Here is the code that will set cells 4,2 to a combo box by setting items in the combo box through a DataTable datasource.

{% tabs %}
{% highlight c# %}

//Assumes this.dataTable is a DataTable object with at least 2 columns named "id" and "display".
//Sets the style properties.
GridStyleInfo style = gridControl1[4, 2];
style.CellType = "ComboBox";
style.DataSource = dataTable;
style.DisplayMember = "display"; 

//Displays in the grid cell.
style.ValueMember = "id"; 

//Values in the grid cell.
style.DropDownStyle = GridDropDownStyle.AutoComplete;

{% endhighlight  %}

{% highlight vb %}
'Assumes this.dataTable is a DataTable object with at least 2 columns named "id" and "display".
'Sets the style properties.
Dim style As GridStyleInfo = GridControl1(4, 2)
style.CellType = "ComboBox"
style.DataSource = dataTable
style.DisplayMember = "display" 

'Displays in the grid cell.
style.ValueMember = "id" 

'Values in the grid cell.
style.DropDownStyle = GridDropDownStyle.AutoComplete

{% endhighlight  %}
{% endtabs %}