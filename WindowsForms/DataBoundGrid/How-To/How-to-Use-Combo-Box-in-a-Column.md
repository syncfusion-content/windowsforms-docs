---
layout: post
title: How-to-Use-Combo-Box-in-a-Column | Windows Forms | Syncfusion
description: how to use combo box in a column
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Use Combo Box in a Column

### Introduction

The control type of a cell is part of the cell style and is determined by GridStyleInfo.CellType property. The items shown in the dropdown list can be provided in two ways.

* Create StringCollection object that will hold your choices and then set this StringCollection in GridStyleInfo.ChoiceList property for the cell. 
* Have an IList object that will hold object entries that have public properties (such as DataTable object with its columns serving as public properties).

In the second case, use GridStyleInfo.DataSource, DisplayMember, and ValueMember properties to set datasource for the drop list. In addition to setting the cell type, ChoiceList, datasource, DisplayMember, and ValueMember, the DropDownStyle property of GridStyleInfo controls editing behavior of the combobox cell. You can also use GridStyleInfo.ShowButton property to control when the combo box button is visible. 

#### Example

Here is the code that sets column 2 to be a combo box with dropdownlist being set through the styles ChoiceList property. To access a column's style, you must use either GridDataBoundGrid.GridBoundColumns or GridDataBoundGrid.Binder.InternalColumn depending upon whether you have explicitly added GridBoundColumns or not.

{% highlight c# %}



//Requires to access StringCollection.

using System.Collections.Specialized;       



//...

//Creates the list.

StringCollection items = new StringCollection();

items.AddRange(new string[]{"One", "Two", "Three", "Four", "Five"});



//Sets the style properties.

GridStyleInfo style = this.gridDataBoundGrid1.GridBoundColumns[1].StyleInfo;

style.CellType = "ComboBox";

style.ChoiceList = items;

style.CellValue = "Five";



//True dropdownlist - no editing.

style.DropDownStyle = GridDropDownStyle.Exclusive;

{% endhighlight %}

{% highlight vbnet %}



'Requires to access StringCollection.

Imports System.Collections.Specialized 



'...

'Creates the list.

Dim items As New StringCollection

items.AddRange(New String() {"One", "Two", "Three", "Four", "Five"})



'Sets the style properties.

Dim style As GridStyleInfo = Me.gridDataBoundGrid1.GridBoundColumns(1).StyleInfo

style.CellType = "ComboBox"

style.ChoiceList = items

style.CellValue = "Five"



'True droplist - no editing.

style.DropDownStyle = GridDropDownStyle.Exclusive 

{% endhighlight %}

Here is the code that will set column 2 to a combobox setting items in the combobox through DataTable datasource.

{% highlight c# %}



//Assumes this.dt is a DataTable object with at least 2 columns named "id" and "display".



//Sets the style properties.

GridStyleInfo style = this.gridDataBoundGrid1.GridBoundColumns[1].StyleInfo;

style.CellType = "ComboBox";

style.DataSource = dt;



//Displays in the grid cell.

style.DisplayMember = "display"; 



//Values in the grid cell.

style.ValueMember = "id"; 

style.DropDownStyle = GridDropDownStyle.AutoComplete;

{% endhighlight %}

{% highlight vbnet %}



'Assumes this.dt is a DataTable object with at least 2 columns named "id" and "display".



'Sets the style properties.

Dim style As GridStyleInfo = Me.gridDataBoundGrid1.GridBoundColumns(1).StyleInfo

style.CellType = "ComboBox"

style.DataSource = dt



'Displays in the grid cell.

   style.DisplayMember = "display" 



'Values in the grid cell.

style.ValueMember = "id" 

style.DropDownStyle = GridDropDownStyle.AutoComplete


{% endhighlight %}
