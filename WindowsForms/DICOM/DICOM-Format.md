---
layout: post
title: DICOM-Format
description: dicom format
platform: WindowsForms
control: DICOM 
documentation: ug
---

# DICOM Format

Essential DICOM is a 100% native .NET library that converts the standard image formats to the DICOM format (.dcm). Essential DICOM is a solution for users who need to convert the ordinary image formats to the DICOM format. It requires a DICOM viewer or an equivalent viewer to view the converted DICOM image. The following are the list of image formats that are supported for conversion.

* JPEG
* BMP
* PNG
* EMF
* TIFF
* GIF

## Properties, Methods, and Events 


The following properties and methods will fall under the DICOMImage class.

### Properties

_Table_ _4_: Properties Table

<table>
<tr>
<td>
Property </td><td>
Description </td><td>
Type </td><td>
Data Type </td></tr>
<tr>
<td>
FileName </td><td>
Gets or sets the input image file location </td><td>
Normal </td><td>
String</td></tr>
<tr>
<td>
InputStream</td><td>
Gets or sets the input image as a Stream.</td><td>
Normal</td><td>
System.IO.Stream</td></tr>
<tr>
<td>
Image</td><td>
Gets or sets the input image</td><td>
Normal</td><td>
System.Drawing</td></tr>
</table>

### Methods

_Table_ _5_: Methods Table

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
Save ()</th><th>
Saves the converted DICOM Image to the specified file or a Stream.</th><th>
Save(String)Save(Stream) </th><th>
Normal </th><th>
void </th></tr>
</table>

## Adding DICOM to an Application 

The following sets of code snippets illustrate the conversion to DICOM Format.

{% highlight c# %}

   //Initailizing the DICOM Image object.

     DICOMImage dcmImage = new DICOMImage((string)this.textBox1.Tag);

   //Saving the DICOM image.

     dcmImage.Save("Sample.dcm");


{% endhighlight %}

{% highlight vbnet %}

   'Initailizing the DICOM Image object.

    Dim dcmImage As New DICOMImage(DirectCast(Me.textBox1.Tag, String))

   'Saving the DICOM image.

   dcmImage.Save("Sample.dcm")

{% endhighlight %}

