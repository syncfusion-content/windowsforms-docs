---
layout: post
title: Image Settings | WindowsForms | Syncfusion
description: Image Settings
platform: WindowsForms
control: AutoComplete
documentation: ug
---

# Image Settings

You can add a dropdown item with image to the AutoComplete popup, through the AutoComplete.AddHistoryItem method. An image list should be associated with AutoComplete control for this purpose. Specify the item text and the image index in this method.

<table> 
<tr>
<th>
AutoComplete Method</th><th>
Description</th></tr>
<tr>
<td>
AddHistoryItem</td><td>
Adds item to the internal history of the AutoComplete control. The parameters are,{{ 'newItemText' | markdownify }} - Text for the dropdown item.{{ 'ImageIndexValue' | markdownify }} - Index of the image for the particular item.</td></tr>
</table>




{% highlight C# %}



this.autoCompleteDataColumnInfo1.ColumnHeaderText = "Title";

this.autoCompleteDataColumnInfo1.ImageColumn = false;

this.autoCompleteDataColumnInfo1.MatchingColumn = true;

this.autoCompleteDataColumnInfo1.Visible = true;



this.autoCompleteDataColumnInfo2.ColumnHeaderText = "Size";

this.autoCompleteDataColumnInfo2.ImageColumn = true;

this.autoCompleteDataColumnInfo2.MatchingColumn = false;

this.autoCompleteDataColumnInfo2.Visible = true;



this.autoComplete1.AddHistoryItem("User Guide", 3);

this.autoComplete1.AddHistoryItem("User Item", 2);

{% endhighlight %}




{% highlight vbnet %}


Me.autoCompleteDataColumnInfo1.ColumnHeaderText = "Title"

Me.autoCompleteDataColumnInfo1.ImageColumn = False

Me.autoCompleteDataColumnInfo1.MatchingColumn = True

Me.autoCompleteDataColumnInfo1.Visible = True



Me.autoCompleteDataColumnInfo2.ColumnHeaderText = "Size"

Me.autoCompleteDataColumnInfo2.ImageColumn = True

Me.autoCompleteDataColumnInfo2.MatchingColumn = False

Me.autoCompleteDataColumnInfo2.Visible = True



Me.autoComplete1.AddHistoryItem("User Guide", 3)

Me.autoComplete1.AddHistoryItem("User Item", 2)

{% endhighlight %}

 ![](AutoComplete-Controls-Images/Overview_img35.jpeg) 


## Items with Images Through External DataSource

Items with images can be added to the AutoCompletePopup, also using external datasource like XML file. A sample that demonstrates the implementation of external datasource is available in the following location. 

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

While using an external datasource, the Columns property can be initially refreshed by clicking the _Refresh Columns_ verb, visible in the Designer.

{% seealso %}
 
[Multiple Columns](http://docs.syncfusion.com/windowsforms/autocomplete/multiple-columns)

 {% endseealso %}