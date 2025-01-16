---
layout: post
title: Export Summary as Caption in Windows Forms GridGrouping | Syncfusion
description: Learn about Export Summary as Caption support in Syncfusion® Windows Forms GridGrouping control, its elements and more details.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Export Summary as Caption in Windows Forms GridGrouping

This feature enables you to export the summary as caption while exporting GridGroupingControl to Excel. 



<table>
<tr>
<th>PROPERTY </th><th>
DESCRIPTION </th><th>
TYPE </th><th>
DATA TYPE </th><th>
REFERENCE LINKS </th></tr>
<tr>
<td>
ExportCaptionSummary</td><td>
This property exports summary as caption.  </td><td>
GridGroupingControl</td><td>
Boolean </td><td>
NA </td></tr>
</table>


Exporting Summary as Caption

You can export summary as caption using _ExportCaptionSummary_ property. The following code illustrates this:

{% tabs %}
{% highlight C# %}  
converter.ExportCaptionSummary = true;
{% endhighlight %}
{% endtabs %}

 ![Export-Summary-as-Caption_images1](Export-Summary-as-Caption_images/Export-Summary-as-Caption_img1.png) 



## Searching for text in multiple columns

This feature can be used to perform searches either in specified columns or in all the grid columns. Only the rows containing search text will be filtered and displayed. 

Searches can be performed in two modes:

1.Search for text in all columns.

2.Search for text in particular columns.



<table>
<tr>
<th>METHOD</th>
<th>PROTOTYPES</th>
<th>DESCRIPTION</th>
</tr>
<tr>
<td rowspan = "2">
Search()</td><td>
this.gridGroupingControl1.TableDescriptor.Search("SearchText", List[GridColumnDescriptor]);</td><td rowspan = "2">
It is called for performing search operation in the columns. </td></tr>
<tr>
<td>
this.gridGroupingControl1.TableDescriptor.Search("SearchText");</td></tr>
</table>

### Searching for text in all columns

Here, text is provided as a parameter in the Search method in TableDescriptor. It searches for the text in all the columns and displays the rows that contain the word.

The following code sample illustrates how to perform the search operation:

{% tabs %}
{% highlight C# %}  
this.gridGroupingControl1.TableDescriptor.Search("Duke");
{% endhighlight %}
{% highlight vbnet %} 
 Me.gridGroupingControl1.TableDescriptor.Search("Duke");
{% endhighlight %} 
{% endtabs %}

### Searching for text in particular columns

We can perform this operation by passing columns that need to be searched into the Search() method. In this case, we need to create a list that will hold columns that need to be searched for that particular text. The search text and the list of columns that will be searched are passed as parameters for performing the operation. The following code illustrates this:

{% tabs %}
{% highlight C# %}  
List<GridColumnDescriptor> list= new List<GridColumnDescriptor>();
list.Add(this.gridGroupingControl1.TableDescriptor.Columns[1]);
list.Add(this.gridGroupingControl1.TableDescriptor.Columns[3]);
this.gridGroupingControl1.TableDescriptor.Search("Duke", list);
{% endhighlight %}
{% highlight vbnet %} 
Dim list As New List(Of GridColumnDescriptor)()
list.Add(Me.gridGroupingControl1.TableDescriptor.Columns(1))
list.Add(Me.gridGroupingControl1.TableDescriptor.Columns(3))
Me.gridGroupingControl1.TableDescriptor.Search("Duke", list)
{% endhighlight %} 
{% endtabs %}
