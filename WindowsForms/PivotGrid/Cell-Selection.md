---
layout: post
title: Cell-Selection | Windows Forms | Syncfusion
description: cell selection
platform: windowsforms
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

## Excel 2016 like Selection Frame
2016 Excel like selection frame can be enabled by setting the [ExcelLikeSelectionFrame](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot analysis/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~ExcelLikeSelectionFrame.html#) and [ExcelLikeCurrentCell](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot analysis/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~ExcelLikeCurrentCell.html#) properties to `true`. The [SelectionFrameOption](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~SelectionFrameOption.html#) property can be used to enable the 2016 Excel like selection frame or 2003 Excel like selection fame by using [SelectionFrameOption](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.SelectionFrameOption.html#) enumeration. The default value of the `SelectionFrameOption` property is `SelectionFrameOption.Excel2016`.

The `SelectionFrameOption` enumeration has the following types of selection frame options, 

 [SelectionFrameOption.Excel2003](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.SelectionFrameOption.html#) - It is used the enable the 2003 Excel like selection frame for the grid. 
 [SelectionFrameOption.Excel2016](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.SelectionFrameOption.html#) - It is used the enable the 2016 Excel like selection frame for the grid.
{% tabs %}
{% highlight c# %}
//Enable the Excel like selection frame for PivotGridControl
this.pivotGridControl1.TableModel.Options.ExcelLikeSelectionFrame = true;
//Enable the Excel like current cell for PivotGridControl
this.pivotGridControl1.TableModel.Options.ExcelLikeCurrentCell = true;
{% endhighlight %}
{% highlight vb %}
'Enable the Excel like selection frame for PivotGridControl
Me.pivotGridControl1.TableModel.Options.ExcelLikeSelectionFrame = True
'Enable the Excel like current cell for PivotGridControl
Me.pivotGridControl1.TableModel.Options.ExcelLikeCurrentCell = True
{% endhighlight %}
{% endtabs %}
![](Cell-Selection_images/PivotGrid_img1.png)

### Setting the 2003 Excel like Selection Frame
2003 Excel like Selection Frame can be enabled by setting the `SelectionFrameOption` property to `SelectionFrameOption.Excel2003`.
{% tabs %}
{% highlight c# %}
//Enable the 2003 Excel like selection frame.
this.pivotGridControl1.TableModel.Options.SelectionFrameOption = SelectionFrameOption.Excel2003;
{% endhighlight %}
{% highlight vb %}
'Enable the 2003 Excel like selection frame.
Me.pivotGridControl1.TableModel.Options.SelectionFrameOption = SelectionFrameOption.Excel2003
{% endhighlight %}
{% endtabs %}
![](Cell-Selection_images/PivotGrid_img2.png)

### Changing the Selection Border Brush
The selection border brush for 2016 Excel like selection frame can be changed by using the [SelectionBorderBrush](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~SelectionBorderBrush.html#) property.
{% tabs %}
{% highlight c# %}
//Sets the selection border brush for 2016 Excel-like selection frame.
this.pivotGridControl1.TableModel.Options.SelectionBorderBrush = new SolidBrush(Color. DarkGreen);
{% endhighlight %}
{% highlight vb %}
'Sets the selection border brush for 2016 Excel-like selection frame.
Me.pivotGridControl1.TableModel.Options.SelectionBorderBrush = New SolidBrush(Color. DarkGreen)
{% endhighlight %}
{% endtabs %}
![](Cell-Selection_images/PivotGrid_img3.png)

### Changing the Selection Border Thickness
The selection border thickness for 2016 Excel like selection frame can be changed by using the [SelectionBorderThickness](https://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~SelectionBorderThickness.html#) property.
{% tabs %}
{% highlight c# %}
//Set the selection border thickness for 2016 Excel-like selection frame.
this.pivotGridControl1.TableModel.Options.SelectionBorderThickness = 4;
{% endhighlight %}
{% highlight vb %}
'Set the selection border thickness for 2016 Excel-like selection frame.
Me.pivotGridControl1.TableModel.Options.SelectionBorderThickness = 4
{% endhighlight %}
{% endtabs %}
![](Cell-Selection_images/PivotGrid_img4.png)

