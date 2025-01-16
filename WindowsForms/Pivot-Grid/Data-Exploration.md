---
layout: post
title: Data Exploration in Windows Forms Pivot Grid control | Syncfusion
description: Learn about Data Exploration support in Syncfusion® Windows Forms Pivot Grid control and more details.
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Data Exploration in Windows Forms Pivot Grid

Pivot grid provides support for drill down and drill up to visualize the pivot information in both abstract and detailed views. The row headers and column headers can be expanded or collapsed programmatically to explore the pivot data.

## Collapsing headers

By default, the pivot grid control loads the data by expanding all the row headers and column headers. To collapse either all the headers or specific headers, built-in methods are available in pivot grid.

### Collapsing all headers

Both the row and column headers can be collapsed simultaneously by using the [CollapseAllGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseAllGroups) method.

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

All the row headers can be collapsed by using the [CollapseAllRowGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseAllRowGroups) method.

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

All the column headers can be collapsed by using the [CollapseAllColumnGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseAllRowGroups) method.

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

Specific row header can be collapsed by specifying the name of corresponding pivot row item in the [CollapseRow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseRow_System_String_) method.

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

Specific column header can be collapsed by specifying the name of corresponding pivot column item in the [CollapseColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseColumn_System_String_) method.

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

The collection of row headers can be collapsed by specifying the list of pivot row item's names in the [CollapseRow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseRow_System_Collections_Generic_List_System_String__) method.

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

The collection of column headers can be collapsed by specifying the list of pivot column item's names in the [CollapseColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_CollapseColumn_System_Collections_Generic_List_System_String__) method.

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

* The **[Collapsing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html)** event occurs while collapsing the pivot item header. This event receives an argument namely [CollapsingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.CollapsingEventArgs.html), which contains the information about the collapsing pivot item.

* The **[Collapsed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html)** event occurs when the pivot item header is collapsed. This event receives an argument namely [CollapsedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.CollapsedEventArgs.html), which contains the information about the expanded pivot item.

## Expanding headers

Pivot grid supports to drill down the pivot item with the help of row headers and column headers. To expand either all the headers or specific headers, built-in methods are available in pivot grid.

### Expanding all headers

Both the row and column headers can be expanded simultaneously by using the [ExpandAllGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandAllGroups) method.

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

All the row headers can be expanded by using the [ExpandAllRowGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandAllRowGroups) method.

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

All the column headers can be expanded by using the [ExpandAllColumnGroups](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandAllColumnGroups) method.

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

Specific row header can be expanded by specifying the name of corresponding pivot row item in the [ExpandRow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandRow_System_String_) method.

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

Specific column header can be expanded by specifying the name of corresponding pivot column item in the [ExpandColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandColumn_System_String_) method.

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

The collection of row headers can be expanded by specifying the list of pivot row item's names in the [ExpandRow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandRow_System_Collections_Generic_List_System_String__) method.

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

The collection of column headers can be expanded by specifying the list of pivot column item's names in the [ExpandColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_ExpandColumn_System_Collections_Generic_List_System_String__) method.

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

* The **[Expanding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html)** event occurs while expanding the pivot item header. This event receives an argument namely [ExpandingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.ExpandingEventArgs.html), which contains the information about the expanding pivot item.

* The **[Expanded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html)** event occurs when the pivot item header is expanded. This event receives an argument namely [ExpandedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.ExpandedEventArgs.html), which contains the information about the expanded pivot item.

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Product Showcase\Customization Demo
