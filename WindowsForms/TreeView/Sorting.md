---
layout: post
title: Sorting | Windows Forms | Syncfusion
description: Sorting
platform: windowsforms
control: TreeView 
documentation: ug
---

# Sorting

Sorting can be performed on the tree nodes using the Sort function and specifying the function to be performed on either the checkbox or tag or text values in ascending or descending order.

The Sort operation sorts only the level 1 nodes. To perform the function on the other levels of nodes, the SortWithChildNode property should be set to true. The sort function can be done based on the value type which can be specified using SortType to either the option of Checkbox or Tag or Text. The order in which the sort function has to be performed can be specified using the SortOrder that holds the values of Ascending or Descending.

_Table_ _916_: _Property Table_

<table>
<tr>
<th>
TreeNodeAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
SortOrder</td><td>
The TSortOrder property indicates the order of the sorting: Ascending,Descending, None.</td></tr>
<tr>
<td>
SortType</td><td>
The SortType property indicates the field. Nodes will be sorted based on the type of sorting.</td></tr>
</table>


{% highlight c# %}



treeNodeAdv9.SortOrder = System.Windows.Forms.SortOrder.Ascending;

treeNodeAdv9.SortType = Syncfusion.Windows.Forms.Tools.TreeNodeAdvSortType.CheckBox;

{% endhighlight %}

{% highlight vbnet %}



TreeNodeAdv9.SortOrder = System.Windows.Forms.SortOrder.Ascending

TreeNodeAdv9.SortType = Syncfusion.Windows.Forms.Tools.TreeNodeAdvSortType.CheckBox

{% endhighlight %}

Comparing Options for Sorting

* The CompareOptions property gives additional options of comparing the texts of the nodes.
* The Comparer property is an object that implements the IComparer interface. If you need to compare the nodes by some other field, create an object of this type, set it to the node and that node will use the object in comparing the subnodes. 

_Table_ _917_: Property Table_

<table>
<tr>
<th>
TreeNodeAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
CompareOptions</td><td>
Indicates the compare options used in the sorting of the nodes. The below are the options.IgnoreCase,IgnoreNonSpace,IgnoreSymbols,IgnoreKanaType,IgnoreWidth,OrdinalIgnoreCase,StringSort andOrdinal.</td></tr>
<tr>
<td>
Comparer</td><td>
Indicates the  object which compares two nodes.</td></tr>
</table>


{% highlight c# %}



treeNodeAdv9.CompareOptions = System.Globalization.CompareOptions.IgnoreCase;

treeNodeAdv9.Comparer = null;

{% endhighlight %}

{% highlight vbnet %}



TreeNodeAdv9.CompareOptions = System.Globalization.CompareOptions.IgnoreCase;

TreeNodeAdv9.Comparer = Null

{% endhighlight %}


![](Concepts-and--Features_images/Concepts-and--Features_img61.png)



{% seealso %}
How to Sort all the nodes in the TreeViewAdv control?
{% endseealso %}

