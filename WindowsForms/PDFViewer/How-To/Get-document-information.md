---
layout: post
title: Get-document-information-using-PDF-Viewer  | Windows Forms | Syncfusion
description: Get the information of the PDF document loaded in Syncfusion PDF Viewer WinForms
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

## Get document information
The PdfViewerControl allows you to access the filename and file path of the loaded PDF document.

Refer to the following code example to access the filename.

{% tabs %}

{%highlight c#%}

//Initialize the PdfViewercontrol

PdfViewerControl pdfViewer = new PdfViewerControl();

//Loads the PDF document in PdfViewerControl

pdfViewer.Load(@"input.pdf");

//Gets the filename of loaded PDF document

string filename = pdfViewer.DocumentInformation.FileName;

{%endhighlight%}

{%highlight vb%}

'Initialize the PdfViewerControl 

pdfViewer As New PdfViewerControl() 

'Loads the PDF document in PdfViewerControl 

pdfViewer.Load("../../Data/Barcode.pdf")

'Gets the filename of loaded PDF document

Dim filename As String = pdfViewer.DocumentInformation.FileName

{%endhighlight%}
{% endtabs %}

Refer to the following code example to access the file path.

{% tabs %}

{%highlight c#%}

//Initialize the PdfViewercontrol

PdfViewerControl pdfViewer = new PdfViewerControl();

//Loads the PDF document in PdfViewerControl

pdfViewer.Load(@"input.pdf");

//Gets the file path of loaded PDF document

string filepath = pdfViewer.DocumentInformation.FilePath;


{%endhighlight%}

{%highlight vb%}
'Initialize the PdfViewerControl 

pdfViewer As New PdfViewerControl() 

'Loads the PDF document in PdfViewerControl 

pdfViewer.Load("../../Data/Barcode.pdf")

'Gets the file path of loaded PDF document

Dim filepath As String = pdfViewer.DocumentInformation.FilePath

{%endhighlight%}

{% endtabs %}