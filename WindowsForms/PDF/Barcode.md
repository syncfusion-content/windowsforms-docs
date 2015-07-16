---
layout: post
title: Barcode
description: barcode
platform: WindowsForms
control: PDF
documentation: ug
---

# Barcode

## Code39

Code 39 character set includes the digits 0-9, the letters A-Z (upper case only), and the following symbols: space, minus (-), plus (+), period (.), dollar sign ($), slash (/), and percent (%). A special start/stop character is placed at the beginning and end of each barcode. The barcode can be of any length, although more than 25 characters begins to push the bounds. Code 39 is just about the only type of barcode in common use that does not require a checksum.



[C#]

//Creates a new PDF Document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Draws Code39 barcode.

PdfCode39Barcode barcode = new PdfCode39Barcode(); 

//Sets height of the barcode.

barcode.BarHeight = 45; 

barcode.Text = "CODE39$"; 

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the Document

doc.Save("CODE39.pdf");



[VB]

'Creates a new PDF Document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Draws Code39 barcode.

Dim barcode As New PdfCode39Barcode()

'Sets height of the barcode.

barcode.BarHeight = 45

barcode.Text = "CODE39$"

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE39.pdf")   

## Code39Extended

Code 39 Extended is an extended version of Code 39 that supports the ASCII character set. So with Code 39 Extended, you can also code the 26 lower letters (a-z) and the special characters you have on your keyboard. 

The following code example illustrates you on how to draw Code39Extended barcode.



[C#]

//Creates new PDF Document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Draws Code39 Extended barcode.

PdfCode39Barcode barcode = new PdfCode39Barcode(); 

//Sets height of the barcode.

barcode.BarHeight = 45; 

barcode.Text = "CODE39Ext"; 

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODE39Ext.pdf");



[VB]



'Creates new PDF Document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Draws Code39 Extended barcode. 

Dim barcode As New PdfCode39Barcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

barcode.Text = "CODE39Ext"

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE39Ext.pdf")

## Code11

Code 11 is used primarily for labeling telecommunications equipment. The character set includes digits from 0 to 9, a dash (-), and a start or stop code. Each character is encoded with three bars and two spaces. Of these five elements, there can be two wide and three narrow elements, or one wide and four narrow elements. 

The following code example illustrates how to draw Code 11 Barcode.



[C#]

//Creates new PDF document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Draws Code11 barcode. 

PdfCode11Barcode barcode = new PdfCode11Barcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

//Encodes Start Stop symbol.

barcode.EncodeStartStopSymbols = true;

barcode.Text = "012345678"; 

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODE11.pdf");



[VB]

'Creates new PDF document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Draws Code11 barcode. 

Dim barcode As New PdfCode11Barcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

'Encodes Start Stop symbol.

barcode.EncodeStartStopSymbols = True

barcode.Text = "012345678"

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document

doc.Save("CODE11.pdf")

## Codabar

CodaBar is a variable length symbology that performs encoding of the following 20 characters: 

0123456789-$:/. +ABCD. CodaBar uses the characters, A, B, C, and D, only as start and stop characters. Codabar is used in libraries, blood banks, the overnight package delivery industry, and a variety of other information processing applications. The following code example illustrates how to draw Codabar barcode.



[C#]

//Draws Codabar barcode. 

PdfCodabarBarcode barcode = new PdfCodabarBarcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

barcode.Text = "0123";

//Creates new PDF Document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODABAR.pdf");



[VB]



'Draws Codabar barcode. 

Dim barcode As New PdfCodabarBarcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

barcode.Text = "0123"

'Creates new PDF Document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODABAR.pdf")

## Code32

It is mainly used for coding pharmaceuticals, cosmetics, and dietetics. Code 32 is mainly used to encode pharmaceutical products in Italy and has the following structure: 

* 'A' character (ASCII 65) that is not really encoded.
* 8 digits for Pharmacode (It generally begins with “ / “ and prefixed with 0).
* 1 digit for Checksum module 10, which is automatically calculated by Barcode Professional.

The value to be encoded (that is passed to Barcode Professional) must be 8 digits pharmacode (prefixed with '0' if necessary), because the 9th digit (the checksum) is automatically calculated by Barcode Professional products.



[C#]



//Draws Code32 barcode. 

PdfCode32Barcode barcode = new PdfCode32Barcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

//Shows and enables check digit.

barcode.EnableCheckDigit = true;

barcode.ShowCheckDigit = true;

barcode.Text = "01234567";

//Creates new PDF Document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the Document.

doc.Save("CODE32.pdf");



[VB]



'Draws Code32 barcode. 

Dim barcode As New PdfCode32Barcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

'Show and enable check digit.

barcode.EnableCheckDigit = True

barcode.ShowCheckDigit = True

barcode.Text = "01234567"

'Creates new PDF Document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

 barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE32.pdf")     

## Code93

Code 93 was designed to complement and improve Code 39. It can represent the full ASCII character set by using combinations of 2 characters. Code 93 is a continuous, variable-length symbology and produces denser code. 

* The Standard Mode (default implementation) can encode uppercase letters (A through Z), digits (0 through 9), and special characters like the *, -, $, %, (Space), /, and +. 
* The Full ASCII Mode or Extended Version can encode all 128 ASCII characters. 
* The asterisk (*) is not a true encodable character, but is the start and stop 'symbol' for Code 93.



[C#]

//Draws Code93 barcode. 

PdfCode93Barcode barcode = new PdfCode93Barcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

barcode.Text = "ABC 123456789";

//Creates new PDF Document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the Document.

doc.Save("CODE93.pdf");



[VB]



'Draws Code93 barcode. 

Dim barcode As New PdfCode93Barcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

barcode.Text = "ABC 123456789"

'Creates new PDF Document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE93.pdf")        

## Code93Extended

[C#]

//Draws Code93 Extended barcode. 

PdfCode93ExtendedBarcode barcode = new PdfCode93ExtendedBarcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

//Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = true;

barcode.Text = "(abc) 123456789";

//Creates new PDF Document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODE93Ext.pdf");



[VB]



'Draws Code93 Extended barcode. 

Dim barcode As New PdfCode93ExtendedBarcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

'Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = True

barcode.Text = "(abc) 123456789"

'Creates new PDF document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the Document.

doc.Save("CODE93Ext.pdf")

## Code128

Code 128 is a variable length, high density, alphanumeric, linear bar code symbology, capable of encoding the full 128-character ASCII character set and extended character sets. This Symbology includes a checksum digit for verification, and the barcode can also be verified character-by-character for parity of each data byte. 

Code 128 Code Sets 

* Code Set A (or Chars Set A) includes all of the standard upper case U.S. alphanumeric keyboard characters and punctuation characters together with the control characters, (i.e. characters with ASCII values from 0 to 95 inclusive), and seven special characters. 
* Code Set B (or Chars Set B) includes all of the standard upper case alphanumeric keyboard characters and punctuation characters together with the lower case alphabetic characters (i.e. characters with ASCII values from 32 to 127 inclusive), and seven special characters. 
* Code Set C (or Chars Set C) includes the set of 100 digit pairs from 00 to 99 inclusive, as well as three special characters. This allows numeric data to be encoded as two data digits per symbol character, at effectively twice the density of standard data. 

Code 128 Special characters 

The last seven characters of Code Sets A and B (character values 96 - 102) and the last three characters of Code Set C (character values 100 - 102) are special non-data characters with no ASCII character equivalents that have particular significance to the bar code reading device.

## Code128A

Code Set A (or Characters Set A) includes all of the standard upper case U.S. alphanumeric keyboard characters and punctuation characters together with the control characters, (i.e. characters with ASCII values from 0 to 95 inclusive), and seven special characters. 



[C#]



//Draws Code128A barcode. 

PdfCode128ABarcode barcode = new PdfCode128ABarcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

//Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = true;

//Enables Check digit

barcode.EnableCheckDigit = true;

//Shows Check digit.

barcode.ShowCheckDigit = true;

barcode.Text = "ABCD 12345";

//Creates new PDF document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODE128A.pdf");



[VB]

'Draws Code128A barcode. 

Dim barcode As New PdfCode128ABarcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

'Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = True

'Enables Check digit.

barcode.EnableCheckDigit = True

'Shows Check digit.

barcode.ShowCheckDigit = True

barcode.Text = "ABCD 12345"

'Creates new PDF document.

 Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE128A.pdf")

## Code128B

Code Set B (or Characters Set B) includes all of the standard upper case alphanumeric keyboard characters and punctuation characters together with the lower case alphabetic characters (i.e. characters with ASCII values from 32 to 127 inclusive), and seven special characters. 



[C#]



//Draws Code128B barcode. 

PdfCode128BBarcode barcode = new PdfCode128BBarcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

//Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = true;

//Enables Check digit.

barcode.EnableCheckDigit = true;

barcode.Text = "12345 abcd";

//Creates new PDF document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODE128B.pdf");



[VB]

'Draws Code128B barcode. 

Dim barcode As New PdfCode128BBarcode()

'Sets height of the barcode.

barcode.BarHeight = 45

'Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = True

'Enables Check digit.

barcode.EnableCheckDigit = True

barcode.Text = "12345 abcd"

'Creates new PDF document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE128B.pdf")   

## Code128C

Code Set C (or Characters Set C) includes the set of 100 digit pairs from 00 to 99, as well as three special characters. This allows numeric data to be encoded as two data digits per symbol character at effectively twice the density of standard data. 



[C#]

//Draws Code128C barcode. 

PdfCode128CBarcode barcode = new PdfCode128CBarcode(); 

//Sets height of the barcode. 

barcode.BarHeight = 45;

//Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = true;

//Enables Check digit.

barcode.EnableCheckDigit = true;

barcode.Text = "001122334455";

//Creates new PDF document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("CODE128C.pdf");



[VB]



'Draws Code128C barcode. 

Dim barcode As New PdfCode128CBarcode()

'Sets height of the barcode. 

barcode.BarHeight = 45

'Encodes Start Stop Symbol.

barcode.EncodeStartStopSymbols = True

'Enables Check digit

barcode.EnableCheckDigit = True

barcode.Text = "001122334455"

'Creates new PDF document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("CODE128C.pdf")

## Data Matrix

DataMatrix barcode is a two dimensional barcode that consists of a grid of dark and light dots or blocks forming square or rectangular symbol. The data encoded in the barcode can either be number or alphanumeric. The PdfDataMatrixBarcode class available in Syncfusion.Pdf.Barcode namespace sets the suitable encoding type and size for the input data. However, the size, encoding type, and dimension of individual blocks can also be set using these properties.

Use case scenario 

The DataMatrix bar codes are widely used in printed media as labels and letters. It can easily be read by a bar code reader and also by mobile phones. 

_Table_ _29__: Property Table_

<table>
<tr>
<td>
Property </td><td>
Description </td><td>
Data Type </td></tr>
<tr>
<td>
Encoding </td><td>
Gets or sets the encoding type. </td><td>
PdfDataMatrixEncoding </td></tr>
<tr>
<td>
Size </td><td>
Gets or sets the size of the symbol. </td><td>
PdfDataMatrixSize </td></tr>
<tr>
<td>
Text </td><td>
Gets or sets the data. </td><td>
String </td></tr>
<tr>
<td>
XDimension </td><td>
Gets or sets the dimension of the blocks.</td><td>
Float </td></tr>
</table>




[C#]



//Draws Data Matrix barcode.

PdfDataMatrixBarcode barcode = new PdfDataMatrixBarcode("Syncfusion");

//Sets XDimension.

barcode.XDimension = 3;

//Sets Encoding.

barcode.Encoding = PdfDataMatrixEncoding.ASCII;

//Creates new PDF document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70 ));

//Saves the document.

doc.Save("DataMatrix.pdf");



[VB]



'Draws Data Matrix barcode.

Dim barcode As New PdfDataMatrixBarcode("Syncfusion")

'Sets XDimension.

barcode.XDimension = 3

'Sets Encoding.

barcode.Encoding = PdfDataMatrixEncoding.ASCII

'Creates new PDF document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("DataMatrix.pdf")     

## QR Barcode

QR Barcode is a two-dimensional barcode that consists of a grid of dark and light dots or blocks that forms a square. The data encoded in the barcode can be numeric, alphanumeric, or JIS8 characters. The PdfQRBarcode class available in Syncfusion.Pdf.Barcode namespace sets the suitable version, error correction level and size for the input data. However, the version, error correction level and size of individual blocks can also be set using these properties.



[C#]



//Draws QR Barcode.

PdfQRBarcode barcode = new PdfQRBarcode();

//Sets Error Correction Level.

barcode.ErrorCorrectionLevel = PdfErrorCorrectionLevel.High;

//Sets XDimension.

barcode.XDimension = 3;

barcode.Text = "http://www.syncfusion.com";

//Creates new PDF document.

PdfDocument doc = new PdfDocument();

//Adds new page to PDF document.

PdfPage page = doc.Pages.Add();

//Prints barcode on to the PDF. 

barcode.Draw(page, new PointF(25, 70));

//Saves the document.

doc.Save("QRBarcode.pdf");



[VB]



'Draws QR Barcode.

 Dim barcode As New PdfQRBarcode()

'Sets Error Correction Level.

barcode.ErrorCorrectionLevel = PdfErrorCorrectionLevel.High

'Sets XDimension

barcode.XDimension = 3

barcode.Text = "http://www.syncfusion.com"

'Creates new PDF document.

Dim doc As New PdfDocument()

'Adds new page to PDF document.

Dim page As PdfPage = doc.Pages.Add()

'Prints barcode on to the PDF. 

barcode.Draw(page, New PointF(25, 70))

'Saves the document.

doc.Save("QRBarcode.pdf")  



