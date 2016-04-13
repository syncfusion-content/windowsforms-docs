---
layout: post
title: Conversion
description: How to convert the workbook in Spreadsheet to image, pdf and html
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Conversion
This section explains about the conversion of workbook in Spreadsheet into image, pdf and html

## Image

Spreadsheet provides support to convert a worksheet in to an image of type bitmap or metafile based on the input range of rows and columns with all basic formats preserved, By using the [ConvertToImage](http://help.syncfusion.com/file-formats/xlsio/conversions#convert-worksheet-to-image) method,worksheet can be converted into an image.

{% tabs %}
{% highlight c# %}

IWorksheet sheet = spreadsheet.Workbook.ActiveSheet;

sheet.UsedRangeIncludesFormatting = false;

int lastRow = sheet.UsedRange.LastRow + 1;

int lastColumn = sheet.UsedRange.LastColumn + 1;

System.Drawing.Image img = sheet.ConvertToImage(1, 1, lastRow, lastColumn, ImageType.Bitmap, null);

img.Save("Sample.png", ImageFormat.Png);

System.Diagnostics.Process.Start("Sample.png");

{% endhighlight %}
{% endtabs %}


## Pdf

Spreadsheet provides support to export the Excel workbook to PDF using ExcelToPdfConverter. 

For converting the Excel sheet to PDF, “Syncfusion.ExcelToPDFConverter.Base.dll” and “Syncfusion.Pdf.Base.dll” references should be added.

Export the Excel workbook as Pdf document using `Convert` method of `ExcelToPdfConverter` class which is available under the name space “Syncfusion.ExcelToPdfConverter”

{% tabs %}
{% highlight c# %}

ExcelToPdfConverter converter = new ExcelToPdfConverter(spreadsheet.Workbook);

//Intialize the PdfDocument

PdfDocument pdfDoc = new PdfDocument();

//Intialize the ExcelToPdfConverter Settings

ExcelToPdfConverterSettings settings = new ExcelToPdfConverterSettings();

settings.LayoutOptions = LayoutOptions.NoScaling;

//Assign the PdfDocument to the templateDocument property of ExcelToPdfConverterSettings

settings.TemplateDocument = pdfDoc;

settings.DisplayGridLines = GridLinesDisplayStyle.Invisible;

//Convert Excel Document into PDF document

pdfDoc = converter.Convert(settings);

//Save the PDF file

pdfDoc.Save("Sample.pdf");

System.Diagnostics.Process.Start("Sample.pdf");

{% endhighlight %}
{% endtabs %}

## Html

Spreadsheet provides support to convert the excel workbook into HTML page.

{% tabs %}
{% highlight c# %}

spreadsheet.Workbook.SaveAsHtml("Sample.html", HtmlSaveOptions.Default);

System.Diagnostics.Process.Start("Sample.html");

{% endhighlight %}
{% endtabs %}
