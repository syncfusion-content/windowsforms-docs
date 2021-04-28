---
layout: post
title: Working with PdfViewerControl in WinForms PDF Viewer | Syncfusion
description: Learn about Working with PdfViewerControl support in Syncfusion Windows Forms PDF Viewer (PdfViewerControl) control and more details.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Working with PdfViewerControl in Windows Forms PDF Viewer

Essential PdfViewerControl can display and print PDF files and export the pages as raster images and meta files.

## Properties, Methods, and Events Tables

### Properties

<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Type</th><th>
Data Type</th></tr>
<tr>
<td>
EnableNotificationBar</td><td>
Enables the display of the Notification bar on setting it to true.</td><td>
N/A</td><td>
bool</td></tr>
<tr>
<td>
PageCount </td><td>
Returns the number of pages as viewed in the PdfViewerControl.</td><td>
N/A</td><td>
Integer</td></tr>
<tr>
<td>
ShowToolbar</td><td>
Displays the document toolbar when set to true.</td><td>
N/A</td><td>
bool</td></tr>
</table>

### Methods

<table>
<tr>
<th>
Method</th><th>
Description</th><th>
Parameters</th><th>
Type</th><th>
Return Type</th></tr>
<tr>
<td>
Load</td><td>
loads the PDF to the viewer.</td><td>
Overloads: (string filePath) (string filePath, string password)(PdfLoadedDocument doc)(Stream file)</td><td>
N/A </td><td>
Void </td></tr>
<tr>
<td>
Unload</td><td>
Unloads the loaded PDF.</td><td>
-</td><td>
N/A</td><td>
Void</td></tr>
<tr>
<td>
Dispose</td><td>
Unloads the document and releases the resources used by the component.</td><td>
-</td><td>
N/A</td><td>
Void</td></tr>
<tr>
<td>
ExportAsImage</td><td>
Converts the page to a raster image.</td><td>
Overloads:(int pageIndex)(int startIndex, int endIndex)</td><td>
N/A</td><td>
Bitmap</td></tr>
<tr>
<td>
FindText</td><td>
Searches for the occurrence of given input text in the PDF document and returns all the occurrences and its location in all pages of the PDF document.</td><td>
Overloads:(string text, out Dictionary<int, List &lt;System.Drawing.RectangleF&gt;> matchTextPosition)</td><td>
N/A</td><td>
bool</td></tr>
<tr>
<td>
GoToPageAtIndex</td><td>
Navigates to the specified page</td><td>
(int index)</td><td>
N/A</td><td>
Void</td></tr>
<tr>
<td>
ZoomTo</td><td>
Magnifies the document displayed to the specified percentage.</td><td>
(int percentage)</td><td>
N/A</td><td>
Void</td></tr>
</table>

### Events

<table>
<tr>
<th>
Event</th><th>
Description</th><th>
Event</th><th>
Type</th></tr>
<tr>
<td>
DocumentLoaded</td><td>
triggered after the PDF is successfully loaded.</td><td>
N/A</td><td>
N/A</td></tr>
<tr>
<td>
HyperLinkMouseHover</td><td>
triggered when the mouse pointer is placed over the URL.</td><td>
N/A</td><td>
N/A</td></tr>
<tr>
<td>
HyperLinkMouseClicked</td><td>
triggered when the URL in the PDF document is clicked.</td><td>
N/A</td><td>
N/A</td></tr>
</table>

## Viewing PDF Files 

A PDF can be loaded into the PdfViewerControl either through the open file button available in the toolbar or through the [Load](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_Load_System_String_) method. It also requests passwords to open encrypted documents.

