---
layout: post
title: Cell-Selection
description: cell selection
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Cell Selection

The PivotGrid for Windows Forms supports cell selection where you can select grid value cells similar to Microsoft Excel. On cell selection, an event called PivotGridSelectionChanged will be triggered and the PivotGridSelectionChangedEventArgs will return an IEnumerable collection of column, row and value of the corresponding selected cell.



### Use Case Scenarios

Using the cell selection support, you can select the cells that can be copied to clipboard or notepad. You can perform custom operation on cell selection and also bind any control based on the selected cell values.



### Adding Cell Selection 

The following code snippets show how to create a PivotGrid and specify cell selection.

{% highlight c# %}

// Instantiating PivotGridControl
PivotGridControl pivotGridControl1 = new PivotGridControl();

// Adding PivotRows
pivotGridControl1.PivotRows.Add(new PivotItem { FieldHeader = "Product" });
pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "Date" });

// Adding PivotColumns
pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "Country" });
pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "State" });

// Adding PivotCalculations
pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName="Amount" , Format="C"});
pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Quantity", Format = "#,##0" });

// Enabling cell selection
this.pivotGridControl1.AllowSelection = false;

{% endhighlight %}
 {% highlight vbnet %}

' Instantiating PivotGridControl
Dim pivotGridControl1 As PivotGridControl = New PivotGridControl()

' Adding PivotRowspivotGridControl1.PivotRows.Add(New PivotItem With {.FieldHeader = "Product"})
pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "Date"})

' Adding PivotColumns
pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "Country"})
pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "State"})

' Adding PivotCalculations
pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName="Amount", .Format="C"})
pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Quantity", .Format = "#,##0"})

' Enabling cell selection
Me.pivotGridControl1.AllowSelection = False

{% endhighlight %}

![](Cell-Selection_images/Cell-Selection_img1.png)