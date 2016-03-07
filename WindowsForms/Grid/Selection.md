---
layout: post
title: Selection of GridControl for Syncfusion Essential Windows Forms
description: This section explains about what are the selection modes available for GridControl and its usabilities.
platform: windowsforms
control: GridControl
documentation: ug
---
# Selection 

The selection is the process of highlighting. This section will explain about the types of selection available for GridControl and its usability’s. 

## Range selection

The particular range of cells/rows/columns/table in the grid can be selected by setting the [AllowSelection](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~AllowSelection.html#) property to the appropriate [GridSelectionFlags](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridSelectionFlags.html#) enumeration. 

{% tabs %}
{% highlight c# %}
//Enable the Range Selection 
this.gridControl1.AllowSelection = GridSelectionFlags.Any;
{% endhighlight %}

{% highlight vb %}
'Enable the Range Selection 
Me.gridControl1.AllowSelection = GridSelectionFlags.Any
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img1.jpeg)


## Record Selection

The [ListBoxSelectionMode](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~ListBoxSelectionMode.html#) is used to select the range of rows on clicking the cells inside the grid. The [SelectionMode](https://msdn.microsoft.com/en-us/library/system.windows.forms.selectionmode(v=vs.100).aspx#) enumeration has provide the options to set the type of selection mode. 

{% tabs %}
{% highlight c# %}
// To set MultiSimple ListBox Selection Mode 
this.gridControl1.ListBoxSelectionMode = SelectionMode.MultiSimple;
{% endhighlight %}

{% highlight vb %}
' To set MultiSimple ListBox Selection Mode 
Me.gridControl1.ListBoxSelectionMode = SelectionMode.MultiSimple
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img2.jpeg)


## Adding Selection

In the GridControl the selections are maintained in the [SelectedRanges](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableModel~SelectedRanges.html#) collection. To add the selection for particular range of cells, add the range into the `SelectedRanges` collection. 

{% tabs %}
{% highlight c# %}
//Adding the range of cells to the SelectedRanges
this.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Cells(2, 2, 5, 4));
{% endhighlight %}

{% highlight vb %}
'Adding the range of cells to the SelectedRanges
Me.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Cells(2, 2, 5, 4))
{% endhighlight %}
{% endtabs %}

User can also add the selection by using the following code snippet,

{% tabs %}
{% highlight c# %}
//Adding the range of cells to the selection
this.gridControl1.Selections.Add(GridRangeInfo.Cells(2, 2, 5, 4));
{% endhighlight %}

{% highlight vb %}
'Adding the range of cells to the selection
Me.gridControl1.Selections.Add(GridRangeInfo.Cells(2, 2, 5, 4))
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img3.jpeg)


### Adding Multiple Selected Ranges

To have the multiple selected ranges in the GirdControl, add the list of ranges into the [GridRangeInfoList](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRangeInfoList.html#) collection. 

{% tabs %}
{% highlight c# %}
//Add Selection to the multiple ranges
this.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Cells(3, 3, 3, 4));

this.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Cols(1, 1));

this.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Row(5));
{% endhighlight %}

{% highlight vb %}
'Add Selection to the multiple ranges
Me.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Cells(3, 3, 3, 4))

Me.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Cols(1, 1))

Me.gridControl1.Model.SelectedRanges.Add(GridRangeInfo.Row(5))
{% endhighlight %}
{% endtabs %}

The following screen shot shows the grid with multiple selected range,

![](Selection_images/Selection_img4.jpeg)


## Clearing Selection