{% tabs %}
{%highlight c#%}

//Initialize PdfViewerControl.

PdfViewerControl pdfViewerControl1 = new PdfViewerControl();

//Load the PDF.

pdfViewerControl1.Load("Sample.pdf");

{%endhighlight%}


{%highlight vb%}

'Initialize PdfViewerControl.

Private pdfViewerControl1 As New PdfViewerControl()

'Load the PDF.

pdfViewerControl1.Load("Sample.pdf")

{%endhighlight%}
{% endtabs %}

You can load an encrypted document by using the overload in the [Load](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_Load_System_String_System_String_) method.

{% tabs %}
{%highlight c#%}

//Initialize PdfViewerControl.

PdfViewerControl pdfViewerControl1 = new PdfViewerControl();

//Load the PDF.

pdfViewerControl1.Load("Sample.pdf", "password");

{%endhighlight%}

{%highlight vb%}

'Initialize PdfViewerControl.

Private pdfViewerControl1 As New PdfViewerControl()

'Load the PDF.

pdfViewerControl1.Load("Sample.pdf", "password")

{%endhighlight%}
{% endtabs %}

## Exporting PDF

### Exporting pages of PDF document as raster images

Essential PdfViewerControl allows selected pages to be exported as raster images. Exporting can be done using the [ExportAsImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_ExportAsImage_System_Int32_) method. This option helps to convert a PDF into an image.

{% tabs %}
{%highlight c#%}


Bitmap image = pdfViewerControl1.ExportAsImage(0);

// Save the image.

image.Save("Sample.png", ImageFormat.Png);

{%endhighlight%}

{%highlight vb%}

Dim image As Bitmap = pdfViewerControl1.ExportAsImage(0)

'Save the image.

image.Save("Sample.png", ImageFormat.Png)

{%endhighlight%}
{% endtabs %}

You can also specify the page range instead of converting each page.

{% tabs %}
{%highlight c#%}

Bitmap[] image = pdfViewerControl1.ExportAsImage(0, 3);

{%endhighlight%}

{%highlight vb%}

Dim image() As Bitmap = pdfViewerControl1.ExportAsImage(0, 3)

{%endhighlight%}
{% endtabs %}

### Exporting pages of PDF document as Vector Images

Exporting pages of PDF document as vector images can be done using the [ExportAsMetafile](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_ExportAsMetafile_System_Int32_) method. The following code sample demonstrates how a PDF document can be exported as a Metafile.

{% tabs %}
{%highlight c#%}

Metafile image = pdfViewerControl1.ExportAsMetafile(0);

// Save the image

image.Save("Sample.emf", ImageFormat.Emf);

{%endhighlight%}

{%highlight vb%}

Dim image As Metafile = pdfViewerControl1.ExportAsMetafile(0)

' Save the image

image.Save("Sample.emf", ImageFormat.Emf)

{%endhighlight%}
{% endtabs %}

You can also specify the page range instead of converting each page individually.

{% tabs %}
{%highlight c#%}

Metafile[] image = pdfViewerControl1.ExportAsMetafile(0, 3);

{%endhighlight%}

{%highlight vb%}

Dim image() As Metafile = pdfViewerControl1.ExportAsMetafile(0, 3)

{%endhighlight%}
{% endtabs %}

## Text selection

In PDF, text can be selected by clicking the mouse left button and dragging the mouse pointer over the text. 

### Detecting the completion of text selection

When the text selection is completed, the `TextSelectionCompleted` event will be raised. The selected text can be retrieved as string from the `args` parameter of the event handler. 

{%tabs%}
{%highlight c#%}

private void PdfViewer_TextSelectionCompleted(object sender, TextSelectionCompletedEventArgs args)
{
    //Get the whole selected text
    string selectedText = args.SelectedText;

    //Get the selected text and its rectangular bounds for each page separately if the selection is made on multiple pages
    Dictionary<int, Dictionary<string, Rectangle>> selectedTextInformation = args.SelectedTextInformation;
}


{%endhighlight%}
{%endtabs%}

### Copying the selected text

The selected text can be copied by clicking Copy from the context menu, which appears when clicking right mouse button after the text is selected.

![Copy Text](Working-with-PDF-Viewer_images/Working-with-PDF-Viewer_img3.png)

The selected text can also be copied using the keyboard shortcut Ctrl + C. 

## Annotations
 
Essential PdfViewerControl provides support for URI annotations in the PDF document, which enables the URI available in the PDF document to be opened in the browser just by clicking it. This also supports a few events which are listed in the events table.

