---
layout: post
title: Selection and Editing
description: Selection and Editing behavior in Spreadsheet
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Selection and Editing

This section explains about the Selection and Editing behavior in Spreadsheet
<br/>

## Selection

The Spreadsheet control provides support for selection in grid by using mouse, keyboard and touch interactions.

By default, Selection behavior will be enabled in Spreadsheet,but if you want to disable the selection in Spreadsheet, then set the `AllowSelection` Property to be false.

{% tabs %}
{% highlight c# %}

void spreadsheet_WorkbookLoaded(object sender, WorkbookLoadedEventArgs args)
{
    spreadsheet.ActiveGrid.AllowSelection = false;
}

{% endhighlight %}
{% endtabs %}

The Events associated with the Selection behavior are

* `SelectionChanging`     – Occurs when the selection is going to be changed. This event allows to cancel the selection change.
* `SelectionChanged`      - Occurs after the selection is changed
* `CurrentCellActivating` - Occurs when the current cell is going to be activated. This event allow to cancel the current cell activation.
* `CurrentCellActivated`  - Occurs after the current cell is activated
* `CellClick`             - Occurs when you click on the cell
<br/><br/>

## Editing

The Spreadsheet control provides support for Editing, you can modify and commit the cell values in the workbook. The Events associated with the Editing are CurrentCellBeginEdit and CurrentCellEndEdit of SpreadsheetGrid.

{% tabs %}
{% highlight c# %}

void spreadsheet_WorkbookLoaded(object sender, WorkbookLoadedEventArgs args)
{
   foreach (var grid in args.GridCollection)
   {
      grid.CurrentCellBeginEdit += grid_CurrentCellBeginEdit;

      grid.CurrentCellEndEdit += grid_CurrentCellEndEdit;
   }
}

void grid_CurrentCellEndEdit(object sender, CurrentCellEndEditEventArgs args)
{
    //Code          
}
	
void grid_CurrentCellBeginEdit(object sender, CurrentCellBeginEditEventArgs args)
{
    //Code         
}

{% endhighlight %}
{% endtabs %}

The order of events when editing and committing a cell value in Spreadsheet,

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
`CurrentCellBeginEdit`</td><td>
Occurs when the current cell enters into edit mode. This event allows to cancel entering the edit mode.</td></tr>
<tr>
<td>
`CurrentCellValueChanged` </td><td>
Occurs when the current cell value is changed in edit mode</td></tr>
<tr>
<td>
`CurrentCellValidating`</td><td>
Occurs when the current cell value is going to be validated</td></tr>
<tr>
<td>
`CurrentCellValidated`</td><td>
Occurs after the current cell is validated</td></tr>
<tr>
<td>
`CurrentCellEndEdit`</td><td>
Occurs when the current cell leaves from edit mode</td></tr>
</table>
