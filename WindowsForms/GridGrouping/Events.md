---
layout: post
title: Events
description: events
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Events

An Event is a message that is triggered to notify an object or a class of the occurrence of an action. When an event gets fired, all the event handlers will be notified i.e. the event handler functions will be invoked.    In order to receive the event notifications, the caller object must subscribe to the desired events. If you no longer want to listen to an event, then you can simply unsubscribe from the event notification. This section deals with some important events that are fired while performing group related actions. They are organized into different categories based primarily on the grid component they affect and the functionality it provides.

## Table Events

The Table Style events are as follows:

BackColorChanged - Occurs when the value of Control's BackColor property changes.



{% highlight C# %}  



this.groupingEngine.TableControl.BackColorChanged+=new EventHandler(TableControl_BackColorChanged);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.BackColorChanged, AddressOf TableControl_BackColorChanged



BackgroundImageChanged - Occurs when the value of Control's BackgroundImage property changes.

{% endhighlight %}

{% highlight C# %}  



this.groupingEngine.TableControl.BackgroundImageChanged+=new EventHandler(TableControl_BackgroundImageChanged);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.BackgroundImageChanged, AddressOf TableControl_BackgroundImageChanged



BindingContextChanged - Occurs when the value of Control's BindingContextChanged property.

{% endhighlight %}

{% highlight C# %}  



this.groupingEngine.TableControl.BindingContextChanged+=new EventHandler(TableControl_BindingContextChanged);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.BindingContextChanged, AddressOf TableControl_BindingContextChanged



QueryAllowDragColumn - Occurs when the user hovers the mouse over a column header or clicks on it. In your event handler, you can determine if the selected column can be dragged.

{% endhighlight %}

{% highlight C# %}  



this.groupingEngine.TableControl.QueryAllowDragColumn+=new GridQueryAllowDragColumnEventHandler(TableControl_QueryAllowDragColumn);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.QueryAllowDragColumn, AddressOf TableControl_QueryAllowDragColumn

{% endhighlight %}

The event handler receives an argument of type GridQueryAllowDragColumnEventArgs containing data related to this event.

The following GridQueryAllowDragColumnEventArgs properties provide information specific to this event. 

* AllowDrag - You can disallow dragging the column when you assign it to False.
* Column - Get the column Name.
* Reason - Provide reason why the event is raised.

QueryAllowGroupByColumn - Occurs when the user drags a column header over the GroupDropArea. In your event handler, you can determine if the grid can be grouped by the selected column.



{% highlight C# %}  



this.groupingEngine.TableControl.QueryAllowGroupByColumn+=new GridQueryAllowGroupByColumnEventHandler(TableControl_QueryAllowGroupByColumn);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.QueryAllowGroupByColumn, AddressOf TableControl_QueryAllowGroupByColumn

{% endhighlight %}

The event handler receives an argument of type GridQueryAllowGroupByColumnEventArgs containing data related to this event.

The following GridQueryAllowGroupByColumnEventArgs properties provide information specific to this event. 

* AllowGroupByColumn - You can disallow grouping by the column when you assign False to it.
* Column - Get the column Name.
* Reason - Provide reason why the event is raised.

QueryAllowSortColumn - Occurs when the user hovers the mouse over a column header or clicks on it. In your event handler you can determine if the selected column can be sorted. 



{% highlight C# %}  



this.groupingEngine.TableControl.QueryAllowSortColumn+=new GridQueryAllowSortColumnEventHandler(TableControl_QueryAllowSortColumn);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.QueryAllowSortColumn, AddressOf TableControl_QueryAllowSortColumn
{% endhighlight %}

The event handler receives an argument of type GridQueryAllowSortColumnEventArgs containing data related to this event.

The following GridQueryAllowSortColumnEventArgs properties provide information specific to this event.

* AllowSort - You can disallow sorting by the column when you assign False to it. 
* CellClickEventArgs - You can check the CellClickEventArgs to find out which mouse button was clicked or the exact position of the mouse pointer.
* Column - Get the column Name.

Resize-Occurs when control is resized.



{% highlight C# %}  



this.groupingEngine.TableControl.Resize+=new EventHandler(TableControl_Resize);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.Resize, AddressOf TableControl_Resize

{% endhighlight %}

ResizingColumns - Occurs when the user resizes a selected range of columns.

The event handler receives an argument of type GridResizingColumnsEventArgs containing data related to this event.

The following GridResizingColumnsEventArgs properties provide information specific to this event.

* Width - The new width of the columns.
* Reason - The originating reason for this event.
* SizeIndicatorBorder - The appearance of the line that indicates the new size.
* Point - The mouse location.

TextChanged - Occurs when value of Control's text property changes.

{% highlight C# %}  



this.groupingEngine.TableControl.TextChanged+=new EventHandler(TableControl_TextChanged);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.TextChanged, AddressOf TableControl_TextChanged

{% endhighlight %}

TopRowChanged - Occurs after the grid has been scrolled when the top row index is changed. 



{% highlight C# %}  



this.groupingEngine.TableControl.TopRowChanged+=new Syncfusion.Windows.Forms.Grid.GridRowColIndexChangedEventHandler(TableControl_TopRowChanged);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.TopRowChanged, AddressOf TableControl_TopRowChanged

{% endhighlight %}

The event handler receives an argument of type GridRowColIndexChangedEventArgs containing data related to this event.

The following GridRowColIndexChangedEventArgs properties provide information specific to this event.

* SavedValue - The saved Syncfusion.Windows.Forms.Grid.GridControlBase.TopRowIndex or Syncfusion.Windows.Forms.Grid.GridControlBase.LeftColIndex value.
* Success - Indicates if operation was ended successfully or was aborted.

### CurrentRecordContextChange Event


The event occurs before and after the status of the current record is changed. Event handler receives an argument of type CurrentRecordContextChangeEventArgs containing data related to this event.

 

<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Action</td><td>
Specifies how the current record context changes.</td></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Record</td><td>
Specifies the affected record.</td></tr>
<tr>
<td>
Success</td><td>
Specifies if the operation was completed successfully or failed.</td></tr>
<tr>
<td>
Table</td><td>
Specifies the table that Grouping.Table.SelectedRecords collection belongs to.</td></tr>
</table>


You can handle this event and get the updated expression field value. The following code example illustrates this.

{% highlight C# %}  



private void gridGroupingControl1_CurrentRecordContextChange(object sender, CurrentRecordContextChangeEventArgs e) 

{

   if (e.Action == CurrentRecordAction.EndEditComplete)

   Console.WriteLine(e.Record);

}

{% endhighlight %}

{% highlight vbnet %} 


Private Sub gridGroupingControl1_CurrentRecordContextChange(ByVal sender As Object, ByVal e As CurrentRecordContextChangeEventArgs)

    If e.Action = CurrentRecordAction.EndEditComplete Then

        Console.WriteLine(e.Record)

    End If

End Sub
{% endhighlight %}

### GroupAdded Event

This event occurs when a new group is added to the table after the table was categorized and when a record is changed. It does not occur during the categorization of the table. The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTY</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


You can handle this event to make the child groups that were not initially expanded. The following code example illustrates this.

{% highlight C# %} 



private void gridGroupingControl1_GroupAdded(object sender, GroupEventArgs e)

{

    e.Group.IsExpanded = false;

}


 {% endhighlight %}




{% highlight vbnet %} 



Private Sub gridGroupingControl1_GroupAdded(ByVal sender As Object, ByVal e As GroupEventArgs)

e.Group.IsExpanded = False

End Sub
{% endhighlight %}

### GroupCollapsing Event

This occurs before a group is collapsed. The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTY</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


{% highlight C# %}  



this.gridGroupingControl1.GroupCollapsing += new GroupEventHandler(this.gridGroupingControl1_GroupCollapsing);



private void gridGroupingControl1_GroupCollapsing(object sender, GroupEventArgs e)

{

    foreach(Record r in e.Group.Records)

    Console.WriteLine("Collapsing event "+r.Info);

}

{% endhighlight %}

{% highlight vbnet %} 



AddHandler gridGroupingControl1.GroupCollapsing, AddressOf gridGroupingControl1_GroupCollapsing



Private Sub gridGroupingControl1_GroupCollapsing(ByVal sender As Object, ByVal e As GroupEventArgs) 

For Each r As Record In e.Group.Records

Console.WriteLine("Collapsing event "+r.Info)

Next r

End Sub

{% endhighlight %}

### GroupCollapsed Event

This occurs when a group is collapsed. The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


{% highlight C# %} 



this.gridGroupingControl1.GroupCollapsed += new GroupEventHandler(this.gridGroupingControl1_GroupCollapsed);



private void gridGroupingControl1_GroupCollapsed(object sender, GroupEventArgs e)

{

    foreach(Record r in e.Group.Records)

    Console.WriteLine("Collapsed event "+r.Info);

}

 {% endhighlight %}

{% highlight vbnet %} 


AddHandler gridGroupingControl1.GroupCollapsed, AddressOf gridGroupingControl1_GroupCollapsed



Private Sub gridGroupingControl1_GroupCollapsed(ByVal sender As Object, ByVal e As GroupEventArgs)

For Each r As Record In e.Group.Records

Console.WriteLine("Collapsed event "+r.Info)

Next r

End Sub
{% endhighlight %}

### GroupExpanding Event

This occurs before a group is expanded. The event handler receives an argument of type GroupEventArgs containing the data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>
You can allow the user to expand the group by clicking the plus OR minus button. The following code example illustrates this.

{% highlight C# %}  



bool IsClickExpand = false;



private void gridGroupingControl1_GroupExpanding(object sender, GroupEventArgs e)

{

    if (IsClickExpand)

    IsClickExpand = false;

    else

    e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %} 



Private IsClickExpand As Boolean = False



Private Sub gridGroupingControl1_GroupExpanding(ByVal sender As Object, ByVal e As GroupEventArgs)

    If IsClickExpand Then

        IsClickExpand = False

    Else

        e.Cancel = True

    End If

End Sub
{% endhighlight %}

### GroupExpanded Event

This occurs when a group is expanded.The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


{% highlight C# %} 



this.gridGroupingControl1.GroupExpanded += new GroupEventHandler(this.gridGroupingControl1_GroupExpanded);



private void gridGroupingControl1_GroupExpanded(object sender, GroupEventArgs e)

{

foreach(Record r in e.Group.Records)

Console.WriteLine("Expanded event "+ r.Info);

}

 {% endhighlight %}

{% highlight vbnet %} 



AddHandler gridGroupingControl1.GroupExpanded, AddressOf gridGroupingControl1_GroupExpanded



Private Sub gridGroupingControl1_GroupExpanded(ByVal sender As Object, ByVal e As GroupEventArgs) 

For Each r As Record In e.Group.Records

Console.WriteLine("Expanded event "+ r.Info)

Next r

End Sub
{% endhighlight %}

### GroupRemoving Event

This event occurs before a group is removed after the table was categorized and when a record is changed. It does not occur during the categorization of the table. The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


{% highlight C# %}  



this.gridGroupingControl1.GroupExpanded += new GroupEventHandler(this.gridGroupingControl1_GroupExpanded);



private void gridGroupingControl1_GroupExpanded(object sender, GroupEventArgs e)

{

    foreach(Record r in e.Group.Records)

    Console.WriteLine("Expanded event "+ r.Info);

}
{% endhighlight %}


{% highlight vbnet %} 



AddHandler gridGroupingControl1.GroupRemoving, AddressOf gridGroupingControl1_GroupRemoving



Private Sub gridGroupingControl1_GroupRemoving(ByVal sender As Object, ByVal e As GroupEventArgs)

For Each r As Record In e.Group.Records

Console.WriteLine("Expanded event "+ r.Info)

Next r

End Sub
{% endhighlight %}

### GroupSummaryInvalidated Event

This occurs when a summary has been marked dirty. The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>
You can handle this event to get updated summary value in a grid. The following code example illustrates this.



{% highlight C# %}  


private void gridGroupingControl1_GroupSummaryInvalidated(object sender, GroupEventArgs e)

{

    e.Group.ParentTable.SummariesDirty = true;

    GridGroupingControl grid = sender as GridGroupingControl;

    GridTableControl tc = grid.GetTableControl(e.Group.ParentTableDescriptor.Name);

    tc.RefreshRange(GridRangeInfo.Cell(8, 3));



//Gets the updated summary in a Text Box.

    textbox1.Text = tc.Model[8, 3].Text;

}

{% endhighlight %}


{% highlight vbnet %} 



Private Sub gridGroupingControl1_GroupSummaryInvalidated(ByVal sender As Object, ByVal e As GroupEventArgs)

    e.Group.ParentTable.SummariesDirty = True

    Dim grid As GridGroupingControl = CType(IIf(TypeOf sender Is GridGroupingControl, sender, Nothing), GridGroupingControl)

    Dim tc As GridTableControl = grid.GetTableControl(e.Group.ParentTableDescriptor.Name)

    tc.RefreshRange(GridRangeInfo.Cell(8, 3))



'Gets the updated summary in a Text Box.

    textbox1.Text = tc.Model(8, 3).Text

End Sub
{% endhighlight %}

### RecordExpanding Event

This occurs before a record with nested table is expanded. The event handler receives an argument of type RecordEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Record</td><td>
Gets the affected record.</td></tr>
</table>


The parent records that have no child record can be prevented from expanding by handling Table.RecordExpanding event and by setting e.Cancel to true.



{% highlight C# %}  



private void Table_RecordExpanding(object sender, RecordEventArgs e)

{

    if(e.Record.GetRelatedChildTable(new RelationDescriptor("ParentToChild")).GetRecordCount() == 0)

    e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub Table_RecordExpanding(ByVal sender As Object, ByVal e As RecordEventArgs)

    If e.Record.GetRelatedChildTable(New RelationDescriptor("ParentToChild")).GetRecordCount() = 0 Then

        e.Cancel = True

    End If

End Sub
{% endhighlight %}

### RecordValueChanging Event

This occurs when RecordFieldCell cell's value is changed and before Record.SetValue is returned. The event handler receives an argument of type RecordValueChangingEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Column</td><td>
Specifies the column.</td></tr>
<tr>
<td>
FieldDescriptor</td><td>
Specifies the field descriptor.</td></tr>
<tr>
<td>
NewValue</td><td>
Specifies the new value to save.</td></tr>
<tr>
<td>
Record</td><td>
Specifies the record.</td></tr>
</table>


You can handle this event to compare the old and new values of the cell when cursor leaves the cell. The following code example illustrates this.

{% highlight C# %}  



private void gridGroupingControl1_RecordValueChanging(object sender, RecordValueChangingEventArgs e)

{

    Console.WriteLine(" New Value: {0} ", e.NewValue);

    Console.WriteLine(" Old Value: {0} ", e.Record.GetValue(e.Column));

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub gridGroupingControl1_RecordValueChanging(ByVal sender As Object, ByVal e As RecordValueChangingEventArgs)

    Console.WriteLine(" New Value: {0} ", e.NewValue)

    Console.WriteLine(" Old Value: {0} ", e.Record.GetValue(e.Column))

End Sub
{% endhighlight %}

### RecordValueChanged Event

This occurs when RecordFieldCell cell's value is changed and after Record.SetValue is returned. The event handler receives an argument of type RecordValueChangedEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Action</td><td>
Specifies how the current record context changes.</td></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Record</td><td>
Specifies the affected record.</td></tr>
<tr>
<td>
Success</td><td>
Specifies if the operation was completed successfully or failed.</td></tr>
<tr>
<td>
Table</td><td>
Specifies the affected table.</td></tr>
</table>


You can handle this event to save the current record value. The following code example illustrates this.



{% highlight C# %}  



private void gridGroupingControl1_RecordValueChanged(object sender, RecordValueChangedEventArgs e)

{

    Record r = e.Record ;

    if(e.Column != "Column2")    

    r.SetValue("Column2",""); 

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub gridGroupingControl1_RecordValueChanged(ByVal sender As Object, ByVal e As RecordValueChangedEventArgs)

    Dim r As Record = e.Record

    If e.Column &lt;&gt; "Column2" Then

        r.SetValue("Column2", "")

    End If

End Sub
{% endhighlight %}

### SortingItemsInGroup Event

This occurs before the records for a group is sorted. The event handler receives an argument of type GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
 PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


{% highlight C# %}  



void Table_SortingItemsInGroup(object sender, GroupEventArgs e)

{

Console.WriteLine("Before Sorting the records in the group: "+ e.Group.Info);

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub Table_SortingItemsInGroup(ByVal sender As Object, ByVal e As GroupEventArgs)

Console.WriteLine("Before Sorting the records in the group: "+ e.Group.Info)

End Sub
{% endhighlight %}

### SortedItemsInGroup Event

This occurs after the records for a group is sorted. The event handler receives an argument of type  GroupEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Group</td><td>
Gets the affected group.</td></tr>
</table>


{% highlight C# %} 



void Table_SortedItemsInGroup(object sender, GroupEventArgs e)

{

Console.WriteLine("After Sorting the records in the group: "+ e.Group.Info);

}

 {% endhighlight %}

{% highlight vbnet %} 



Private Sub Table_SortedItemsInGroup(ByVal sender As Object, ByVal e As GroupEventArgs)

Console.WriteLine("After Sorting the records in the group: "+ e.Group.Info)

End Sub
{% endhighlight %}

### SourceListListChanged Event

This occurs before the table processes System.ComponentModel.IBindingList.ListChanged event of attached source list. The event handler receives an argument of type TableListChangedEventArgs containing data related to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
ListChangedType</td><td>
Gets the type of change.</td></tr>
<tr>
<td>
NavigateCurrentRecordWhenDeleted</td><td>
Specifies whether the current record should be moved to the previous visible record when ItemDeleted notification is received for the current record.</td></tr>
<tr>
<td>
NewIndex</td><td>
Gets the index of the item affected by change.</td></tr>
<tr>
<td>
OldIndex</td><td>
Gets the old index of an item that has been moved.</td></tr>
<tr>
<td>
PropertyDescriptor</td><td>
Gets the PropertyDescriptor that was added, changed, or deleted.</td></tr>
<tr>
<td>
ShouldIgnoreReset</td><td>
Specifies whether ListChangedType.Reset notification should be ignored.</td></tr>
<tr>
<td>
ShouldInvalidateCounters</td><td>
Specifies whether counters need to be marked dirty when ListChanged event is handled.</td></tr>
<tr>
<td>
ShouldInvalidateGroupSortOrder</td><td>
Specifies whether changes to the current record affect the sort order of the current group.</td></tr>
<tr>
<td>
ShouldInvalidateScreen</td><td>
Specifies whether grid should repaint the record when changes to the record were made in the underlying data source and ListChangedType.ItemChanged notification was raised.</td></tr>
<tr>
<td>
ShouldInvalidateSummaries</td><td>
Specifies whether summaries need to be marked dirty when ListChanged event is handled.</td></tr>
<tr>
<td>
ShouldReevaluateSortPosition</td><td>
Specifies whether changes to the current record affects the sort order of the current group.</td></tr>
<tr>
<td>
ShouldResetCurrentRecord</td><td>
Specifies whether current record should be reset when ItemChanged notification is received for the current record.</td></tr>
</table>


You can handle this event to retrieve the ListChangedType. The following code example illustrates this.

{% highlight C# %}  

private void gridGroupingControl1_SourceListListChanged(object sender, TableListChangedEventArgs e)

{

Console.WriteLine("ListChangedType :" +e.ListChangedType.ToString() );

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub gridGroupingControl1_SourceListListChanged(ByVal sender As Object, ByVal e As TableListChangedEventArgs)

    Console.WriteLine("ListChangedType :" & e.ListChangedType.ToString())

End Sub

{% endhighlight %}

## Cell Events

The Cell events are as follows:

1.CellButtonClicked - Occurs when the user clicked on a child button element inside the cell renderer.



{% highlight C# %}  



this.groupingEngine.TableControl.CellButtonClicked+=new Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventHandler(TableControl_CellButtonClicked);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CellButtonClicked, AddressOf TableControl_CellButtonClicked

{% endhighlight %}

The event handler receives an argument of type GridCellButtonClickedEventArgs containing data related to this event.

The following GridCellButtonClickedEventArgs properties provide information specific to this event.

* RowIndex - Gets the row index.
* ColIndex - Gets the column index.
* ButtonIndex - The index of the clicked cell button element.



2.CellClick - Occurs when the user clicks inside a cell.

{% highlight C# %}  



this.groupingEngine.TableControl.CellClick+=new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellClick);

{% endhighlight %}

{% highlight vbnet %} 

{% endhighlight %}

AddHandler groupingEngine.TableControl.CellClick, AddressOf TableControl_CellClick

The event handler receives an argument of type GridCellClickEventArgs containing data related to this event.

The following GridCellClickEventArgs properties provide information specific to this event.

* RowIndex - Gets the row index.        
* ColIndex - Gets the column index.
* MouseEventArgs - The System.Windows.Forms.MouseEventArgs originating this event.
* IsOverImage - Indicates if the mouse was over an image in static cell when the mouse was released.



3.CellDoubleClick - Occurs when the user double-clicks inside a cell.

{% highlight C# %}  



this.groupingEngine.TableControl.CellDoubleClick+=new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellDoubleClick);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CellDoubleClick, AddressOf TableControl_CellDoubleClick
{% endhighlight %}

The event handler receives an argument of type GridCellClickEventArgs containing data related to this event.

The following GridCellClickEventArgs properties provide information specific to this event.

* RowIndex - Gets the row index.        
* ColIndex - Gets the column index.
* MouseEventArgs - The System.Windows.Forms.MouseEventArgs originating this event.
* IsOverImage - Indicates if the mouse was over an image in static cell when the mouse was released.

4.CellDrawn - Occurs for every cell after the grid has drawn the specified cell. 

{% highlight C# %}  



this.groupingEngine.TableControl.CellDrawn+=new Syncfusion.Windows.Forms.Grid.GridDrawCellEventHandler(TableControl_CellDrawn);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CellDrawn, AddressOf TableControl_CellDrawn

{% endhighlight %}

The event handler receives an argument of type GridDrawCellEventArgs containing data related to this event.

The following GridDrawCellEventArgs properties provide information specific to this event.

* Graphics - Gets the Graphics context.
* Renderer - Gets the cell renderer.
* Bounds - Gets the Cell boundaries.
* RowIndex-Gets the row index.
* ColIndex-The column index.
* Style-The Syncfusion.Windows.Forms.Grid.GridStyleInfo object that holds cell information.
* IsBackgroundErased-True if the cell background has already been drawn with the interior as specified in the style object.

### CellButtonClicked Event


This occurs when a user clicks on a child button element inside the cell renderer. The event handler receives an argument of type GridCellButtonClickedEventArgs containing data related to this event. This event can be invoked as follows.

{% highlight C# %}  



this.gridGroupingControl1.TableControlCellButtonClicked+=new GridCellButtonClickedEventHandler(TableControl_CellButtonClicked);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler Me.gridGroupingControl1.TableControlCellButtonClicked, AddressOf TableControl_CellButtonClicked

{% endhighlight %}

The following GridCellButtonClickedEventArgs properties provide information specific to this event. 



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Button</td><td>
A reference to the GridCellButton for the clicked button.</td></tr>
<tr>
<td>
ButtonIndex</td><td>
The index of the cell button clicked.</td></tr>
<tr>
<td>
ColIndex</td><td>
Specifies the column index of the cell.</td></tr>
<tr>
<td>
RowIndex</td><td>
Specifies the row index of the cell.</td></tr>
</table>


Example

{% highlight C# %}  



private void TableControl_CellButtonClicked(object sender, GridCellButtonClickedEventArgs e)

{

Console.Writeline("CellButtonClicked");

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub TableControl_CellButtonClicked(ByVal sender As Object, ByVal e As GridCellButtonClickedEventArgs)

Console.Writeline("CellButtonClicked")

End Sub
{% endhighlight %}


### CellClick Event

This occurs when the user clicks inside a cell. The event handler receives an argument of type GridCellClickEventArgs containing data related to this event. This event can be invoked as follows.

{% highlight C# %} 



this.gridGroupingControl1.TableControlCellClick+=new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellClick);

 {% endhighlight %}

{% highlight vbnet %} 



AddHandler Me.gridGroupingControl1.TableControlCellClick, AddressOf TableControl_CellClick

{% endhighlight %}

The following GridCellClickEventArgs properties provide information specific to this event. 



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
IsOverImage</td><td>
Indicates if the mouse was over the image in a static cell when the mouse was released.</td></tr>
<tr>
<td>
MouseEventArgs</td><td>
MouseEventArgs originate this event.</td></tr>
<tr>
<td>
ColIndex</td><td>
Specifies the column index of the cell.</td></tr>
<tr>
<td>
RowIndex</td><td>
Specifies the row index of the cell.</td></tr>
<tr>
<td>
Cancel</td><td>
Specifies a value to indicate if this event should be canceled.</td></tr>
</table>


Example



{% highlight C# %}  



private void TableControl_CellClick(object sender, GridCellClickEventArgs e)

{

Console.Writeline("CellClicked");

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub TableControl_CellClick(ByVal sender As Object, ByVal e As GridCellClickEventArgs)

Console.Writeline("CellClicked")

End Sub
{% endhighlight %}


### CellDrawn Event

This occurs for every cell after the grid has drawn the specified cell. The event handler receives an argument of type GridDrawCellEventArgs containing data related to this event. This event can be invoked as follows.

{% highlight C# %}  



this.gridGroupingControl1.TableControlCellDrawn+=new Syncfusion.Windows.Forms.Grid.GridDrawCellEventHandler(TableControl_CellDrawn);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler Me.gridGroupingControl1.TableControlCellDrawn, AddressOf TableControl_CellDrawn

{% endhighlight %}

The following GridTableControlCellDrawnEventArgs properties provide information specific to this event. 



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Bounds</td><td>
Cell boundaries including borders and margins.</td></tr>
<tr>
<td>
Renderer</td><td>
GridCellRendererBase associated with the cell.</td></tr>
<tr>
<td>
Graphics</td><td>
Graphics context.</td></tr>
<tr>
<td>
IsBackgroundErased</td><td>
Specifies if the cell background has already been drawn with the interior as specified in the style object.</td></tr>
<tr>
<td>
ColIndex</td><td>
Specifies the column index of the cell.</td></tr>
<tr>
<td>
RowIndex</td><td>
Specifies the row index of the cell.</td></tr>
<tr>
<td>
Cancel</td><td>
Specifies a value to indicate if this event should be canceled.</td></tr>
</table>


You can handle TableControlCellDrawn to draw error icon in an invalid cell as follows.



{% highlight C# %}  



private void TableControl_CellDrawn(object sender, GridDrawCellEventArgs e)

{

Console.Writeline("Cell Drawn");

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub TableControl_CellDrawn(ByVal sender As Object, ByVal e As GridDrawCellEventArgs)

Console.Writeline("Cell Drawn")

End Sub
{% endhighlight %}

### CellDoubleClick Event

This occurs when the user double-clicks inside a cell. The event handler receives an argument of type GridCellClickEventArgs containing data related to this event. This event can be invoked as follows.

{% highlight C# %} 


this.gridGroupingControl1.TableControlCellDoubleClick+=new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellDoubleClick);

 {% endhighlight %}


{% highlight vbnet %} 



AddHandler Me.gridGroupingControl1.TableControlCellDoubleClick, AddressOf TableControl_CellDoubleClick

{% endhighlight %}

The following GridCellClickEventArgs properties provide information specific to this event. 



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
IsOverImage</td><td>
Indicates if the mouse was over the image in a static cell when the mouse was released.</td></tr>
<tr>
<td>
MouseEventArgs</td><td>
MouseEventArgs originating this event.</td></tr>
<tr>
<td>
ColIndex</td><td>
Specifies the column index of the cell.</td></tr>
<tr>
<td>
RowIndex</td><td>
Specifies the row index of the cell.</td></tr>
<tr>
<td>
Cancel</td><td>
Specifies a value to indicate if this event should be canceled.</td></tr>
</table>


{% highlight C# %}  



private void TableControl_CellDoubleClick(object sender, GridCellClickEventArgs e)

{

Console.Writeline("Cell DoubleClicked");

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub TableControl_CellDoubleClick(ByVal sender As Object, ByVal e As GridCellClickEventArgs)

Console.Writeline("Cell DoubleClicked")

End Sub

{% endhighlight %}

## Current Cell Events

Current Cell events are as follows:

1.CurrentCellActivated - Occurs after the grid activates the specified cell as current cell. 



{% highlight C# %}  



this.groupingEngine.TableControl.CurrentCellActivated+=new EventHandler(TableControl_CurrentCellActivated);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CurrentCellActivated, AddressOf TableControl_CurrentCellActivated

{% endhighlight %}

1.CurrentCellChanged - Occurs when the user changes contents of the current cell. 



{% highlight C# %}  



this.groupingEngine.TableControl.CurrentCellChanged+=new EventHandler(TableControl_CurrentCellChanged);

{% endhighlight %}

{% highlight vbnet %} 

AddHandler groupingEngine.TableControl.CurrentCellChanged, AddressOf TableControl_CurrentCellChanged
{% endhighlight %}

2.CurrentCellControlGotFocus - Occurs when the current cell switches to in-place editing and the control associated with the current cell receives the focus. 

{% highlight C# %}  



this.groupingEngine.TableControl.CurrentCellControlGotFocus+=new ControlEventHandler(TableControl_CurrentCellControlGotFocus);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CurrentCellControlGotFocus, AddressOf TableControl_CurrentCellControlGotFocus

{% endhighlight %}

The event handler receives an argument of type ControlEventArgs containing data related to this event.

The following ControlEventArgs properties provide information specific to this event.

* Control - Gets the control object used by this event.
3.CurrentCellControlLostFocus - Occurs when the current cell is in in-place editing mode and the control associated with the current cell has lost the focus. 

{% highlight C# %} 



this.groupingEngine.TableControl.CurrentCellControlLostFocus+=new ControlEventHandler(TableControl_CurrentCellControlLostFocus);

 {% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CurrentCellControlLostFocus, AddressOf TableControl_CurrentCellControlLostFocus

{% endhighlight %}

The event handler receives an argument of type ControlEventArgs containing data related to this event.

The following ControlEventArgs properties provide information specific to this event.

* Control - Gets the control object used by this event.
4.CurrentCellDeactivated - Occurs after the grid deactivates current cell. 



{% highlight C# %}  



this.groupingEngine.TableControl.CurrentCellDeactivated+=new Syncfusion.Windows.Forms.Grid.GridCurrentCellDeactivatedEventHandler(TableControl_CurrentCellDeactivated);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CurrentCellDeactivated, AddressOf TableControl_CurrentCellDeactivated

{% endhighlight %}

The event handler receives an argument of type GridCurrentCellDeactivatedEventArgs containing data related to this event.

The following GridCurrentCellDeactivatedEventArgs properties provide information specific to this event.

* RowIndex - Gets the row index.
* ColIndex - Gets thecolumn index.
5.CurrentCellStartEditing - Occurs before the current cell switches into editing mode.

{% highlight C# %}  



this.groupingEngine.TableControl.CurrentCellStartEditing+=new CancelEventHandler(TableControl_CurrentCellStartEditing);

{% endhighlight %}

{% highlight vbnet %}


AddHandler groupingEngine.TableControl.CurrentCellStartEditing, AddressOf TableControl_CurrentCellStartEditing

 {% endhighlight %}


The event handler receives an argument of type CancelEventArgs containing data related to this event.

The following CancelEventArgs properties provide information specific to this event.

* Cancel - Gets or sets a value indicating whether the event should be canceled.



6.CurrentCellValidated - Occurs when the grid has successfully validated the contents of the active current cell. 

{% highlight C# %}  



this.groupingEngine.TableControl.CurrentCellValidated+=new EventHandler(TableControl_CurrentCellValidated);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.CurrentCellValidated, AddressOf TableControl_CurrentCellValidated
{% endhighlight %}

## Control Events

Following are the control events:

1.Click - Occurs when control is clicked.



{% highlight C# %} 



this.groupingEngine.TableControl.Click+=new EventHandler(TableControl_Click);

 {% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.Click, AddressOf TableControl_Click
{% endhighlight %}


7.DoubleClick - Occurs when control is double clicked.



{% highlight C# %}  



this.groupingEngine.TableControl.DoubleClick+=new EventHandler(TableControl_DoubleClick);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.DoubleClick, AddressOf TableControl_DoubleClick

{% endhighlight %}

8.DragDrop - Occurs when a drag and drop operation is completed.



{% highlight C# %}  



this.groupingEngine.TableControl.DragDrop+=new DragEventHandler(TableControl_DragDrop);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.DragDrop, AddressOf TableControl_DragDrop

{% endhighlight %}

9.GotFocus - Occurs when the control receives focus.



{% highlight C# %}  



this.groupingEngine.TableControl.GotFocus+=new EventHandler(TableControl_GotFocus);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.GotFocus, AddressOf TableControl_GotFocus

{% endhighlight %}

10.GridControlMouseDown - Occurs before a MouseDown is raised and allows you to cancel the mouse event. 

{% highlight C# %}  



this.groupingEngine.TableControl.GridControlMouseDown+=new Syncfusion.Windows.Forms.CancelMouseEventHandler(TableControl_GridControlMouseDown);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.GridControlMouseDown, AddressOf TableControl_GridControlMouseDown

{% endhighlight %}

The event handler receives an argument of type CancelMouseEventArgs containing data related to this event.

The following CancelMouseEventArgs properties provide information specific to this event.

* Cancel - Gets or sets a value indicating whether the event should be canceled.
11.GridControlMouseUp - Occurs before MouseUp is raised and allows you to cancel the mouse event. 

{% highlight C# %}  



this.groupingEngine.TableControl.GridControlMouseUp+=new Syncfusion.Windows.Forms.CancelMouseEventHandler(TableControl_GridControlMouseUp);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.GridControlMouseUp, AddressOf TableControl_GridControlMouseUp

{% endhighlight %}

The event handler receives an argument of type CancelMouseEventArgs containing data related to this event.

The following CancelMouseEventArgs properties provide information specific to this event.

* Cancel - Gets or sets a value indicating whether the event should be canceled.
## Mouse Events


Following are the mouse events:

1.MouseDown - Occurs when the mouse pointer is over the control and Mouse button is pressed.



{% highlight C# %}  



this.groupingEngine.TableControl.MouseDown+=new MouseEventHandler(TableControl_MouseDown);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.MouseDown, AddressOf TableControl_MouseDown

{% endhighlight %}

The event handler receives an argument of type MouseEventArgs containing data related to this event. The following MouseEventArgs properties provide information specific to this event.

* Button - Indicates which mouse button was pressed.
* Clicks - The number of times mouse button was pressed.
* X - The x-coordinate of a mouse click in pixels.
* Y - The y-coordinate of a mouse click in pixels.    
* Point - Gets the location of the mouse during the generating mouse event.



12.MouseLeave - Occurs when mouse pointer leaves the control.



{% highlight C# %}  



this.groupingEngine.TableControl.MouseLeave+=new MouseLeave EventHandler(TableControl_MouseLeave);

{% endhighlight %}

{% highlight vbnet %}



AddHandler groupingEngine.TableControl.MouseLeave, AddressOf TableControl_MouseLeave

 {% endhighlight %}

13.MouseUp - Occurs when the mouse pointer is over the control and Mouse button is released.



{% highlight C# %}  



this.groupingEngine.TableControl.MouseUp+=new MouseEventHandler(TableControl_MouseUp);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.MouseUp, AddressOf TableControl_MouseUp

{% endhighlight %}

The event handler receives an argument of type MouseEventArgs containing data related to this event. The following MouseEventArgs properties provide information specific to this event.

* Button - Indicates which mouse button was pressed.
* Clicks - The number of times a mouse button was pressed.
* X - The x-coordinate of a mouse click in pixels.
* Y - The y-coordinate of a mouse click in pixels.    
* Point - Gets the location of the mouse during the generating mouse event.

### MouseDown Event


It occurs when the mouse pointer is over the control and mouse button is pressed. It receives an argument of type GridTableControlMouseEventArgs that provides data related to this event. This event can be invoked as follows.



{% highlight C# %}  



this.gridGroupingControl1.TableControlMouseDown+=new GridTableControlMouseEventArgs(TableControl_MouseDown);

{% endhighlight %}

{% highlight vbnet %} 



Private Me.gridGroupingControl1.TableControlMouseDown+= New GridTableControlMouseEventArgs(TableControl_MouseDown)

{% endhighlight %}

The following GridTableControlMouseEventArgs properties provide information specific to this event.



<table>
<tr>
<th>
 PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Inner</td><td>
Holds the event data of the underlying original event.</td></tr>
<tr>
<td>
TableControl</td><td>
The GridTableControl that initiated the original event.</td></tr>
</table>


{% highlight C# %}  



private void Table Control_MouseDown(object sender, GridTableControlMouseEventArgs e)

{

Console.Writeline("MouseDown: No. of Clicks"+e.Inner.Clicks.ToString());

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub TableControl_MouseDown(ByVal sender As Object, ByVal e As GridTableControlMouseEventArgs)

Console.Writeline("MouseDown: No. of Clicks"+e.Inner.Clicks.ToString())

End Sub

{% endhighlight %}

### MouseLeave Event

This occurs when the mouse pointer leaves control. It receives an argument of type EventArgs that provides data related to this event. This event can be invoked as follows.

{% highlight C# %}  



this.gridGroupingControl1.TableControl.MouseLeave+=new MouseEventHandler(TableControl_MouseDown);

{% endhighlight %}

{% highlight vbnet %} 



Private Me.gridGroupingControl1.TableControl.MouseLeave+= New MouseEventHandler(TableControl_MouseLeave)

{% endhighlight %}

Example



{% highlight C# %}  



private void TableControl_MouseLeave(object sender, EventArgs e)

{

Console.Writeline("MouseLeave");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub TableControl_MouseLeave(ByVal sender As Object, ByVal e As EventArgs)

Console.Writeline("MouseLeave")

End Sub

 {% endhighlight %}
 
### MouseUp Event

This occurs when the mouse pointer leaves the control and Mouse button is pressed. It receives an argument of type MouseEventArgs that provides data related to this event. This event can be invoked as follows.

{% highlight C# %} 



this.gridGroupingControl1.TableControlMouseUp+=new MouseEventHandler(TableControl_MouseUp);

 {% endhighlight %}

{% highlight vbnet %} 

Private Me.gridGroupingControl1.TableControlMouseUp+= New MouseEventHandler(TableControl_MouseUp)

{% endhighlight %}

The following MouseEventArgs properties provide information specific to this event.



<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Button</td><td>
Gets which mouse button (left or right) is pressed.</td></tr>
<tr>
<td>
Clicks</td><td>
Gets the number of times the mouse button was pressed and released.</td></tr>
<tr>
<td>
Delta</td><td>
Gets a signed count of the number of detent's the mouse wheel has rotated. A detent is one notch of the mouse wheel.</td></tr>
<tr>
<td>
Location</td><td>
Gets the mouse location during generating this event.</td></tr>
<tr>
<td>
X</td><td>
Gets X co-ordinate of the mouse during generating this event.</td></tr>
<tr>
<td>
Y</td><td>
Gets Y co-ordinate of the mouse during generating this event.</td></tr>
</table>


Example



{% highlight C# %}  



private void TableControl_MouseUp(object sender, MouseEventArgs e)

{

Console.Writeline("MouseUp: No. of Clicks"+e.Clicks.ToString());

}

{% endhighlight %}

{% highlight vbnet %} 



Private Sub TableControl_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)

Console.Writeline("MouseUp: No. of Clicks"+e.Clicks.ToString())

End Sub
{% endhighlight %}

## Key Events

Following are the key events:

1.KeyDown - Occurs when a key is pressed when control has focus.

{% highlight C# %}  



this.groupingEngine.TableControl.KeyDown+=new KeyEventHandler(TableControl_KeyDown);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.KeyDown, AddressOf TableControl_KeyDown

{% endhighlight %}

The event handler receives an argument of type KeyEventArgs containing data related to this event.

The following KeyEventArgs properties provide information specific to this event.

14.KeyData - Gets the key data for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.    

* Alt - Gets a value indicating whether the ALT key was pressed.
* Control - Gets a value indicating whether the CTRL key was pressed.
* Handled - Gets or sets a value indicating whether the event was handled.
* KeyCode - Gets the keyboard code for a System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp.
* KeyValue - Gets the keyboard value for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.
* Modifiers - Gets the modifier flags for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp.
* Shift - Gets a value indicating whether the SHIFT key was pressed.
* SuppressKeyPress - Gets or sets a value indicating whether the key event should be passed on to the underlying control.

15.KeyPress - Occurs when a key is pressed when control has focus.



{% highlight C# %}  



this.groupingEngine.TableControl.KeyPress+=new KeyPressEventHandler(TableControl_KeyPress);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.KeyPress, AddressOf TableControl_KeyPress
{% endhighlight %}

The event handler receives an argument of type KeyPressEventArgs containing data related to this event. The following KeyPressEventArgs properties provide information specific to this event.

* KeyChar - The ASCII character corresponding to the key the user pressed.
* Handled - Gets or sets a value indicating whether the System.Windows.Forms.Control.KeyPress

16.KeyUp - Occurs when a key is released when control has focus.

{% highlight C# %}  



this.groupingEngine.TableControl.KeyUp+=new KeyEventHandler(TableControl_KeyUp);

{% endhighlight %}

{% highlight vbnet %} 



AddHandler groupingEngine.TableControl.KeyUp, AddressOf TableControl_KeyUp

{% endhighlight %}

The event handler receives an argument of type KeyEventArgs containing data related to this event. The following KeyEventArgs properties provide information specific to this event.

* KeyData - Gets the key data for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.  
* Alt - Gets a value indicating whether the ALT key was pressed.
* Control - Gets a value indicating whether the CTRL key was pressed.
* Handled - Gets or sets a value indicating whether the event was handled.
* KeyCode - Gets the keyboard code for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp
* KeyValue - Gets the keyboard value for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.
* Modifiers - Gets the modifier flags for System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.
* Shift - Gets a value indicating whether the SHIFT key was pressed.
* SuppressKeyPress - Gets or sets a value indicating whether the key event should be passed on to the underlying control.

## Selection Events for Filter Bar 


Two Selection events for filter bar, namely FilterBarSelectedItemChanging and FilterBarSelectedItemChanged are implemented for Essential Grid. These events enable you to cancel or customize filter value. This support is not available in MS-DataGridView.

### Use Case Scenarios

FilterBarSelectedItemChanging__event__enables you to customize or cancel filter value for specific column. FilterBarSelectedItemChanged__event enables you to retrieve selected column information, selected index, and selected text.



<table>
<tr>
<th>
EVENT </th><th>
DESCRIPTION </th><th>
ARGUMENTS </th><th>
TYPE </th><th>
REFERENCE LINKS </th></tr>
<tr>
<td>
FilterBarSelectedItemChanging</td><td>
This event will be triggered while filtering a column.  This can be canceled. Selected index or selected text can be modified as required.  </td><td>
 public FilterBarSelectedItemChangingEventArgs( GridColumnDescriptor column, int selectedIndex, string selectedText)</td><td>
Event</td><td>
NA </td></tr>
<tr>
<th>
FilterBarSelectedItemChanged</th><th>
This event will be triggered after a column is filtered.    Selected column, selected index, and selected text can be retrieved with this event.</th><th>
        public FilterBarSelectedItemChangedEventArgs(GridColumnDescriptor column, int selectedIndex, string selectedText)</th><th>
Event </th><th>
NA</th></tr>
</table>

### Triggering Selection Events

Refer to the following code to trigger the Selection events:  

//Events hooked in the form load...



this.gridGroupingControl1.FilterBarSelectedItemChanged += new FilterBarSelectedItemChangedEventHandler(gridGroupingControl1_FilterBarSelectedItemChanged);

            this.gridGroupingControl1.FilterBarSelectedItemChanging += new FilterBarSelectedItemChangingEventHandler(gridGroupingControl1_FilterBarSelectedItemChanging);

void gridGroupingControl1_FilterBarSelectedItemChanging(object sender, FilterBarSelectedItemChangingEventArgs e)

        {

//Cancels filtering like this.

            if (e.Column.Name == "Department")

            {

                e.Cancel = true;

            }

        }



        void gridGroupingControl1_FilterBarSelectedItemChanged(object sender, FilterBarSelectedItemChangedEventArgs e)

        {

//Retreives the selected column, selected index and selected text.

            MessageBox.Show(e.SelectedIndex.ToString());

        }





{% highlight vbnet %} 

'Events hooked in the form load...

Private Me.gridGroupingControl1.FilterBarSelectedItemChanged += New FilterBarSelectedItemChangedEventHandler(AddressOf gridGroupingControl1_FilterBarSelectedItemChanged)

Private Me.gridGroupingControl1.FilterBarSelectedItemChanging += New FilterBarSelectedItemChangingEventHandler(AddressOf gridGroupingControl1_FilterBarSelectedItemChanging)



Private Sub gridGroupingControl1_FilterBarSelectedItemChanging(ByVal sender As Object, ByVal e As FilterBarSelectedItemChangingEventArgs)



'Cancels filtering like this.

If e.Column.Name = "Department" Then

e.Cancel = True

End If

End Sub



Private Sub gridGroupingControl1_FilterBarSelectedItemChanged(ByVal sender As Object, ByVal e As FilterBarSelectedItemChangedEventArgs)

'Retreives the selected column, selected index, and selected text.

MessageBox.Show(e.SelectedIndex.ToString())

End Sub

{% endhighlight %} 