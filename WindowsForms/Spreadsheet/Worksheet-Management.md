---
layout: post
title: Worksheet Management in Windows Forms Spreadsheet | Syncfusion
description: Learn about Worksheet Management support in Syncfusion® Windows Forms Spreadsheet control and more details.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Worksheet Management in Windows Forms Spreadsheet
This section explains about the operations that are performed with the worksheet.

## Insert and Delete

Spreadsheet provides support to insert and delete the worksheets in a workbook.

{% tabs %}
{% highlight c# %}

//Insert Sheet
spreadsheet.AddSheet();
	
//Insert sheet with name
spreadsheet.AddSheet("Sheet4", 3);

//Delete Sheet
spreadsheet.RemoveSheet("Sheet2");

{% endhighlight %}
{% endtabs %}

## Hide and Unhide

Spreadsheet provides support to hide and unhide the worksheets in a workbook.

{% tabs %}
{% highlight c# %}

//Hide Sheet
spreadsheet.HideSheet("Sheet 2");

//Unhide Sheet
spreadsheet.UnhideSheet("Sheet 2");

{% endhighlight %}
{% endtabs %}

## Rename a sheet programmatically

Spreadsheet provides support to rename a worksheet in the workbook programmatically by using [RenameSheet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_RenameSheet_System_String_System_String_) method.

{% tabs %}
	
{% highlight c# %}

//To Rename a sheet programmatically
spreadsheet.RenameSheet("ExistingSheetName", "NewSheetName");

{% endhighlight %}
{% endtabs %}

## Protection

### Protecting a worksheet

Spreadsheet provides support to protect the worksheet with or without password. This helps to prevent a user from modifying the contents of the worksheet. The protection of worksheet can be done with [ExcelSheetProtection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.XlsIO.ExcelSheetProtection.html) options also.

The Protect sheet options are

* LockedCells         - Allows the users to select the locked cells of the protected worksheet.

* UnLockedCells       - Allows the users to select the unlocked cells of the protected worksheet.

* FormattingCells     - Allows the users to format any cell on a protected worksheet.

* FormattingRows      - Allows the users to format any row on a protected worksheet.

* FormattingColumns   - Allows the users to format any column on a protected worksheet.

* InsertingRows       - Allows the users to insert rows on the protected worksheet.

* InsertingColumns    - Allows the users to insert columns on the protected worksheet.

* InsertingHyperlinks - Allows the users to insert hyperlinks on the protected worksheet.

* DeletingRows        - Allows the users to delete rows on the protected worksheet.

* DeletingColumns     - Allows the users to delete columns on the protected worksheet.

* Objects             - Allows the users to edit the objects such as Graphic cells like charts,rich textbox, etc.

{% tabs %}
{% highlight c# %}

//Protect the sheet with password
spreadsheet.ProtectSheet(spreadsheet.ActiveSheet, "123");

//Protect the sheet with Protection options
spreadsheet.ProtectSheet(spreadsheet.ActiveSheet, "123", ExcelSheetProtection.FormattingCells);

//Unprotect the sheet
spreadsheet.UnProtectSheet(spreadsheet.ActiveSheet, "123");

{% endhighlight %}
{% endtabs %}

### Protecting a workbook

Spreadsheet provides support to protect the structure and windows of a workbook. By protecting the structure, prevent a user from adding or deleting worksheets or from displaying hidden worksheets. By protecting the windows in the workbook, you can control the size of the workbook, etc.

{% tabs %}
{% highlight c# %}

// To Protect the Workbook 
spreadsheet.Protect(true, true, "123");

//To Unprotect the Workbook
spreadsheet.Unprotect("123");

{% endhighlight %}
{% endtabs %}

## Gridlines

Spreadsheet provides support to control the visibility and color of the Gridlines in a worksheet.

{% tabs %}
{% highlight c# %}

//To show GridLines
spreadsheet.SetGridLinesVisibility(true);

//To hide GridLines
spreadsheet.SetGridLinesVisibility(false);

{% endhighlight %}
{% endtabs %}

## Headings

Spreadsheet provides support to control the visibility of row and column headers in a worksheet

{% tabs %}
{% highlight c# %}

//To hide the Header cells visibility
spreadsheet.SetRowColumnHeadersVisibility(false);

{% endhighlight %}
{% endtabs %}

## Zooming

Spreadsheet provides support to zoom in and zoom out of a worksheet view. The property [AllowZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_AllowZooming) determines whether to allow zooming or not.

{% tabs %}
{% highlight c# %}

//zoom factor
spreadsheet.SetZoomFactor("Sheet1", 200);

{% endhighlight %}
{% endtabs %}

The Events associated with the Zooming are 

. [ZoomFactorChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html)

. [ZoomFactorChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html)

## Events

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
{{ '[WorkbookCreating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}</td><td>
Occurs when the workbook is to be created in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[WorkbookLoaded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}</td><td>
Occur when the workbook is loaded in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[WorksheetAdding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}
</td><td>
Occurs when the worksheet is to be added in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[WorksheetAdded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}
</td><td>
Occurs when the worksheet is added in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[WorksheetRemoving](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}
</td><td>
Occurs when the worksheet is to be removed from Spreadsheet.</td></tr>
<tr>
<td>
{{ '[WorksheetRemoved](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}
</td><td>
Occurs when the worksheet is removed from Spreadsheet.</td></tr>
<tr>
<td>
{{ '[WorkbookUnloaded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}</td><td>
Occurs when the workbook is unloaded or removed from the Spreadsheet.</td></tr>
<tr>
<td>
{{ '[ZoomFactorChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}</td><td>
Occurs when the zoom factor in Spreadsheet is changed.</td></tr>
<tr>
<td>
{{ '[ZoomFactorChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html) ' | markdownify }}</td><td>
Occurs when the zoom factor in Spreadsheet is to be changed.</td></tr>
<tr>
<td>
{{ '[ResizingColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.SfCellGrid.html) ' | markdownify }}</td><td>
Occurs when performing the resizing columns in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[ResizingRows](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.SfCellGrid.html) ' | markdownify }}</td><td>
Occurs when performing the resizing rows in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[CellCommentOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.SfCellGrid.html) ' | markdownify }}</td><td>
Occurs when opening the comments in the cells of Spreadsheet.</td></tr>
<tr>
<td>
{{ '[CellTooltipOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.SfCellGrid.html) ' | markdownify }}</td><td>
Occurs when opening the tool tips of cells in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[CellContextMenuOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.SfCellGrid.html) ' | markdownify }}</td><td>
Occurs when opening the context menu of the cell in Spreadsheet.</td></tr>
<tr>
<td>
{{ '[QueryRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.SpreadsheetGrid.html) ' | markdownify }}</td><td>
Occurs when grid queries for <code>IRange</code> information about a specific cell while rendering.</td></tr>
</table>
