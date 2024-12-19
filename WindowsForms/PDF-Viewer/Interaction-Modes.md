---
layout: post
title: Working with Interaction Modes in WinForms PDFViewer | Syncfusion&reg;
description: Learn about Working with Interaction Modes support in Syncfusion&reg; Windows Forms PDF Viewer (PdfViewerControl) control and more details.
platform: windowsforms
control: PDF Viewer
documentation: UG
---

# Working with Interaction Modes in Windows Forms PDF Viewer

The [WinForms PDF Viewer](https://www.syncfusion.com/winforms-ui-controls/pdf-viewer) supports following cursor modes for easy interaction with the PDF documents: 

* Selection mode 
* Panning mode

## Selection mode

In this mode, the text selection can be performed in the PDF document loaded in the PDF Viewer. It is the default mode of the control and allows users to select and copy text from the PDF files. This is helpful for copying and sharing text content. Refer to the following code to enable the selection mode in `PdfViewerControl`.

{% tabs %}

{% highlight C# %}

PdfViewerControl pdfViewerControl = new PdfViewerControl(); 
pdfViewerControl.CursorMode = PdfViewerCursorMode.SelectTool;
pdfViewerControl.Load("Sample.pdf");

{% endhighlight %}

{% highlight vbnet %}

Dim pdfViewerControl As PdfViewerControl = New PdfViewerControl()
pdfViewerControl.CursorMode = PdfViewerCursorMode.SelectTool
pdfViewerControl.Load("Sample.pdf")

{% endhighlight %}

{% endtabs %}


## Panning mode

In this mode, the dragging and scrolling of the pages can be performed in any direction using mouse and touch interactions, but the text selection cannot be performed. Refer to the following code to enable the panning mode in `PdfViewerControl`.

{% tabs %}

{% highlight C# %}

PdfViewerControl pdfViewerControl = new PdfViewerControl();
pdfViewerControl.CursorMode = PdfViewerCursorMode.HandTool;
pdfViewerControl.Load("Sample.pdf");

{% endhighlight %}

{% highlight vbnet %}

Dim pdfViewerControl As PdfViewerControl = New PdfViewerControl()
pdfViewerControl.CursorMode = PdfViewerCursorMode.HandTool
pdfViewerControl.Load("Sample.pdf")

{% endhighlight %}

{% endtabs %}
