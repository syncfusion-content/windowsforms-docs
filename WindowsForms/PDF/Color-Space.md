---
layout: post
title: Color-Space
description: color space
platform: WindowsForms
control: PDF
documentation: ug
---

# Color Space

When preparing your document, you may require colors in different color spaces. You can control it in the following two ways.

* Document level and
* Graphics level
## Document Level 


The PdfDocument class has ColorSpace property that is used to choose color spaces for new pages. Color spaces can be classified into three color space families.

Essential PDF now supports the following color spaces in each family.

* Device Color Spaces
* CIE-based Color Spaces
* ICC-based Color Spaces
### Device Color Space


Device color space simply describes the range of colors that a camera can see, a printer can print, or a monitor can display. These color spaces depend upon the device in which it is displayed. In PDF document Device, color spaces are used in following types.

* DeviceGray
* DeviceRGB
* DeviceCMYK

{{ '![C:/Users/ApoorvahR/Desktop/Note.png](Color-Space_images/Color-Space_img1.png)' | markdownify }}
{:.image }
_Note: This property does not convert the entire document into different color spaces. It will also not have any impact on pages that have been created before the property value had changed. It just chooses the color space for pages created after the alteration._

### CIE-based Color Spaces

CIE-based color space in the PDF document is classified as, 

* CalGray
* CalRGB
* Lab

The code sample to draw a rectangle with CalGray brush is illustrated as follows.



