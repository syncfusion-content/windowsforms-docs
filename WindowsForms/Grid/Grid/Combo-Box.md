---
layout: post
title: Combo-Box
description: combo box
platform: windowsform
control: Grid
documentation: ug
---

# Combo Box

When you add a combo box to a grid cell, it will enable you to choose from a drop-down list of choices. You can populate this list in several ways by setting appropriate GridStyleInfo properties. Other properties restrict the choices to those items listed in the drop down, and enable auto completion of possible matches as the user types new items.

Table 18: GridStyleInfo properties

<table>
<tr>
<th>
GRIDSTYLEINFO PROPERTY</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
CellType</td><td>
Sets to "combo box" for a combo box control.</td></tr>
<tr>
<td>
ChoiceList</td><td>
StringCollection holding the strings for the drop down.</td></tr>
<tr>
<td>
ExclusiveChoiceList</td><td>
{{ '_True_' | markdownify }} if you want to list the items in the drop-down, {{ '_false_' | markdownify }} otherwise.</td></tr>
<tr>
<td>
DataSource</td><td>
This property lets you to populate the drop-down list by using an object that implements IListSource or IList. Examples include DataTable, DataSet, DataView and ArrayList.</td></tr>
<tr>
<td>
DisplayMember</td><td>
String that names the public property from the data source object to be displayed in the cell.</td></tr>
<tr>
<td>
ValueMember</td><td>
String that names the public property from data source object to be used as the value for this cell.</td></tr>
</table>


The following code example illustrates how to set the cell type to ComboBox.

{% highlight c# %}



//Generates the choices.

StringCollection items = new StringCollection();

items.Add("One");

items.Add("Two");

items.Add("Three");

items.Add("Four");

items.Add("Five");



//Sets up the control.

gridControl1[rowIndex, colIndex].CellType = "ComboBox";

gridControl1[rowIndex, colIndex].ChoiceList = items;

gridControl1[rowIndex, colIndex].Text = "Five";

gridControl1[rowIndex, colIndex].CellType = "ComboBox";

gridControl1[rowIndex, colIndex].ExclusiveChoiceList = true;



//Or uses a data source such as a table in a data set.

gridControl1[2, 2].CellType = "ComboBox";

gridControl1[2, 2].DataSource = this.dataSet11.Tables["Customers"];

gridControl1[2, 2].DisplayMember = "CustomerID";

gridControl1[2, 2].ValueMember = "CustomerID";

{% endhighlight %}

{% highlight vbnet %}



'Generates the choices.

Dim items As StringCollection = New StringCollection()

items.Add("One")

items.Add("Two")

items.Add("Three")

items.Add("Four")

items.Add("Five")



'Sets up the control. 

gridControl1(rowIndex, colIndex).CellType = "ComboBox"

gridControl1(rowIndex, colIndex).ChoiceList = items

gridControl1(rowIndex, colIndex).Text = "Five"

gridControl1(rowIndex, colIndex).CellType = "ComboBox"

gridControl1(rowIndex, colIndex).ExclusiveChoiceList = True



'Or uses a data source such as a table in a dataset.

gridControl1(2, 2).CellType = "ComboBox"

gridControl1(2, 2).DataSource = Me.dataSet11.Tables("Customers")

gridControl1(2, 2).DisplayMember = "CustomerID"

gridControl1(2, 2).ValueMember = "CustomerID"


{% endhighlight %}

 ![](Combo-Box_images/Combo-Box_img1.jpeg)



## AutoComplete Support for Combo Box in Edit Mode

Essential Grid provides AutoComplete support for combo box cells. AutoComplete feature is a filtered suggestion list presented as drop-down that is pulled from a mapped data source as the user enters text into a text box.  AutoComplete for combo box cells provide the following properties:

* AutoComplete—Displays suggestion in the text box. The content other than what you have typed will be highlighted. 
* AutoSuggest—Dynamically populates a list based on entered text.
* Both—Enables normal editable behavior.
* None—No operations will be performed in the text box and list box areas.

Use Case Scenarios

You can choose the suggestion instead of typing the entire content.

Table 19: Properties

<table>
<tr>
<th>
PROPERTIES </th><th>
DESCRIPTION </th><th>
TYPE </th><th>
DATA TYPE </th><th>
REFERENCE LINKS </th></tr>
<tr>
<td>
AutoComplete</td><td>
Gets a suggestion from the list based on the entered text. The suggestion will be highlighted. </td><td>
Enumerator</td><td>
N/A</td><td>
N/A</td></tr>
<tr>
<td>
AutoSuggest</td><td>
Dynamically populate a list based on the entered text.</td><td>
Enumerator</td><td>
N/A</td><td>
N/A</td></tr>
<tr>
<td>
Both</td><td>
Enables normal editable behavior.</td><td>
Enumerator</td><td>
N/A</td><td>
N/A</td></tr>
<tr>
<td>
None</td><td>
No operations will be performed in the text box and list box areas.</td><td>
Enumerator</td><td>
N/A</td><td>
N/A</td></tr>
</table>


##Enabling AutoComplete in EditMode for Combo Box Celltype



The following steps illustrate enabling AutoComplete in EditMode for a combo Box celltype:

1. Declare the Celltype as Combo Box as given in the following code:

{% highlight c# %}



this.gridControl1[RowIndex,ColIndex].CellType = GridCellTypeName.ComboBox;  

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1(RowIndex,ColIndex).CellType = GridCellTypeName.ComboBox
{% endhighlight %}


Set the Dropdown style as Editable.

{% highlight c# %}



this.gridControl1[RowIndex,ColIndex].DropDownStyle = GridDropDownStyle.Editable;

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1(RowIndex,ColIndex).DropDownStyle = GridDropDownStyle.Editable  
{% endhighlight %}

Set the GridComboSelectionOption using AutoCompleteInEditMode property:

 {% highlight vbnet %}



Me.gridControl1(RowIndex,ColIndex).AutoCompleteInEditMode = GridComboSelectionOptions.AutoSuggest

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1(RowIndex,ColIndex).AutoCompleteInEditMode = GridComboSelectionOptions.AutoSuggest
{% endhighlight %}




