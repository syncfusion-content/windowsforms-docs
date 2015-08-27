---
layout: post
title: Browse-Only-Grid
description: browse-only grid
platform: windowsform
control: Grid
documentation: ug
---

# Browse-Only Grid

BrowseOnly property permits the Grid control to be set to a non-editable state without affecting its background appearance, displaying an unavailable effect, etc. This feature is available in GridDataBoundGrid and GridGrouping controls, and it is directly exposed under the controls' properties.

Applying this property will reflect in all cell types and will make the Grid non-editable. It affects the following cell types as follows:

* ComboBox—Items in the drop-down can be viewed, but cannot be selected.
* CheckBox—Items cannot be selected or deselected.
* Textbox—Text cannot be entered in default edit mode

DropDown cells like MonthCalendar, ColorEdit, etc. will behave the same as ComboBox cell type; items can be viewed, but cannot be selected.

Table 24: BrowseOnly property

<table>
<tr>
<th>
PROPERTY</th><th>
DESCRIPTION</th><th>
TYPE</th><th>
DATA TYPE</th></tr>
<tr>
<td>
BrowseOnly</td><td>
Gets or sets a value to determine whether the Grid should be available only for viewing and not for editing.</td><td>
Boolean </td><td>
 true/false</td></tr>
</table>


### Sample Link

     <Install Drive>\AppData\Local\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Cell Types\Editor Cell Demo



### Making a Grid Browse-Only

To make the Grid non-editable, the following property must be set to true:

{% highlight c# %}

 this.gridControl1.BrowseOnly = true;   
{% endhighlight %}


{% highlight vbnet %}

 Me.gridControl1.BrowseOnly = true
{% endhighlight %}