[C#]



//Creates a new PDF document.

PdfDocument pdfDocument = new PdfDocument();

//Adds a page to the PDF document

PdfPage pdfPage = pdfDocument.Pages.Add();

//Acquires graphics of the page.

PdfGraphics grapx = pdfPage.Graphics;

//Creates CalGray color space.

PdfCalGrayColorSpace calGrayCS = new PdfCalGrayColorSpace();

//Updates color values.

calGrayCS.Gamma = 0.7;

calGrayCS.WhitePoint = new double[] { 0.2, 1, 0.8 };

PdfCalGrayColor red1 = new PdfCalGrayColor(calGrayCS);

red1.Gray = 0.1;

PdfBrush brush = new PdfSolidBrush(red1);

RectangleF rect = new RectangleF(0, 0, 300, 300);

//Draws using the PdfBrush,

grapx.DrawRectangle(brush, rect);

//Saves the document.

pdfDocument.Save("Output.pdf");

pdfDocument.Close(true);



[VB]



'Creates a new PDF document.

Dim pdfDocument As New PdfDocument()

'Adds a page to the PDF document.

Dim pdfPage As PdfPage = pdfDocument.Pages.Add()

'Acquires graphics of the page.

Dim grapx As PdfGraphics = pdfPage.Graphics

'Creates CalGray color space.

Dim calGrayCS As New PdfCalGrayColorSpace()

'Update color values.

calGrayCS.Gamma = 0.7

calGrayCS.WhitePoint = New Double() {0.2, 1, 0.8}

Dim red1 As New PdfCalGrayColor(calGrayCS)

red1.Gray = 0.1

Dim brush As PdfBrush = New PdfSolidBrush(red1)

Dim rect As New RectangleF(0, 0, 300, 300)

'Draws using the PdfBrush.

grapx.DrawRectangle(brush, rect)

'Saves the document.

pdfDocument.Save("Output.pdf")

pdfDocument.Close(True)



The code sample to draw a rectangle with CalRGB brush is illustrated as follows.



[C#]



//Creates a new PDF document.

PdfDocument pdfDocument = new PdfDocument();

//Adds a page to the PDF document.

PdfPage pdfPage = pdfDocument.Pages.Add();

//Acquiring graphics of the page.

PdfGraphics grapx = pdfPage.Graphics;

PdfCalRGBColorSpace calRgbCS = new PdfCalRGBColorSpace();

//Updates color values.

calRgbCS.Gamma = new double[] { 1.6, 1.1, 2.5 };

calRgbCS.Matrix = new double[] { 1, 0, 0, 0, 1, 0, 0, 0, 1 };

calRgbCS.WhitePoint = new double[] { 0.2, 1, 0.8 };

PdfCalRGBColor green = new PdfCalRGBColor(calRgbCS);

green.Red = 0;

green.Green = 1;

green.Blue = 0;

PdfBrush brush = new PdfSolidBrush(green);

RectangleF rect = new RectangleF(0, 0, 300, 300);

//Draws using the PdfBrush,

grapx.DrawRectangle(brush, rect);

//Saves the document.

pdfDocument.Save("Output.pdf");

pdfDocument.Close(true);



[VB]



'Creates a new PDF document.

Dim pdfDocument As New PdfDocument()

'Adds a page to the PDF document.

Dim pdfPage As PdfPage = pdfDocument.Pages.Add()

'Acquires graphics of the page.

Dim grapx As PdfGraphics = pdfPage.Graphics

Dim calRgbCS As New PdfCalRGBColorSpace()

' Updates color values

calRgbCS.Gamma = New Double() {1.6, 1.1, 2.5}

calRgbCS.Matrix = New Double() {1, 0, 0, 0, 1, 0, _

0, 0, 1}

calRgbCS.WhitePoint = New Double() {0.2, 1, 0.8}

Dim green As New PdfCalRGBColor(calRgbCS)

green.Red = 0

green.Green = 1

green.Blue = 0

Dim brush As PdfBrush = New PdfSolidBrush(green)

Dim rect As New RectangleF(0, 0, 300, 300)

'Draws using the PdfBrush.

grapx.DrawRectangle(brush, rect)

'Saves the document.

pdfDocument.Save("Output.pdf")

pdfDocument.Close(True)



The code sample to draw a rectangle with Lab brush is illustrated as follows.



[C#]



//Creates a new PDF document.

PdfDocument pdfDocument = new PdfDocument();

//Adds a page to the PDF document.

PdfPage pdfPage = pdfDocument.Pages.Add();

//Acquires graphics of the page.

PdfGraphics grapx = pdfPage.Graphics;

//Creates Lab color space   .

PdfLabColorSpace calGrayCS1 = new PdfLabColorSpace();

//Updates color values.

calGrayCS1.Range = new double[] { 0.2, 1, 0.8, 23.5 };

calGrayCS1.WhitePoint = new double[] { 0.2, 1, 0.8 };

PdfLabColor red2 = new PdfLabColor(calGrayCS1);

red2.L = 90;

red2.A = 0.5;

red2.B = 20;

PdfBrush brush = new PdfSolidBrush(red2);

RectangleF rect = new RectangleF(0, 0, 300, 300);

//Draws using the PdfBrush.

grapx.DrawRectangle(brush, rect);

//Saves the document.

pdfDocument.Save("Output.pdf");

pdfDocument.Close(true);



[VB]



'Creates a new PDF document.

Dim pdfDocument As New PdfDocument()

'Adds a page to the PDF document.

Dim pdfPage As PdfPage = pdfDocument.Pages.Add()

'Acquires graphics of the page.

Dim grapx As PdfGraphics = pdfPage.Graphics

'Creates Lab color space. 

Dim calGrayCS1 As New PdfLabColorSpace()

'Updates color values.

calGrayCS1.Range = New Double() {0.2, 1, 0.8, 23.5}

calGrayCS1.WhitePoint = New Double() {0.2, 1, 0.8}

Dim red2 As New PdfLabColor(calGrayCS1)

red2.L = 90

red2.A = 0.5

red2.B = 20

Dim brush As PdfBrush = New PdfSolidBrush(red2)

Dim rect As New RectangleF(0, 0, 300, 300)

'Draws using the PdfBrushs.

grapx.DrawRectangle(brush, rect)

'Saves the document.

pdfDocument.Save("Output.pdf")

pdfDocument.Close(True)

### ICC-based Color Spaces

ICC based color uses ICC color profiles to create color for brush/pen to render shape or text in the PDF document. Three type of ICC based color spaces are:

* Special color spaces
* Indexed
* Seperation

The code sample used to draw a rectangle with Indexed ICC colorspace is illustrated as follows.



[C#]



//Creates a new PDF document.

PdfDocument pdfDocument = new PdfDocument();

//Adds a page to the PDF document.

PdfPage pdfPage = pdfDocument.Pages.Add();

//Acquires graphics of the page.

PdfGraphics grapx = pdfPage.Graphics;

//Creates ICCBased color space.

PdfCalRGBColorSpace calRgbCS = new PdfCalRGBColorSpace();

calRgbCS.Gamma = new double[] { 7.6, 5.1, 8.5 };

calRgbCS.Matrix = new double[] { 1, 0, 0, 0, 1, 0, 0, 0, 1 };

calRgbCS.WhitePoint = new double[] { 0.7, 1, 0.8 };

//Reads the ICC profile.

FileStream fs = new FileStream(@"input.icc", FileMode.Open, FileAccess.Read);

byte[] profileData = new byte[fs.Length];

fs.Read(profileData, 0, profileData.Length);

fs.Close();

//Instantiates ICC color space.

PdfICCColorSpace IccBasedCS = new PdfICCColorSpace();

IccBasedCS.ProfileData = profileData;

IccBasedCS.AlternateColorSpace = calRgbCS;

IccBasedCS.ColorComponents = 3;

IccBasedCS.Range = new double[] { 0.0, 1.0, 0.0, 1.0, 0.0, 1.0 };

PdfICCColor red = new PdfICCColor(IccBasedCS);

red.ColorComponents = new double[] { 1, 0, 1 };

PdfBrush brush = new PdfSolidBrush(red);

RectangleF rect = new RectangleF(0, 0, 300, 300);

//Draws using the PdfBrush.

grapx.DrawRectangle(brush, rect);

//Saves the document.

pdfDocument.Save("Output.pdf");

pdfDocument.Close(true);



[VB]



'Creates a new PDF document.

Dim pdfDocument As New PdfDocument()

'Adds a page to the PDF document.

Dim pdfPage As PdfPage = pdfDocument.Pages.Add()

'Acquires graphics of the page.

Dim grapx As PdfGraphics = pdfPage.Graphics

'Creates ICCBased color space.

Dim calRgbCS As New PdfCalRGBColorSpace()

calRgbCS.Gamma = New Double() {7.6, 5.1, 8.5}

calRgbCS.Matrix = New Double() {1, 0, 0, 0, 1, 0, _

0, 0, 1}

calRgbCS.WhitePoint = New Double() {0.7, 1, 0.8}

'Reads the ICC profile.

Dim fs As New FileStream("input.icc", FileMode.Open, FileAccess.Read)

Dim profileData As Byte() = New Byte(fs.Length - 1) {}

fs.Read(profileData, 0, profileData.Length)

fs.Close()

'Instantiates ICC color space.

Dim IccBasedCS As New PdfICCColorSpace()

IccBasedCS.ProfileData = profileData

IccBasedCS.AlternateColorSpace = calRgbCS

IccBasedCS.ColorComponents = 3

IccBasedCS.Range = New Double() {0.0, 1.0, 0.0, 1.0, 0.0, 1.0}

Dim red As New PdfICCColor(IccBasedCS)

red.ColorComponents = New Double() {1, 0, 1}

Dim brush As PdfBrush = New PdfSolidBrush(red)

Dim rect As New RectangleF(0, 0, 300, 300)

'Draws using the PdfBrush.

grapx.DrawRectangle(brush, rect)

'Saves the document.

pdfDocument.Save("Output.pdf")

pdfDocument.Close(True)


The code sample used for separation color space is illustrated as follows.



[C#]



//Creates a new PDF document.

PdfDocument pdfDocument = new PdfDocument();

//Adds a page to the PDF document.

PdfPage pdfPage = pdfDocument.Pages.Add();

//Acquires graphics of the page.

PdfGraphics grapx = pdfPage.Graphics;

//Creates separation color space.

PdfExponentialInterpolationFunction function = new PdfExponentialInterpolationFunction(true);

float[] numArray = new float[3] { 90f, 0.5f, 20f };

function.C1 = numArray;

PdfLabColorSpace calLabCS = new PdfLabColorSpace();

calLabCS.Range = new double[] { 0.2, 1, 0.8, 23.5 };

calLabCS.WhitePoint = new double[] { 0.2, 1, 0.8 };

//Instantiates separation color space.

PdfSeparationColorSpace colorspace = new PdfSeparationColorSpace();

colorspace.AlternateColorSpaces = calLabCS;

colorspace.TintTransform = function;

colorspace.Colorant = "PANTONE Orange 021 C";

PdfSeparationColor color = new PdfSeparationColor(colorspace);

color.Tint = 0.7;

PdfBrush brush = new PdfSolidBrush(color);

RectangleF rect = new RectangleF(0, 0, 300, 300);

//Draws using the PdfBrush

grapx.DrawRectangle(brush, rect);

//Saves the document.

pdfDocument.Save("Output.pdf");

pdfDocument.Close(true);



[VB]



'Creates a new PDF document.

Dim pdfDocument As New PdfDocument()

'Adds a page to the PDF document.

Dim pdfPage As PdfPage = pdfDocument.Pages.Add()

'Acquires graphics of the page.

Dim grapx As PdfGraphics = pdfPage.Graphics

'Creates separation color space.

Dim [function] As New PdfExponentialInterpolationFunction(True)

Dim numArray As Single() = New Single(2) {90.0F, 0.5F, 20.0F}

 [function].C1 = numArray

Dim calLabCS As New PdfLabColorSpace()

calLabCS.Range = New Double() {0.2, 1, 0.8, 23.5}

calLabCS.WhitePoint = New Double() {0.2, 1, 0.8}

'Instantiates separation color space.

Dim colorspace As New PdfSeparationColorSpace()

colorspace.AlternateColorSpaces = calLabCS

colorspace.TintTransform = [function]

colorspace.Colorant = "PANTONE Orange 021 C"

Dim color As New PdfSeparationColor(colorspace)

color.Tint = 0.7

Dim brush As PdfBrush = New PdfSolidBrush(color)

Dim rect As New RectangleF(0, 0, 300, 300)

'Draw using the PdfBrush.

grapx.DrawRectangle(brush, rect)

'Save the document.

pdfDocument.Save("Output.pdf")

pdfDocument.Close(True)

## Graphics Level

The PdfGraphics class has its own ColorSpace property that chooses the color space for the objects drawn next. This property alternates the document settings and enables to change the color space as many times as you wish. Save and Restore methods saves and restores the color space, along with other graphics state parameters respectively.

The code sample to use colorspace in the graphics level is illustrated as follows.



[C#]



//Creates a new PDF document.

PdfDocument pdfDocument = new PdfDocument();

//Adds a page to the PDF document.

PdfPage pdfPage = pdfDocument.Pages.Add();

//Acquires graphics of the page.

PdfGraphics graphics = pdfPage.Graphics;

PdfPen pen = new PdfPen(Color.Red);

PdfBrush brush = new PdfSolidBrush(Color.Blue);

RectangleF rectangle = new RectangleF(0, 0, 100, 100);

//Defaults color space.

graphics.DrawRectangle(pen, brush, rectangle);

graphics.Save();

//GrayScale color space.

graphics.ColorSpace = PdfColorSpace.GrayScale;

graphics.DrawRectangle(pen, brush, rectangle);

//CMYK color space.

graphics.ColorSpace = PdfColorSpace.CMYK;

graphics.DrawRectangle(pen, brush, rectangle);

graphics.Restore();

//Default color space.

graphics.DrawRectangle(pen, brush, rectangle);             

//Draws using the PdfBrush.

graphics.DrawRectangle(brush, rectangle);

//Saves the document.

pdfDocument.Save("Output.pdf");

pdfDocument.Close(true);



[VB]



'Creates a new PDF document.

Dim pdfDocument As New PdfDocument()

'Adds a page to the PDF document

Dim pdfPage As PdfPage = pdfDocument.Pages.Add()

'Acquires graphics of the page.

Dim graphics As PdfGraphics = pdfPage.Graphics

Dim pen As New PdfPen(Color.Red)

Dim brush As PdfBrush = New PdfSolidBrush(Color.Blue)

Dim rectangle As New RectangleF(0, 0, 100, 100)

'Defaults color space.

graphics.DrawRectangle(pen, brush, rectangle)

graphics.Save()

'GrayScale color space.

graphics.ColorSpace = PdfColorSpace.GrayScale

graphics.DrawRectangle(pen, brush, rectangle)

'CMYK color space.

graphics.ColorSpace = PdfColorSpace.CMYK

graphics.DrawRectangle(pen, brush, rectangle)

graphics.Restore()

'Default color space.

graphics.DrawRectangle(pen, brush, rectangle)

'Draws using the PdfBrush.

graphics.DrawRectangle(brush, rectangle)

'Saves the document.

pdfDocument.Save("Output.pdf")

pdfDocument.Close(True)



{{ '![C:/Users/ApoorvahR/Desktop/Note.png](Color-Space_images/Color-Space_img2.png)' | markdownify }}
{:.image }
_Note: You can change the color space as many times as you wish, however, you cannot alternate the color space for objects that have saved before._

Barcode

Bar codes provide a simple and inexpensive method of encoding text information that can be easily read by any inexpensive electronic reader. A bar code consists of series of parallel, adjacent bars, and spaces. Predefined bar and space patterns or "symbologies" are used to encode small strings of character data into a printed symbol. 

The basic structure of a bar code consists of a leading and trailing quiet zone, a start pattern, one or more data characters, optionally one or two check characters, and a stop pattern. Essential PDF supports 1D / linear barcodes and 2D barcode.

