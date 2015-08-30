---
layout: post
title: Grid-List-Control
description: grid list control
platform: windowsform
control: Grid
documentation: ug
---

# Grid List Control

GridListControl cell type allows display of drop-down list that can contain multiple columns as an image. It uses DataSource, DisplayMember and ValueMember properties to control what is shown in the multiple columns. DataSource member is generally stored in parent style, and this member is then shared among grid cells which might use DisplayMember and ValueMember properties to customize their look if needed.

Table 20: GridStyleInfor Properties

<table>
<tr>
<th>
Gridstyleinfo Property</th><th>
Description</th></tr>
<tr>
<td>
DisplayMember</td><td>
Any object that implements either IList or IListSource. These include DataTable, DataView, or ArrayList objects.</td></tr>
<tr>
<td>
ValueMember</td><td>
Indicates the column from the data source that is to be used for the value of the cell.</td></tr>
<tr>
<td>
ExclusiveChoiceList</td><td>
Determines whether the user is required to select an item in the drop-down list.</td></tr>
<tr>
<td>
MultiColumn</td><td>
Determines whether all the columns in the data source are displayed or if the single DisplayMember column is displayed.</td></tr>
</table>


Let us assume you have an ArrayList of US State objects. When you set the cell type to GridListControl, you will get the output as displayed in the screen shot. 

{% highlight c# %}



//Sets up the data source.

//Here "USStates" is an arraylist of state objects, each of which have the properties LongName and ShortName.

gridControl1.TableStyle.DataSource = USStates;

gridControl1.TableStyle.DisplayMember = "LongName";

gridControl1.TableStyle.ValueMember = "ShortName";



gridControl1[rowIndex, colIndex + 2].CellType = "GridListControl";

gridControl1[rowIndex, colIndex + 2].Text = "Wisconsin";

gridControl1[rowIndex, colIndex + 2].ExclusiveChoiceList = true;

{% endhighlight %}

{% highlight vbnet %}



'Sets up the data source.

'Here "USStates" is an arraylist of state objects each of which, have the properties LongName and ShortName.

gridControl1.TableStyle.DataSource = USStates

gridControl1.TableStyle.DisplayMember = "LongName"

gridControl1.TableStyle.ValueMember = "ShortName"



gridControl1(rowIndex, colIndex + 2).CellType = "GridListControl"

gridControl1(rowIndex, colIndex + 2).Text = "Wisconsin"

gridControl1(rowIndex, colIndex + 2).ExclusiveChoiceList = True

{% endhighlight %}

 ![](Adding-Special-Controls-to-Grid-Cells_images/Adding-Special-Controls-to-Grid-Cells_img8.png)



A sample which demonstrates Grid List Control cell type is available in the following sample installation path.

<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Grid List Control



