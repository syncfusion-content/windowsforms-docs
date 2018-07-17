---
layout: post
title: Grid Layout | Windows Forms | Syncfusion
description: Layouts in pivot grid
platform: windowsforms
control: PivotGrid
documentation: ug
---

# Grid Layout

Pivot grid provides support for the following types of layout in order to display the values of pivot items.

* Normal Layout
* Flat Layout

## Normal layout

Normal layout allows the pivot grid control to display both the row values and column values added to it. By default, the normal layout is displayed in pivot grid control.

### Hiding subtotals

This feature allows users to have an abstract view of the data by hiding the subtotal values of pivot grid control. The [ShowSubTotals](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ShowSubTotals.html) property of pivot grid control is used to show or hide the subtotals based on the requirement.

Refer to the below code sample to hide all the subtotals in the pivot grid.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.ShowSubTotals = false;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.ShowSubTotals = False

{% endhighlight %}

{% endtabs %}

### Hiding grand totals

By default, the pivot grid displays grand total values for both column values and row values. In order to customize the display of grand total in pivot grid, the [ShowGrandTotals](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ShowGrandTotals.html) property is used.

Refer to the below code sample to hide all the grand totals in the pivot grid.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.ShowGrandTotals = false;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.ShowGrandTotals = False

{% endhighlight %}

{% endtabs %}

## Flat layout

Flat layout also called as "row pivots only mode", allows the pivot grid control to display only the column values added to it. In this row pivots only mode, the pivot grid displays the computational values as column values.

### Enabling flat layout

The [RowPivotsOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~RowPivotsOnly.html) property of pivot grid control is used to enable or disable the feature of row pivots only mode or flat layout.

Refer to the below code sample to enable the row pivots only mode in the pivot grid.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.RowPivotsOnly = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.RowPivotsOnly = True

{% endhighlight %}

{% endtabs %}

### Interactive features

Pivot grid control provides support for the following interactive options in row pivots only mode.

#### Filtering

Filtering options are available to restrict the display of records in the pivot grid control. This feature enables users to extract a subset of records that meet certain criteria by using the [AllowRowPivotFiltering](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~AllowFiltering.html) property.

Refer to the below code sample to enable filtering in row pivots only mode.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.AllowRowPivotFiltering = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.AllowRowPivotFiltering = True

{% endhighlight %}

{% endtabs %}

#### Sorting

To sort the calculation columns in pivot grid, the pivot grid provides sorting options in the flat layout. Sorting option can be enabled or disabled using [AllowSort](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~AllowSorting.html) property of pivot grid.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.AllowSorting = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.AllowSorting = True

{% endhighlight %}

{% endtabs %}

#### Pivot value chooser

The pivot value chooser is the popup used to list all the computational fields available in the data source while enabling the row pivots only mode. This popup enables users to add or remove pivot calculations at run time by checking and unchecking its appropriate check boxes.

To enable this feature programmatically, the [ShowPivotValueChooser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ShowPivotValueChooser.html) property of pivot grid must be set as true.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.ShowPivotValueChooser = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.ShowPivotValueChooser = True

{% endhighlight %}

{% endtabs %}

In order to show the pivot value chooser at run time, right click on the calculation field's header. Now, a context menu will be opened with "Pivot Value Chooser" option.

The pivot value chooser is opened, by selecting the context menu option that appears while right-clicking on any of the compuational column header cell, after enabling the `ShowPivotValueChooser` property.

### Sample Link

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Product Showcase\RowPivotsOnly Demo