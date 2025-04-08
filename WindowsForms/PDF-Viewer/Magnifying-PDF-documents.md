---
layout: post
title: Magnifying PDF documents in WinForms Pdf Viewer control | Syncfusion<sup>&reg;</sup>;
description: Learn about Magnifying PDF documents support in Syncfusion<sup>&reg;</sup>;WinForms Pdf Viewer control, its elements and more.
platform: WinForms
control: PDF Viewer
documentation: ug
---

# Adjust the magnification of PDF documents using the WinForms PDF Viewer

The WinForms PDF Viewer has predefined set of zoom tools in the built-in toolbar, that allows you to change magnifications of the PDF document that is being displayed.

![Zoom tools of WinForms PDF Viewer](images/zoom tools.png)

1.	**Combo box**: It allows you to select a zoom percentage from the pre-defined set of values listed in the dropdown. Since it is editable, you can also provide your zoom values by double editing the text area.
2.	**Zoom out button**: It allows you to reduce the zoom value by 25% from the current zoom percentage.
3.	**Zoom in button**: It allows you to increase the zoom value by 25% from the current zoom percentage.
4.	**Fit to width button**: It allows you to fit the document to the width of the control.
5.	**Fit to page button**: It allows you to fit a whole page in the window and to view only one page at a time.

### Magnify the document to a given zoom percentage

You can magnify the document to a given zoom percentage by using the [ZoomTo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_ZoomTo_System_Int32_) function of the PDF Viewer. Refer to the following code sample to apply the specific zoom percentage based on the page contents.

{% tabs %}
{% highlight c# %}
//Zoom to 235 percentage.
pdfViewer.ZoomTo(235);
{% endhighlight %}
{% endtabs %}

The [ZoomPercentage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_ZoomPercentage) property can be used to get the control's current zoom percentage.

{% tabs %}
{% highlight c# %}
//Get the current zoom percentage.
int currentZoomPercentage = pdfViewer.ZoomPercentage;
{% endhighlight %}
{% endtabs %}

## Zoom modes

As stated above, the PDF Viewer supports the fit to page and fit to width zoom modes. You can change the zoom mode, using the [ZoomMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_ZoomMode) property of the PDF Viewer. Refer to the following code sample to change the zoom mode.

{% tabs %}
{% highlight c# %}
//To apply fit-to-page zoom mode.
pdfViewer.ZoomMode = ZoomMode.FitPage;
// To apply fit-to-width zoom mode.
pdfViewer.ZoomMode = ZoomMode.FitWidth;
{% endhighlight %}
{% endtabs %}

## Mouse and keyboard shortcuts

**Ctrl (key) + Scroll the mouse wheel up** - To perform zoom in.
**Ctrl (key) + Scroll the mouse wheel down** - To perform zoom out.
