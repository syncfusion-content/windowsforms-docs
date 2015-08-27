---
layout: post
title: PDF-Converter
description: pdf-converter
platform: windowsform
control: GridControl
documentation: ug
---

# PDF Export

Essential Grid Grouping control supports conversion of grid contents to a PDF file. Users can convert data from Grid Grouping control into a PDF document using GridPDFConverter class. PDF libraries are used to support conversion of grid content to a PDF page. 

To ensure convertion of grid data to PDF document, the following dll files should be added along with default dll files in the reference folder:

* Syncfusion.Pdf.Base  
* Syncfusion.GridHelperClasses.Windows

ExportToPdf method should be used to export the grid to a PDF file. 

The following code example illustrates the conversion of grid data to PDF document.

{% highlight c# %}

GridPDFConverter pdfConvertor = new GridPDFConverter();

pdfConvertor.ExportToPdf("Sample.pdf", this.gridGroupingControl1.TableControl);

//Launches PDF file by using default Application [Acrobat Reader].

System.Diagnostics.Process.Start("Sample.pdf");

{% endhighlight %}

{% highlight vbnet %}

Dim pdfConvertor As GridPDFConverter = New GridPDFConverter()

pdfConvertor.ExportToPdf("Sample.pdf", Me.gridGroupingControl1.TableControl)

'Launches PDF file by using default Application [Acrobat Reader].

System.Diagnostics.Process.Start("Sample.pdf")

{% endhighlight %}

![](Grid-Grouping-Control_images/Grid-Grouping-Control_img211.jpeg)

![](Grid-Grouping-Control_images/Grid-Grouping-Control_img212.png)