To clear all the selections from the grid, use the [Selections.Clear](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelSelections~Clear.html#) method.

{% tabs %}
{% highlight c# %}
//To clear the selections from the GridControl
this.gridControl1.Selections.Clear();
{% endhighlight %}

{% highlight vb %}
'To clear the selections from the GridControl
Me.gridControl1.Selections.Clear()
{% endhighlight %}
{% endtabs %}

### Remove Range from Selection

To clear the particular range of cells from the selection, use the [Remove](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelSelections~Remove.html#) or `RemoveAt` methods.

{% tabs %}
{% highlight c# %}
//Remove the range at the given index from the Selection 
this.gridControl1.Selections.Ranges.RemoveAt(1);

//Remove particular range from the selection
GridRangeInfo range1 = this.gridControl1.Model.SelectedRanges[0];

this.gridControl1.Selections.Ranges.Remove(range1);
{% endhighlight %}

{% highlight vb %}
'Remove the range at the given index from the Selection 
Me.gridControl1.Selections.Ranges.RemoveAt(1)

'Remove particular range from the selection
Dim range1 As GridRangeInfo = Me.gridControl1.Model.SelectedRanges(0)

Me.gridControl1.Selections.Ranges.Remove(range1)
{% endhighlight %}
{% endtabs %}

### Preventing Selection using event

When the selection is added to the grid, it will be notified by using the [SelectionChanged](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~SelectionChanged_EV.html#) event. This event can be used to prevent the selection for the particular range of cells as of follows,

{% tabs %}
{% highlight c# %}
//To prevent the selection from particular range of cells
this.gridControl1.SelectionChanging +=gridControl1_SelectionChanging;

void gridControl1_SelectionChanging(object sender, GridSelectionChangingEventArgs e)

{

//prevent cell from selection
if (e.Range.Contains(GridRangeInfo.Cell(2, 2)))

e.Cancel = true;

//prevent column from selection
if (e.Range.IntersectsWith(GridRangeInfo.Col(3)))

e.Cancel = true;

}
{% endhighlight %}

{% highlight vb %}
'To prevent the selection from particular range of cells
Private Me.gridControl1.SelectionChanging += AddressOf gridControl1_SelectionChanging

Private Sub gridControl1_SelectionChanging(ByVal sender As Object, ByVal e As GridSelectionChangingEventArgs)

'prevent cell from selection
If e.Range.Contains(GridRangeInfo.Cell(2, 2)) Then

e.Cancel = True

End If

'prevent column from selection
If e.Range.IntersectsWith(GridRangeInfo.Col(3)) Then

e.Cancel = True

End If

End Sub
{% endhighlight %}
{% endtabs %}

## Selection colors

The range selection color of the grid can be changed by setting the required color to the [AlphaBlendSelectionColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~AlphaBlendSelectionColor.html#) property. The default Alpha blend selection color is blue.

{% tabs %}
{% highlight c# %}
//Set the Selection color 
this.gridControl1.AlphaBlendSelectionColor = Color.Green;
{% endhighlight %}

{% highlight vb %}
'Set the Selection color 
Me.gridControl1.AlphaBlendSelectionColor = Color.Green
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img5.jpeg)


The selection color of the grid can be reset by using the [ResetAlphaBlendSelectionColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~ResetAlphaBlendSelectionColor.html#) method. It will reset the default color for selection.

{% tabs %}
{% highlight c# %}
//To reset the color of selection in grid control
gridControl.ResetAlphaBlendSelectionColor();
{% endhighlight %}

{% highlight vb %}
'To reset the color of selection in grid control
gridControl.ResetAlphaBlendSelectionColor()
{% endhighlight %}
{% endtabs %}

### Setting the CurrentCell back color similar to the back color of the remaining selected cells

When the cell is entered into the edit mode, it will not display the selection color. To display the selection color for the editing cell, set the selection color as the back color for the current cell in the [CellDrawn](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridCardView~CellDrawn_EV.html#) event.

{% tabs %}
{% highlight c# %}
//To Draw the selection color for Current Cell
this.gridControl1.CellDrawn += gridControl1_CellDrawn;

void gridControl1_CellDrawn(object sender, GridDrawCellEventArgs e)

{

//get the currentcell
GridCurrentCell cc = this.gridControl1.CurrentCell;

if (e.RowIndex == cc.RowIndex && e.ColIndex == cc.ColIndex)

{

//fill the selection color to the cells background
using (SolidBrush br = new SolidBrush(this.gridControl1.AlphaBlendSelectionColor))

{

e.Graphics.FillRectangle(br, e.Bounds);

}

}

}
{% endhighlight %}

{% highlight vb %}
'To Draw the selection color for Current Cell
Private Me.gridControl1.CellDrawn += AddressOf gridControl1_CellDrawn

Private Sub gridControl1_CellDrawn(ByVal sender As Object, ByVal e As GridDrawCellEventArgs)

'get the currentcell
Dim cc As GridCurrentCell = Me.gridControl1.CurrentCell

If e.RowIndex = cc.RowIndex AndAlso e.ColIndex = cc.ColIndex Then

'fill the selection color to the cells background
Using br As New SolidBrush(Me.gridControl1.AlphaBlendSelectionColor)

e.Graphics.FillRectangle(br, e.Bounds)

End Using

End If

End Sub
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img6.jpeg)


## Retrieving Selected Values

To get the values from the selected range of cells, get the range list of the selected ranges and loop through the each range to get the selected values. Refer to the following code snippet,

{% tabs %}
{% highlight c# %}
//Get the Selected ranges as the RangeInfoList
GridRangeInfoList list = this.gridControl1.Model.SelectedRanges;

foreach (GridRangeInfo range in list)

{

for (int i = range.Top; i <= range.Bottom; i++)

{

for (int j = range.Left; j <= range.Right; j++)

{

//Prints the text in the output screen.
Trace.Write(this.gridControl1[i, j].Text + "\t");    

}

Trace.WriteLine("");

}

}



{% endhighlight %}

{% highlight vb %}
'Get the Selected ranges as the RangeInfoList
Dim list As GridRangeInfoList = Me.gridControl1.Model.SelectedRanges

For Each range As GridRangeInfo In list

For i As Integer = range.Top To range.Bottom

For j As Integer = range.Left To range.Right

'Prints the text in the output screen.
Trace.Write(Me.gridControl1(i, j).Text + Constants.vbTab)

Next j

Trace.WriteLine("")

Next i

Next range
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img7.jpeg)


The selected values are printed in the output screen as of follows,

![](Selection_images/Selection_img8.jpeg)


## Cell Text Selection

The current cell activation behavior is controlled by the grid’s [ActivateCurrentCellBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ActivateCurrentCellBehavior.html#) property. When the property is set to [SelectAll](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridCellActivateAction.html#)**,** it will selects all the text in the cell when the cell is activated.

{% tabs %}
{% highlight c# %}
//Select all the text in the cell while activating the current cell
this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;
{% endhighlight %}

{% highlight vb %}
'Select all the text in the cell while activating the current cell
Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img9.jpeg)


