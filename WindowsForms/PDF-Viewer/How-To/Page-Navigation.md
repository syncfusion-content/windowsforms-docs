---
layout: post
title: Page Navigation | Windows Forms | Syncfusion
description: Learn here all about how to programatically navigate between pages and inside pages of Syncfusion Windows Forms PdfViewer Control and more.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---
# Page Navigation in WinForms PdfViewer

## Navigating to a specific page in Windows Forms PdfViewerControl

Navigation to a specific page, through code, is possible using GoToPageAtIndex method.

{% tabs %}
{%highlight c#%}

pdfViewerControl1.GoToPageAtIndex(2);

{%endhighlight%}

{%highlight vb%}


pdfViewerControl1.GoToPageAtIndex(2)

{%endhighlight%}
{% endtabs %}

## Navigate to a specific horizontal and vertical offset programmatically

You can now scroll to a specific horizontal and vertical offset of the PDF document programmatically using the [HorizontalScrollOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_HorizontalScrollOffset) and [VerticalScrollOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_VerticalScrollOffset) properties of [PdfViewerControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html). Refer to the following code, to scroll the PDF document to the horizontal and vertical offset of 100 and 400, respectively.

{% tabs %}
{%highlight c#%}

//Load the PDF
pdfViewerControl1.Load("Sample.pdf");

//Navigate to the horizontal and vertical offset of 100 and 400 respectively
pdfViewerControl1.HorizontalScrollOffset = 100;
pdfViewerControl1.VerticalScrollOffset = 400;

{%endhighlight%}

{%highlight vb%}


'Load the PDF
pdfViewerControl1.Load("Sample.pdf")

'Navigate to the horizontal and vertical offset of 100 and 400 respectively
pdfViewerControl1.HorizontalScrollOffset = 100
pdfViewerControl1.VerticalScrollOffset = 400

{%endhighlight%}
{% endtabs %}