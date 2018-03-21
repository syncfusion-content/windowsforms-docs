---
layout: post
title: Conversion in Spreadsheet
description: How to convert the workbook in Spreadsheet to image, pdf and html
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Conversion
This section explains about the conversion of workbook in Spreadsheet into image, PDF and HTML

## Convert into Image

Spreadsheet provides support to convert a worksheet in to an image of type Bitmap or Metafile based on the input range of rows and columns with all basic formats preserved, By using the [ConvertToImage](https://help.syncfusion.com/cr/cref_files/file-formats/xlsio/Syncfusion.XlsIO.Base~Syncfusion.XlsIO.IWorksheet~ConvertToImage.html) method,worksheet can be converted into an image.

{% tabs %}
{% highlight c# %}

IWorksheet sheet = spreadsheet.Workbook.ActiveSheet;
sheet.UsedRangeIncludesFormatting = false;

int lastRow = sheet.UsedRange.LastRow + 1;
int lastColumn = sheet.UsedRange.LastColumn + 1;

System.Drawing.Image image = sheet.ConvertToImage(1, 1, lastRow, lastColumn, ImageType.Bitmap, null);
image.Save("Sample.png", ImageFormat.Png);

System.Diagnostics.Process.Start("Sample.png");

{% endhighlight %}
{% endtabs %}

## Convert into PDF

Spreadsheet provides support to export the Excel workbook to PDF using ExcelToPdfConverter. 

For converting the Excel sheet to PDF, “Syncfusion.ExcelToPDFConverter.Base.dll” and “Syncfusion.Pdf.Base.dll” references should be added.

Export the Excel workbook as PDF document using [Convert](http://help.syncfusion.com/cr/cref_files/windowsforms/xlsio/Syncfusion.ExcelToPDFConverter.Base~Syncfusion.ExcelToPdfConverter.ExcelToPdfConverter~Convert.html) method of [ExcelToPdfConverter](http://help.syncfusion.com/cr/cref_files/windowsforms/xlsio/Syncfusion.ExcelToPDFConverter.Base~Syncfusion.ExcelToPdfConverter.ExcelToPdfConverter.html) class which is available under the name space “Syncfusion.ExcelToPdfConverter”

{% tabs %}
{% highlight c# %}

ExcelToPdfConverter converter = new ExcelToPdfConverter(spreadsheet.Workbook);

//Initialize the PdfDocument
PdfDocument pdfDoc = new PdfDocument();

//Initialize the ExcelToPdfConverter Settings
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

## Convert into HTML

Spreadsheet provides support to convert the excel workbook into HTML page.

{% tabs %}
{% highlight c# %}

spreadsheet.Workbook.SaveAsHtml("Sample.html", HtmlSaveOptions.Default);
System.Diagnostics.Process.Start("Sample.html");

{% endhighlight %}
{% endtabs %}

