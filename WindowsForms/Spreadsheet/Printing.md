---
layout: post
title: Printing in Windows Forms Spreadsheet control | Syncfusion®
description: Learn about Printing support in Syncfusion® Windows Forms Spreadsheet control, its elements and more details.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Printing in Windows Forms Spreadsheet

Spreadsheet control allows you to print the data in the workbook with the help of PDF Conversion. To provide the printing support in Spreadsheet, you need to convert the workbook into PDF document using ExcelToPdfConverter.

For Conversion of Excel Workbook in Spreadsheet to PDF document, use `Convert` method of `ExcelToPdfConverter`.

For viewing the PDF document, you can use `PdfViewerControl` to load the saved PDF stream.

{% tabs %}
{% highlight c# %}

//Create the pdf viewer for load the document.
PdfViewerControl pdfViewer = new PdfViewerControl();

//Create Memory Stream to save pdf document
MemoryStream pdfStream = new MemoryStream();
ExcelToPdfConverter converter = new ExcelToPdfConverter (spreadsheet.Workbook);  

//Initialize the ExcelToPdfConverter Settings
ExcelToPdfConverterSettings settings = new ExcelToPdfConverterSettings(); 
settings.LayoutOptions = LayoutOptions.NoScaling;

{% endhighlight %}
{% endtabs %}

For print preview you can load the PDF stream into viewer and for direct printing use `Print` method in PdfViewerControl  which is available under the namespace “Syncfusion.PdfViewer.Windows”

{% tabs %}
{% highlight c# %}

//Initialize the PdfDocument
PdfDocument pdfDoc = new PdfDocument ();

//Assign the PdfDocument to the templateDocument property of ExcelToPdfConverterSettings  
settings.TemplateDocument = pdfDoc;
settings.DisplayGridLines = GridLinesDisplayStyle.Invisible;

//Convert Excel Document into PDF document
pdfDoc = converter.Convert(settings);

//Save the PDF file     
pdfDoc.Save(pdfStream);

//Load the document to pdf viewer
pdfViewer.Load(pdfStream);

//Print the doc
pdfViewer.Print(true);

{% endhighlight %}
{% endtabs %}
