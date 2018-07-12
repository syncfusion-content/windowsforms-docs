---
layout: post
title: Pivot Schema Designer | Windows Forms | Syncfusion
description: Pivot schema designer
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Pivot Schema Designer

The [Pivot schema designer](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~PivotSchemaDesigner.html) also known as pivot table field list allows to add, rearrange, filter and remove the pivot fields to show the data in pivot grid exactly the way as you desired.

Based on the data source bound to the pivot grid control, the pivot table field list will be automatically populated with the field names. The pivot table field list provides an Excel like appearance and behaviour.

Pivot schema designer consists of two sections such as follows:

* **Fields section**: Presents at the top portion for adding and removing pivot fields in the pivot grid.
* **Layout section**: Presents at the bottom portion for rearranging and repositioning the pivot fields in the pivot grid.

![](Pivot-Schema-Designer_images/Pivot-Schema-Designer_img1.png)

## Fields Section

The **fields section** contains the list of pivot fields present in the data source of pivot grid including Row, Column and Summary elements which is called as [PivotTableFieldList](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~PivotTableFieldList.html). A field will be added to the pivot grid if it is checked, or it will be removed from the pivot grid if it is unchecked. [PivotFields](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~PivotFields.html) which holds the collection of PivotItems which are not present in the pivot grid but available in the ItemSource. By default, fields will be added to the row label if checked, and added to the column label by simply dragging the field and dropping it onto the column label area. We also support filtering in PivotTable Field List. Filter popup will be opened while clicking on the expander icon in the right corner of each PivotTable Field List items.

![](Pivot-Schema-Designer_images/Pivot-Schema-Designer_img2.png)

## Layout Section

The layout section is used to rearrange and reposition the fields in a PivotGrid. It includes the following areas:

* Report Filter([GridFilterList](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~GridFilterList.html))
* Column Label([GridColumnList](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~GridColumnList.html))
* Row Label([GridRowList](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~GridRowList.html))
* Values([GridValueList](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~GridValueList.html))

![](Pivot-Schema-Designer_images/Pivot-Schema-Designer_img3.png)

### Report Filter

The report filter is used to filter the entire report based on the selected item in the report filter. The report filter pop-up window can be launched by clicking on the expander icon available in the right corner of each filter item.

### Column Label

The column label is used to display fields as columns at the top of a report. A column lower in position is nested within another column immediately above it in the PivotGrid.

### Row Label

The row label is used to display fields as rows at the top of a report. A row lower in position is nested within another row immediately above it in the PivotGrid

### Values

Values are used to display summary values.

## Pivot Computation Information window

The Pivot Computation Information window is used to change or edit value format and summary type.

![](Pivot-Schema-Designer_images/Pivot-Schema-Designer_img4.png)

### Properties

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
{{'[ShowPivotTableFieldList](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ShowPivotTableFieldList.html)'| markdownify }}</td><td>
Gets or sets a value indicating whether the PivotTableFieldList in the pivot grid control should be shown or not.</td><td>
Boolean</td><td>
Boolean</td><td>
</td></tr>
</table>

## Enabling the PivotSchemaDesigner

The PivotSchemaDesigner is a built-in control associated with the pivot grid control in Windows Forms. Users can enable or disable the schema designer through the Boolean property [ShowPivotTableFieldList](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ShowPivotTableFieldList.html).

The following code can be used to enable the schema designer in PivotGridControl. By default, the pivot schema designer is set as `false`.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.ShowPivotTableFieldList = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.ShowPivotTableFieldList = True

{% endhighlight %}

{% endtabs %}

![](Pivot-Schema-Designer_images/Pivot-Schema-Designer_img5.png)

## Displaying Calculations

PivotGrid provides support to show the calculation values either in column or in row. It can be achieved either by using the [ShowCalculationsAsColumns](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ShowCalculationsAsColumns.html) property of pivot grid control or through simple uncheck/check `ShowCalculations as Columns` option in PivotSchemaDesigner and it can be achieved through the [ShowCalculationsAsColumnCheckBox](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotSchemaDesigner~ShowCalculationsAsColumnCheckBox.html) property.

{% tabs %}

{% highlight c# %}

// Disable ShowCalculationsAsColumns in pivot grid control.
this.pivotGridControl1.ShowCalculationsAsColumns = false;

{% endhighlight %}

{% highlight vb %}

' Disable ShowCalculationsAsColumns in pivot grid control.
Me.pivotGridControl1.ShowCalculationsAsColumns = False

{% endhighlight %}

{% endtabs %}

![](Pivot-Schema-Designer_images/Pivot-Schema-Designer_img6.png)

## Defer Layout Update

PivotGrid supports whether the layout should be updated immediately after the pivot grid info updated or it should wait for a [Refresh()](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Refresh.html) method call.It can be achieved by setting the [DeferLayoutUpdate](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~DeferLayoutUpdate.html) property of pivot grid control or through simple uncheck/check `Defer layout Update` option in PivotSchemaDesigner.In PivotSchemaDesigner this option is enabled by using the [DeferLayoutUpdateCheckBox](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotSchemaDesigner~DeferLayoutUpdateCheckBox.html) and [DeferLayoutUpdateButton](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotSchemaDesigner~DeferLayoutUpdateButton.html) properties.

{% tabs %}

{% highlight c# %}

// Enables Defer Layout Update in pivot grid control.
this.pivotGridControl1.DeferLayoutUpdate = true;

{% endhighlight %}

{% highlight vb %}

' // Enables Defer Layout Update in pivot grid control.
Me.pivotGridControl1.DeferLayoutUpdate = True

{% endhighlight %}

{% endtabs %}







