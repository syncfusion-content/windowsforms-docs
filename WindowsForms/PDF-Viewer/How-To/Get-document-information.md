---
layout: post
title: Get-document-information-using-PDF-Viewer WinForms | Syncfusion
description: Get the information like filename and file path of the loaded PDF document in Syncfusion PDF Viewer WinForms.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Get document information
The PDF Viewer allows you to access the filename and file path of the loaded PDF document.

Refer to the following code example to access the filename.

{% tabs %}

{%highlight c#%}

//Initialize the PDF Viewer
PdfViewerControl pdfViewer = new PdfViewerControl();
//Loads the PDF document in PDF Viewer
pdfViewer.Load(@"input.pdf");

//Gets the filename of loaded PDF document
string fileName = pdfViewer.DocumentInformation.FileName;

{%endhighlight%}

{%highlight vb%}

'Initialize the PDF Viewer 
pdfViewer As New PdfViewerControl() 
'Loads the PDF document in PDF Viewer 
pdfViewer.Load("../../Data/Barcode.pdf")

'Gets the filename of loaded PDF document
Dim fileName As String = pdfViewer.DocumentInformation.FileName

{%endhighlight%}
{% endtabs %}

Refer to the following code example to access the file path.

{% tabs %}

{%highlight c#%}

//Initialize the PDF Viewer
PdfViewerControl pdfViewer = new PdfViewerControl();
//Loads the PDF document in PDF Viewer
pdfViewer.Load(@"input.pdf");

//Gets the file path of loaded PDF document
string filePath = pdfViewer.DocumentInformation.FilePath;


{%endhighlight%}

{%highlight vb%}
'Initialize the PDF Viewer 
pdfViewer As New PdfViewerControl() 
'Loads the PDF document in PDF Viewer 
pdfViewer.Load("../../Data/Barcode.pdf")

'Gets the file path of loaded PDF document
Dim filePath As String = pdfViewer.DocumentInformation.FilePath

{%endhighlight%}

{% endtabs %}

N> The sample project to get document information is available in the [GitHub](https://github.com/SyncfusionExamples/WinForms-PDFViewer-Examples/tree/master/How-to/Get-Document-information) link.