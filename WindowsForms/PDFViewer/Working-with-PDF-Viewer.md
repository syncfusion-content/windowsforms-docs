---
layout: post
title: Working-with-PDF-Viewer
description: working with pdf viewer
platform: WindowsForms
control: PDF Viewer
documentation: ug
---

# Working with PDF Viewer

Essential PDF Viewer can display PDF files, and print and export the pages as raster images. All this can be done within a .NET application.

## Properties, Methods, and Events Tables

### Properties

_Table_ _2__: Properties Table_

<table>
<tr>
<td>
Property </td><td>
Description </td><td>
Type </td><td>
Data Type </td></tr>
<tr>
<td>
EnableNotificationBar</td><td>
Enables the display of the Notification bar on setting it to true.</td><td>
N/A</td><td>
bool</td></tr>
<tr>
<td>
PageCount </td><td>
Returns the number of pages as viewed in the PDF Viewer.</td><td>
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


_Table_ _3__: Methods Table_

<table>
<tr>
<th>
Method </th><th>
Description </th><th>
Parameters </th><th>
Type </th><th>
Return Type </th></tr>
<tr>
<th>
Load</th><th>
This method is used to load the PDF to the viewer.</th><th>
Overloads: (string filePath) (string filePath, string password)(PdfLoadedDocument doc)(Stream file)</th><th>
N/A </th><th>
Void </th></tr>
<tr>
<th>
Unload</th><th>
Unloads the loaded PDF.</th><th>
-</th><th>
N/A</th><th>
Void</th></tr>
<tr>
<th>
Dispose</th><th>
Unloads the document and releases the resources used by the component.</th><th>
-</th><th>
N/A</th><th>
Void</th></tr>
<tr>
<th>
ExportAsImage</th><th>
Converts the page to a raster image.</th><th>
Overloads:(int pageIndex)(int startIndex, int endIndex)</th><th>
N/A</th><th>
Bitmap</th></tr>
<tr>
<th>
FindText</th><th>
Searches for the occurance of given input text in the PDF document and returns all the occurances and its location in all pages of the PDF document.</th><th>
Overloads:(String text, out Dictionary<int, List<System.Drawing.RectangleF>> matchRect)</th><th>
N/A</th><th>
bool</th></tr>
<tr>
<th>
GoToPageAtIndex</th><th>
Navigates to the mentioned page</th><th>
(int index)</th><th>
N/A</th><th>
Void</th></tr>
<tr>
<th>
ZoomTo</th><th>
Magnifies the document displayed to the specified percentage.</th><th>
(int percentage)</th><th>
N/A</th><th>
Void</th></tr>
</table>
Events

_Table_ _4__: Events Table_

<table>
<tr>
<th>
Event </th><th>
Description </th><th>
Arguments </th><th>
Type </th></tr>
<tr>
<th>
DocumentLoaded</th><th>
This event is triggered after the PDF is successfully loaded.</th><th>
N/A</th><th>
N/A</th></tr>
<tr>
<th>
HyperLinkMouseHover</th><th>
This event is triggered when the mouse pointer is placed over the URL.</th><th>
N/A</th><th>
N/A</th></tr>
<tr>
<th>
HyperLinkMouseClicked</th><th>
This event is triggered when the URL in the PDF document is clicked.</th><th>
N/A</th><th>
N/A</th></tr>
</table>


Viewing PDF Files 

A PDF can be loaded into the PDF Viewer either through the File Open dialog available in the toolbar or through the Load method. It also requests passwords to open encrypted documents.



