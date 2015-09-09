---
layout: post
title: Multiple Columns
description: Multiple Columns
platform: WindowsForms
control: AutoComplete
documentation: ug
---



# Multiple Columns

The AutoComplete control allows users to display multiple columns of information for each matching entry in the AutoSuggest mode of operation. Columns can be configured through AutoComplete.Columns property. 

Table 121: Property Table

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
Columns</td><td>
Specifies the collection of columns in the auto complete dropdown, when AutoCompleteModes enumerator value is AutoSuggest. Each column is represented by an AutoCompleteDataColumnInfo object. This class includes a definition for specifying whether the column is the matching column or the image column. </td></tr>
<tr>
<td>
MatchMode</td><td>
Specifies the modes in which the AutoCompleteControl fills the history list for the current text in the current edit control.The values are, {{ 'Manual and'  | markdownify }}{{ ';Automatic (default).'| markdownify }}</td></tr>
</table>


 ![](AutoComplete-Controls-Images/Overview_img32.jpeg) 




<table>
<tr>
<th>
AutoCompleteDataColumn Properties</th><th>
Description</th></tr>
<tr>
<td>
ColumnHeaderText</td><td>
Represents the text for the column header.</td></tr>
<tr>
<td>
MatchingColumn</td><td>
Column that will be used by the AutoComplete control to perform matching with the current content (at runtime) of the target control.</td></tr>
<tr>
<td>
ImageColumn</td><td>
Column which is filled with data that is just the index into the image list that has been assigned to the AutoComplete control. See Image Settings for Details.</td></tr>
<tr>
<td>
MinColumnWidth</td><td>
Set minimum width for the column.</td></tr>
<tr>
<td>
Visible</td><td>
Shows or hides the column at runtime.</td></tr>
</table>



{% highlight C# %}



this.autoComplete2.Columns.Add(this.autoCompleteDataColumnInfo1);

this.autoComplete2.Columns.Add(this.autoCompleteDataColumnInfo2);

this.autoComplete2.ShowColumnHeader = true;

this.autoComplete2.MatchMode = AutoCompleteMatchModes.Automatic;



this.autoCompleteDataColumnInfo1.ColumnHeaderText = "Title";

this.autoCompleteDataColumnInfo1.MatchingColumn = true;

this.autoCompleteDataColumnInfo1.Visible = true;
{% endhighlight %}


{% highlight vbnet %}





Me.autoComplete2.Columns.Add(Me.autoCompleteDataColumnInfo1)

Me.autoComplete2.Columns.Add(Me.autoCompleteDataColumnInfo2)

Me.autoComplete2.ShowColumnHeader = True

Me.autoComplete2.MatchMode = AutoCompleteMatchModes.Automatic



Me.autoCompleteDataColumnInfo1.ColumnHeaderText = "Title"

Me.autoCompleteDataColumnInfo1.MatchingColumn = True

Me.autoCompleteDataColumnInfo1.Visible = True
{% endhighlight %}


 ![](AutoComplete-Controls-Images/Overview_img33.jpeg) 


Column can be added matched using external sources also. A sample which demonstrates this feature is available in the below location.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

While using an external datasource, the Columns property can be initially refreshed by clicking on the RefreshColumns verb visible in the designer.



N> We can also add images to the dropdown items using internal source and external source. See Image Settings for details.

{% seealso %}

 [Source for AutoComplete Control](/windowsforms/autocomplete/datasource#source-for-autocomplete-control), [How to match items in all the columns using AutoCompleteControl?](http://docs.syncfusion.com/windowsforms/autocomplete/faq/how-to-match-items-in-all-the-columns-using-autocompletecontrol)
 
{% endseealso %}