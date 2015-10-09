---
layout: post
title: Exporting-Pivot-Grid-to-Excel-Word-and-PDF | WindowsForms | Syncfusion
description: exporting pivot grid to excel, word and pdf
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Exporting Pivot Grid to Excel, Word and PDF

The PivotGrid is exported into different formats and the formatting styles are applied as per the visual style of PivotGrid.

There are three options to export PivotGrid:

1. Export to Excel
2. Export to Word
3. Export to PDF



### Export to Excel:

Exporting data to an Excel spreadsheet is one of the most commonly preferred features in the .NET world. Essential Grid control has an in-built support to export an Excel spreadsheet. The class ExcelExport provides support for exporting data from the PivotGrid control to an Excel spreadsheet for verification and/or computation. 

This class automatically copies a grid's styles and formats to an Excel spreadsheet. This enables you to export PivotGrid to an Excel document. 

The following code illustrates exporting PivotGrid to an Excel:

{% highlight c# %}

ExcelExport excelExport = new ExcelExport(pivotGridControl1, Syncfusion.XlsIO.ExcelVersion.Excel2010);

excelExport.ExportMode = (ExportAsPivotTable) ? ExportModes.PivotTable : ExportModes.Cell;

excelExport.Export(FileName);

{% endhighlight %}


Export to Excel provides two options:

1. Cell-by-Cell Export
2. Pivot Table Export



### Cell-by-Cell Export:

In the cell-by-cell export, the contents are exported cell by cell with the formats applied on it. The cell-by-cell formatting will have all the styles applied on it.

The following image shows the cell-by-cell export:



![](Exporting-Pivot-Grid-to-Excel-Word-and-PDF_images/Exporting-Pivot-Grid-to-Excel-Word-and-PDF_img1.png)

### Pivot Table Export:

In this type of export, the user can export the entire PivotGrid with its functionalities such as sorting and filtering. PivotGrid pivots the data via drag-and-drop to organize the data in a cross-tabulated form. The major advantage of PivotGrid is that you can extract any desired information within a limited span of time. 

Apart from presenting the data in a proper manner, you can also summarize and group the data. PivotGrid has its main application in the financial domain. It is used to organize and analyze the business data.

The following image depicts the exported PivotTable:



![](Exporting-Pivot-Grid-to-Excel-Word-and-PDF_images/Exporting-Pivot-Grid-to-Excel-Word-and-PDF_img2.png)





### Export to Word:

Essential Grid has an in-built support to export Word. The user can download the data from the PivotGrid control into a Word document for offline verification and/or computation. This can be achieved by making use of the PivotWordExport class. 

The below code snippets contains codes that exports PivotGrid to Word:

{% highlight c# %}



PivotWordExport wordExport = new PivotWordExport();



wordExport.pivotGridToWord(savedialog.FileName, pivotGridControl1);

{% endhighlight %}

{% highlight vbnet %}

Dim wordExport As New PivotWordExport()

wordExport.pivotGridToWord(savedialog.FileName, pivotGridControl1)

{% endhighlight %}

Merging is applied to all the cells and the exported file is as same as that of the original PivotGrid.

The formatting is applied based on the visual styles of the grid.

The below image depicts the conversion of PivotGrid content to a Word file:

![](Exporting-Pivot-Grid-to-Excel-Word-and-PDF_images/Exporting-Pivot-Grid-to-Excel-Word-and-PDF_img3.png)

### Exporting to PDF:

Essential Grid control supports conversion of PivotGrid content to a PDF file. Data in the PivotGrid control can be converted to a PDF document for offline verification and/or computation. This can be achieved by making use of the PivotPdfExport class. The PDF libraries are used to support the conversion of PivotGrid content to a PDF page.

While exporting to PDF, PivotGrid is read row by row and exported into the PDF document.

The Export method is used to export PivotGrid content to a PDF file. The following sample code illustrates how to convert the PivotGrid content to PDF.

{% highlight c# %}

PivotPdfExport pdfExport = new PivotPdfExport(pivotGridControl1);

pdfExport.Export(savedialog.FileName);

{% endhighlight %}

{% highlight vbnet %}

Dim pdfExport As New PivotPdfExport(pivotGridControl1)

pdfExport.Export(savedialog.FileName)

{% endhighlight %}

The below image depicts the conversion of PivotGrid content to a PDF file:



![](Exporting-Pivot-Grid-to-Excel-Word-and-PDF_images/Exporting-Pivot-Grid-to-Excel-Word-and-PDF_img4.png)





### Sample Location

A sample is placed in the following location:

&lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\[VersionNumber]\Windows\ PivotGrid.Windows\Samples\2.0\Exporting\Export Demo