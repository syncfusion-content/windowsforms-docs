---
layout: post
title: View-the-PDF-stream-in-viewer | Windows Forms | Syncfusion
description: Know how to view the pdf files as stream using the load method in the windows forms PdfViewerControl.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

#  View the PDF Stream in PDF Viewer

PDF files as stream can be viewed in Essential&reg; PdfViewerControl using the overload available in the Load method. Following are the code snippets.


{% tabs %}
{%highlight c#%}

FileStream stream = new FileStream("Sample.pdf", FileMode.Open);
//Initialize PDF Viewer
PdfViewerControl pdfViewerControl1 = new PdfViewerControl();
//Load the PDF
pdfViewerControl1.Load(stream);

{%endhighlight%}

{%highlight vb%}

Dim stream As New FileStream("Sample.pdf", FileMode.Open)
'Initialize PDF Viewer
Dim pdfViewerControl1 As New PdfViewerControl()
'Load the PDF
pdfViewerControl1.Load(stream)

{%endhighlight%}
{% endtabs %}
