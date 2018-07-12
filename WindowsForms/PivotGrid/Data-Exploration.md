---
layout: post
title: Data Exploration | Windows Forms | Syncfusion
description: Data exploration
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Data Exploration

Pivot grid provides support for drill down and drill up to visualize the pivot information in both abstract and detailed views. The row headers and column headers can be expanded or collapsed programmatically to explore the pivot data.

## Collapsing headers

By default, the pivot grid control loads the data by expanding all the row headers and column headers. To collapse either all the headers or specific headers, built-in methods are availabe in pivot grid.

### Collapsing all headers

Both the row and column headers can be collapsed simultaneously by using the [CollapseAllGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseAllGroups.html) method.

Refer to the below code sample to collapse all the headers including row headers and column headers.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.CollapseAllGroups();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.CollapseAllGroups()

{% endhighlight %}

{% endtabs %}

#### Collapsing all row headers

All the row headers can be collapsed by using the [CollapseAllRowGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseAllRowGroups.html) method.

Refer to the below code sample to collapse all the row headers.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.CollapseAllRowGroups();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.CollapseAllRowGroups()

{% endhighlight %}

{% endtabs %}

#### Collapsing all column headers

All the column headers can be collapsed by using the [CollapseAllColumnGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseAllRowGroups.html) method.

Refer to the below code sample to collapse all the row headers.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.CollapseAllColumnGroups();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.CollapseAllColumnGroups()

{% endhighlight %}

{% endtabs %}

### Collapsing specific headers

### Collapsing specific row header

Specific row header can be collapsed by specifying the name of corresponding pivot row item in the [CollapseRow](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseRow(String).html) method.

Refer to the below code sample to collapse the pivot row item which specifies 'Bike'.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.CollapseRow("Bike");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.CollapseRow("Bike")

{% endhighlight %}

{% endtabs %}

### Collapsing specific column header

Specific column header can be collapsed by specifying the name of corresponding pivot column item in the [CollapseColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseColumn(String).html) method.

Refer to the below code sample to collapse the pivot column item which specifies 'Canada'.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.CollapseColumn("Canada");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.CollapseColumn("Canada")

{% endhighlight %}

{% endtabs %}

#### Collapsing collection of row headers

The collection of row headers can be collapsed by specifying the list of pivot row item's names in the [CollapseRow](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseRow(List%7BString%7D).html) method.

Refer to the below code sample to collapse the pivot row items of 'Bike' and 'Car'.

{% tabs %}

