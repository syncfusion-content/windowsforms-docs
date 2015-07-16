---
layout: post
title: Load-PDF-without-ToolStrip-in-Viewer
description: load pdf without toolstrip in viewer?
platform: WindowsForms
control: PDF Viewer
documentation: ug
---

### Load PDF without ToolStrip in Viewer?

In order to view PDF without the toolstrip, make use of PdfDocumentView control instead of PdfViewerControl. Other features and options are similar to PdfViewerControl.



[C#]

PdfDocumentView pdfDocumentView1 = new PdfDocumentView();

pdfDocumentView1.Load(@"Template.pdf");



[VB.NET]

Dim pdfDocumentView1 As New PdfDocumentView()

pdfDocumentView1.Load("Template.pdf")



The following is the image of a PDF document viewed in PdfDocumentView.

{ ![](Load-PDF-without-ToolStrip-in-Viewer_images/Load-PDF-without-ToolStrip-in-Viewer_img1.png) | markdownify }
{:.image }


