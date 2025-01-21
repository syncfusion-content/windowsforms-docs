---
layout: post
title: Sorting in Windows Forms MultiColumn TreeView control | Syncfusion®
description: Learn about Sorting support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Sorting in Windows Forms MultiColumn TreeView
	
Sorting can be performed on the tree nodes using the Sort function and specifying the function to be performed on either the checkbox or tag or text values in ascending or descending order.

The Sort operation sorts only the level 1 nodes. To perform the function on the other levels of nodes, the `SortWithChildNode` property should be set to true. The sort function can be performed using the Sort method in Tree node where sort order can be defined as an argument in the method.

**Method Table**

<table>
<tr>
<th>
TreeNodeAdv Collection Method</th><th>
Description</th></tr>
<tr>
<td>
Sort (SortOrder order)</td><td>
The SortOrder property indicates the order of the sorting: Ascending, Descending, None.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

// Sort method with Descending order as argument
this.MultiColumnTreeView1.Nodes.Sort(SortOrder.Descending);

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.Nodes.Sort(SortOrder.Descending)

{% endhighlight %}

{% endtabs %}

The sort function can be done based on the value type which can be specified using SortType to either the option of Checkbox or Tag or Text. The order in which the sort function has to be performed can be specified using the SortOrder that holds the values of Ascending or Descending.

<table>
<tr>
<th>
TreeNodeAdv Property</th><th>
Description</th></tr>
<tr>
<td>
SortOrder</td><td>
The SortOrder property indicates the order of the sorting: Ascending, Descending, None.</td></tr>
<tr>
<td>
SortType</td><td>
The SortType property indicates the field. Nodes will be sorted based on the type of sorting.</td></tr>
</table>

{% tabs %}

{% highlight c# %}


this.MultiColumnTreeView1.Nodes[0].SortType = Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvSortType.CheckBox;

this.MultiColumnTreeView1.Nodes[0].SortOrder = SortOrder.Descending;

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.Nodes(0).SortType = Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvSortType.CheckBox

Me.MultiColumnTreeView1.Nodes(0).SortOrder = SortOrder.Descending

{% endhighlight %}

{% endtabs %}

* Sort in Ascending 

![Sorting_img1](Sorting_Images/Sorting_img1.jpg)

* Sort in Descending

![Sorting_img2](Sorting_Images/Sorting_img2.jpg)

## Comparing Options for Sorting

The CompareOptions property gives additional options of comparing the texts of the nodes.
The Comparer property is an object that implements the IComparer interface. If you need to compare the nodes by some other field, create an object of this type, set it to the node and that node will use the object in comparing the sub nodes.

**Property Table**

<table>
<tr>
<th>
TreeNodeAdv Property</th><th>
Description</th></tr>
<tr>
<td>
CompareOptions</td><td>
Indicates the compare options used in the sorting of the nodes.
  <li>IgnoreCase</li>
  <li>IgnoreKanaType</li>
  <li>IgnoreNonSpace</li>
  <li>IgnoreSymbols</li>
  <li>IgnoreType</li>
  <li>IgnoreWidth</li>
  <li>None</li>
  <li>Ordinal</li>
  <li>OrdinalIgnoreCase</li>
  <li>StringSort </li>
</td></tr>
<tr>
<td>
Comparer</td><td>
Indicates the object which compares two nodes.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

node.CompareOptions = System.Globalization.CompareOptions.IgnoreCase;
node.Comparer = null;

{% endhighlight %}

{% highlight vb %}

node.CompareOptions = System.Globalization.CompareOptions.IgnoreCase
node.Comparer = Nothing

{% endhighlight %}

{% endtabs %}