[C#]

//Initialize PDF Viewer.

PdfViewerControl pdfViewer1 = new PdfViewerControl();



//Load the PDF.

pdfViewer1.Load("Template.pdf");



[VB.NET]

'Initialize PDF Viewer.

Private pdfViewer1 As New PdfViewerControl()



'Load the PDF.

pdfViewer1.Load("Template.pdf")



You can load an encrypted document by using the overload in the Load method.



[C#]

//Initialize PDF Viewer.

PdfViewerControl pdfViewer1 = new PdfViewerControl();



//Load the PDF.

pdfViewer1.Load("Template.pdf", "password");



[VB.NET]

'Initialize PDF Viewer.

Private pdfViewer1 As New PdfViewerControl()



'Load the PDF.

pdfViewer1.Load("Template.pdf", "password")



Printing PDF Files 

PDF Viewer allows printing loaded PDFs using the Print button in the toolbar. The following Print dialog will be opened upon triggering the Print button.



{{ '![](Working-with-PDF-Viewer_images/Working-with-PDF-Viewer_img1.png)' | markdownify }}
{:.image }


_Figure_ _9__: Print Dialog displayed in PDF Viewer_

Silent Printing

The PrintDocument property of PdfViewerControl returns System.Drawing.Printing.PrintDocument that helps to complete printing using PrintDialog. The following code sample demonstrates this:

[C#]

PrintDialog dialog = new PrintDialog();

dialog.AllowPrintToFile = true;         

dialog.Document = viewer.PrintDocument;

dialog.Document.Print();



[VB.NET]

Dim dialog As New PrintDialog()

dialog.AllowPrintToFile = True

dialog.Document = viewer.PrintDocument

dialog.Document.Print()

Exporting PDF

Exporting PDFs as Raster Images

Essential PDF Viewer allows selected pages to be exported as raster images. Exporting can be done using the ExportAsImage method. This option helps to convert a PDF into an image.



[C#]

Bitmap img = pdfViewer1.ExportAsImage(0);



// Save the image.

img.Save("Sample.png", ImageFormat.Png);



[VB.NET]

Dim img As Bitmap = pdfViewer1.ExportAsImage(0)



'Save the image.

img.Save("Sample.png", ImageFormat.Png)



You can also specify the page range instead of converting each page.

[C#]

Bitmap[] img = pdfViewer1.ExportAsImage(0, 3);



[VB.NET]

Dim img() As Bitmap = pdfViewer1.ExportAsImage(0, 3)

Exporting PDFs as Vector Images

Exporting PDFs as vector images can be done using the ExportAsMetafile method. The following code sample demonstrates how a PDF document can be exported as a metafile.

[C#]

Metafile img = pdfViewer1.ExportAsMetafile(0);



// Save the image

img.Save("Sample.emf", ImageFormat.Emf);



[VB.NET]

Dim img As Metafile = pdfViewer1.ExportAsMetafile(0)



' Save the image

img.Save("Sample.emf", ImageFormat.Emf)



You can also specify the page range instead of converting each page individually.

[C#]

Metafile[] img = pdfViewer1.ExportAsMetafile(0, 3);



[VB.NET]

Dim img() As Metafile = pdfViewer1.ExportAsMetafile(0, 3)

Text Search

Essential PDF Viewer allows end users to search and highlight the text in the PDF document. The search box will appear when Ctrl+F is pressed and searches the text in the PDF document as shown in the following figure.

{{ '![](Working-with-PDF-Viewer_images/Working-with-PDF-Viewer_img2.png)' | markdownify }}
{:.image }


_Figure_ _10__: Searching a PDF_



The PDF Viewer control also supports searching text in the PDF document with the help of the following API. The FindText method returns true when the text given is found in the document. The dictionary contains the page index and the list of rectangular coordinates of the text found in that page. The following code snippet illustrates how text search can be achieved in the PDF Viewer control.



[C#]

bool IsMatchFound;

pdfViewerControl1.Load("../../Data/Barcode.pdf");



//Get the occurrences of the target text and location.

Dictionary<int, List<RectangleF>> 

          textSearch = new Dictionary<int, List<RectangleF>>();

IsMatchFound = pdfViewerControl1.FindText("targetText", out textSearch);



[VB.NET]

Dim IsMatchFound As Boolean

pdfViewerControl1.Load("../../Data/Barcode.pdf")



'Get the occurrences of the target text and location.

Dim textSearch As New Dictionary(Of Integer, List(Of RectangleF))()

IsMatchFound = pdfViewerControl1.FindText("targetText", textSearch)



Annotation

Essential PDF Viewer provides support for URI annotations in the PDF document, which enables the URI available in the PDF document to be opened in the browser just by clicking it. This also supports a few events which are listed in the previous table.