{% highlight c# %}

var pivotRows = new List<string>();
pivotRows.AddRange(new string[] { "Bike", "Car"});
this.pivotGridControl1.TableControl.CollapseRow(pivotRows);

{% endhighlight %}

{% highlight vb %}

Dim pivotRows = New List(Of String)()
pivotRows.AddRange(New String() {"Bike", "Car"})
Me.pivotGridControl1.TableControl.CollapseRow(pivotRows)

{% endhighlight %}

{% endtabs %}

#### Collapsing collection of column headers

The collection of column headers can be collapsed by specifying the list of pivot column item's names in the [CollapseRow](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~CollapseRow(List%7BString%7D).html) method.

Refer to the below code sample to collapse the pivot column items of 'Canada' and 'Australia'.

{% tabs %}

{% highlight c# %}

var pivotColumns = new List<string>();
pivotColumns.AddRange(new string[] { "Canada", "Australia" });
this.pivotGridControl1.TableControl.CollapseColumn(pivotColumns);

{% endhighlight %}

{% highlight vb %}

Dim pivotColumns = New List(Of String)()
pivotColumns.AddRange(New String() {"Canada", "Australia"})
Me.pivotGridControl1.TableControl.CollapseColumn(pivotColumns)

{% endhighlight %}

{% endtabs %}

### Events

* [Collapsing](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~Collapsing_EV.html) event occurs while collapsing the pivot item header. This event receives an argument namely [CollapsingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.CollapsingEventArgs.html), which contains the information about the collapsing pivot item.

* [Collapsed](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~Collapsed_EV.html) event occurs when the pivot item header is collapsed. This event receives an argument namely [CollapsedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.CollapsedEventArgs.html), which contains the information about the expanded pivot item.

While collapsing any header of a pivot item, an event called `Collapsing` will be triggered and the [CollapsingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.CollapsingEventArgs.html) returns an instance of the`PivotCellInfo`.

When the headers completed the collapsing operation, an event called `Collapsed` will be triggered and the [CollapsedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.CollapsedEventArgs.html) returns an instance of
the `PivotCellInfo`.

## Expanding headers

Pivot grid supports to drill down the pivot item with the help of row headers and column headers. To expand either all the headers or specific headers, built-in methoods are available in pivot grid.

### Expanding all headers

Both the row and column headers can be expanded simultaneously by using the [ExpandAllGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandAllGroups.html) method.

Refer to the below code sample to expand all the headers including row headers and column headers.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.ExpandAllGroups();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.ExpandAllGroups()

{% endhighlight %}

{% endtabs %}

#### Expanding all row headers

All the row headers can be expanded by using the [ExpandAllRowGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandAllRowGroups.html) method.

Refer to the below code sample to expand all the row headers.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.ExpandAllRowGroups();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.ExpandAllRowGroups()

{% endhighlight %}

{% endtabs %}

#### Expanding all column headers

All the column headers can be expanded by using the [ExpandAllColumnGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandAllColumnGroups.html) method.

Refer to the below code sample to expand all the column headers.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.ExpandAllColumnGroups();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.ExpandAllColumnGroups()

{% endhighlight %}

{% endtabs %}

### Expanding specific headers

#### Expanding specific row header

Specific row header can be expanded by specifying the name of corresponding pivot row item in the [ExpandRow](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandRow(String).html) method.

Refer to the below code sample to expand the pivot row item which specifies 'Bike'.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.ExpandRow("Bike");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.ExpandRow("Bike")

{% endhighlight %}

{% endtabs %}

#### Expanding specific column header

Specific column header can be expanded by specifying the name of corresponding pivot column item in the [ExpandColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandColumn(String).html) method.

Refer to the below code sample to expand the pivot column item which specifies 'Canada'.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.ExpandColumn("Canada");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.ExpandColumn("Canada")

{% endhighlight %}

{% endtabs %}

#### Expanding collection of row headers

The collection of row headers can be expanded by specifying the list of pivot row item's names in the [ExpandRow](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandRow(List%7BString%7D).html) method.

Refer to the below code sample to expand the pivot row items of 'Bike' and 'Car'.

{% tabs %}

{% highlight c# %}

var pivotRowItems = new List<string>();
pivotRows.AddRange(new string[] { "Bike", "Car"});
this.pivotGridControl1.TableControl.ExpandRow(pivotRowItems);

{% endhighlight %}

{% highlight vb %}

Dim pivotRowItems = New List(Of String)()
pivotRows.AddRange(New String() {"Bike", "Car"})
Me.pivotGridControl1.TableControl.ExpandRow(pivotRowItems)

{% endhighlight %}

{% endtabs %}

#### Expanding collection of column headers

The collection of column headers can be expanded by specifying the list of pivot column item's names in the [ExpandColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~ExpandColumn(List%7BString%7D).html) method.

Refer to the below code sample to expand the pivot column items of 'Canada' and 'Australia'.

{% tabs %}

{% highlight c# %}

var pivotColumnItems = new List<string>();
pivotColumns.AddRange(new string[] { "Canada", "Australia" });
this.pivotGridControl1.TableControl.ExpandColumn(pivotColumnItems);

{% endhighlight %}

{% highlight vb %}

Dim pivotColumnItems = New List(Of String)()
pivotColumns.AddRange(New String() {"Canada", "Australia"})
Me.pivotGridControl1.TableControl.ExpandRow(pivotColumnItems)

{% endhighlight %}

{% endtabs %}

### Events

* [Expanding](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~Expanding_EV.html) event occurs while expanding the pivot item header. This event receives an argument namely [ExpandingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.ExpandingEventArgs.html), which contains the information about the expanding pivot item.

* [Expanded](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~Expanded_EV.html) event occurs when the pivot item header is expanded. This event receives an argument namely [ExpandedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.ExpandedEventArgs.html), which contains the information about the expanded pivot item.

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Product Showcase\Customization Demo