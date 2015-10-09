---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: PDF Viewer
documentation: ug
---

# Getting Started

## Feature Summary

Supported features include:

* Support for viewing and printing PDF files.
* Support for various PDF objects such as text, lines, curves, color spaces, and JPEG images with DCTDecode, CCITTFaxDecode, and FlateDecode filters.
* Support for exporting PDF pages as raster images.

Supported and non-supported elements of Essential PDF Viewer for Windows Forms, WPF and ASP.NET MVC are listed in the following table.



<table>
<tr>
<th>
{{ '**Features**' | markdownify }}</th><th>
{{ '**Windows**' | markdownify }}</th><th>
{{ '**WPF**' | markdownify }}</th><th>
{{ '**ASP.NET MVC**' | markdownify }}</th></tr>
<tr>
<td>
Text</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Graphical Elements (Line, Curve etc.)</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td colspan = "4">
{{ '**Image Formats**' | markdownify }}</td></tr>
<tr>
<td>
JPEG</td><td>
Yes </td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
PNG</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
TIFF</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Inline Images</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td colspan = "4">
{{ '**Encoding Techniques**' | markdownify }}</td></tr>
<tr>
<td>
Soft mask</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Image mask</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td colspan = "4">
{{ '**Fonts**' | markdownify }}</td></tr>
<tr>
<td>
Standard Fonts</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
TrueType Fonts</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Type 0, Type 1,Type 3</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Embedded Fonts</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td colspan = "4">
{{ '**Color Space**' | markdownify }}</td></tr>
<tr>
<td>
RGB</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
CMYK</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Gray</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
ICC</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Indexed </td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
CalRGB* </td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
CalGray*</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Lab*</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Separation* </td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
DeviceN*</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Pattern*</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td colspan = "4">
{{ '**Compression Filters**' | markdownify }}</td></tr>
<tr>
<td>
DCTDecode (Image, Content)</td><td>
Yes </td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
CCITTFaxDeocde (Image)</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
FlateDecode (Image, Content)</td><td>
Yes </td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
LZWDecode (Content only)</td><td>
Yes </td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
ASCII85Decode (Content only)</td><td>
Yes </td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
ASCIIHexDecode (Image)</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
JBIG2Decode (Image)</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td colspan = "4">
{{ '**Interactive Features**' | markdownify }}</td></tr>
<tr>
<td>
Actions</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Annotations</td><td>
Yes**</td><td>
Yes**</td><td>
No</td></tr>
<tr>
<td>
Attachments</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Bookmarks</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Form</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Page Navigation</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Zoom</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Navigation Pane</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Selection (Keyboard & Mouse)</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Search</td><td>
Yes</td><td>
Yes</td><td>
No</td></tr>
<tr>
<td>
Document Information</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Conformance</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Encrypted Documents</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Edit</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Touch Support</td><td>
No</td><td>
Yes***</td><td>
No</td></tr>
<tr>
<td colspan = "4">
{{ '**Print**' | markdownify }}</td></tr>
<tr>
<td>
Silent Printing</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td>
Send to Printer</td><td>
Yes</td><td>
Yes</td><td>
Yes</td></tr>
<tr>
<td colspan = "4">
{{ '**Export**' | markdownify }}</td></tr>
<tr>
<td>
Image </td><td>
Yes (raster and vector formats)</td><td>
Yes (raster format only)</td><td>
No</td></tr>
</table>
*Supports only Brushes (text and shapes).

**Supports only URI annotation.

***Supported in 4.0 and higher framework.

## Adding PDF Viewer to an Application

To add a PDF Viewer control to your application:



1. Open your form in the designer. Add the Syncfusion controls to yourVS.NET toolbox if you haven't done so already (the install would have automatically done this unless you selected not to complete toolbox integration during installation).
   
   ![](Getting-Started_images/Getting-Started_img1.png)





2. Drag a PDF Viewer control onto the form.



   Appearance and behavior-related aspects of the PDF Viewer can be controlled by setting the appropriate properties through the properties grid. 

   ![](Getting-Started_images/Getting-Started_img2.png)



3. Add Syncfusion.PdfViewer.Windows namespace.
   
   ~~~ cs
	   using Syncfusion.PdfViewer.Windows;
	   
	   //Initializing the PDF Viewer
	   PdfViewer viewer = new PdfViewer();
	   
	   //Loading the document in the PDF Viewer
	   viewer.Load(@"c:/documents/myPDF.pdf");
   ~~~
   {:.prettyprint}
   
   ~~~ vbnet
   
	   Imports Syncfusion.PdfViewer.Windows
	  
	  'Initializing the Pdf Viewer
	   Dim viewer As PdfViewer = New PdfViewer()
	   
	   'Loading the document in the Pdf Viewer
	   viewer.Load("c:/documents/myPDF.pdf")
   ~~~
   {:.prettyprint}
   
   Refer to [Viewing PDF files](/windowsforms/pdfviewer/working-with-pdf-viewer#viewing-pdf-files) for more information.

## Appearance and Structure of the Control

The following screenshot is a pictorial representation of PDF Viewer. 

![](Getting-Started_images/Getting-Started_img3.png)


### ToolStrip

![](Getting-Started_images/Getting-Started_img4.png)



1. File Open Dialog
2. Show Print Dialog
3. Go to first page
4. Go to previous page
5. Page Indicator
6. Go to next page
7. Go to last page
8. Increase magnification
9. Decrease magnification
10. Preset magnification
11. Fill window
12. Fit page to window
