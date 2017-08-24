---
layout: post
title: Exporting in GridControl
description: how to export user-defined function from grid to excel workbook
platform: windowsforms
control: Grid
documentation: ug
---

# How to export user-defined function from Grid to Excel workbook

To export user-defined formula library function from Grid to Excel:

1. Create an Excel Add-In file (*.xla) including the user-defined function as illustrated in the following link: [http://msdn.microsoft.com/en-us/library/office/aa140990(v=office.10).aspx](http://msdn.microsoft.com/en-us/library/office/aa140990(v=office.10).aspx).
2. Now, bind add-in file path and custom method name with GridExcelConverterControl through AddCustomFunction method.

### Creating the XLA File

To create an XLA file in Excel:

1. Create a new empty workbook and click Save As from the File menu.
3. In the Save As dialog box, select the location to save the workbook. Enter the file name for the Add-In workbook, and then select the type as Excel Add-In (*.xla).
4. Click Save, and then press ALT+ F11 to open the VBA Editor. Now, you can create the custom function through the VBA Editor.



The following screen shot illustrates how to create the user-defined function through the VBA editor.

![](How-to-export-user-defined-function-from-Grid-to-E_images/How-to-export-user-defined-function-from-Grid-to-E_img1.png)



The XLA file will not be visible in Excel because Add-Ins are never visible. All changes must be done to the VBA Editor only.



The following code illustrates how to export the user-defined function to Excel.

{% highlight c# %}

//Exports the user-defined function.
string xla = @"..\..\AddIns\Add.xla";
Syncfusion.GridExcelConverter.GridExcelConverterControl excelConverter = new Syncfusion.GridExcelConverter.GridExcelConverterControl();
excelConverter.AddCustomFunction(xla, "add", saveFileDialog1.FileName);
excelConverter.GridToExcel(this.gridControl1.Model, saveFileDialog1.FileName);

{% endhighlight %}