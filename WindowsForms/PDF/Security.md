---
layout: post
title: Security
description: security
platform: WindowsForms
control: PDF
documentation: ug
---

# Security

## RC4 Encryption

Essential PDF allows you to encrypt your document in RC4 encryption. 



{%highlight c#%}



//Creates a new PDF document.

PdfDocument document = new PdfDocument();

PdfPage page = document.Pages.Add();

PdfGraphics graphics = page.Graphics;

PdfStandardFont font = new PdfStandardFont(PdfFontFamily.TimesRoman, 20f, PdfFontStyle.Bold);

PdfBrush brush = PdfBrushes.Black;

//Document security.

PdfSecurity security = document.Security;

//Specifies key size and encryption algorithm using 40 bit key in RC4 mode.

security.KeySize = PdfEncryptionKeySize.Key40Bit;

security.Algorithm = PdfEncryptionAlgorithm.RC4;

security.OwnerPassword = "syncfusion";

security.Permissions = PdfPermissionsFlags.Print | PdfPermissionsFlags.AccessibilityCopyContent;

security.UserPassword = "password";

string text = "Security options:\n\n" + String.Format("KeySize: {0}\n\nEncryption Algorithm: {4}\n\nOwner Password: {1}\n\nPermissions: {2}\n\n" +

 "UserPassword: {3}", security.KeySize, security.OwnerPassword, security.Permissions, security.UserPassword, security.Algorithm);

graphics.DrawString("Document is Encrypted with following settings", font, brush, PointF.Empty);

font = new PdfStandardFont(PdfFontFamily.TimesRoman, 16f, PdfFontStyle.Bold);

graphics.DrawString(text, font, brush, new PointF(0, 40));

//Saves and closes the document.

document.Save("Output.pdf");

document.Close();



{%endhighlight%}

{%highlight vbnet%}

'Creates a new PDF document.

Dim document As New PdfDocument()

Dim page As PdfPage = document.Pages.Add()

Dim graphics As PdfGraphics = page.Graphics

Dim font As New PdfStandardFont(PdfFontFamily.TimesRoman, 20.0F, PdfFontStyle.Bold)

Dim brush As PdfBrush = PdfBrushes.Black

'Document security.

Dim security As PdfSecurity = document.Security

'Specifies key size and encryption algorithm, using 40 bits key in RC4 mode.

security.KeySize = PdfEncryptionKeySize.Key40Bit

security.Algorithm = PdfEncryptionAlgorithm.RC4

security.OwnerPassword = "syncfusion"

security.Permissions = PdfPermissionsFlags.Print Or PdfPermissionsFlags.AccessibilityCopyContent

security.UserPassword = "password"

Dim text As String = "Security options:" & vbLf & vbLf + [String].Format("KeySize: {0}" & vbLf & vbLf & "Encryption Algorithm: {4}" & vbLf & vbLf & "Owner Password: {1}" & vbLf & vbLf & "Permissions: {2}" & vbLf & vbLf + "UserPassword: {3}", security.KeySize, security.OwnerPassword, security.Permissions, security.UserPassword, security.Algorithm)

graphics.DrawString("Document is Encrypted with following settings", font, brush, PointF.Empty)

font = New PdfStandardFont(PdfFontFamily.TimesRoman, 16.0F, PdfFontStyle.Bold)

graphics.DrawString(text, font, brush, New PointF(0, 40))

'Saves and closes the document.

document.Save("Output.pdf")

document.Close()

{%endhighlight%}

## AES Encryption

Essential PDF allows you to create an AES encrypted PDF document.



{%highlight c#%}



//Creates a new PDF document.

PdfDocument document = new PdfDocument();

PdfPage page = document.Pages.Add();

PdfGraphics graphics = page.Graphics;

PdfStandardFont font = new PdfStandardFont(PdfFontFamily.TimesRoman, 20f, PdfFontStyle.Bold);

PdfBrush brush = PdfBrushes.Black;

//Document security.

PdfSecurity security = document.Security;

//Specifies key size and encryption algorithm, using 256 bits key in AES mode.

security.KeySize = PdfEncryptionKeySize.Key256Bit;

security.Algorithm = PdfEncryptionAlgorithm.AES;

security.OwnerPassword = "syncfusion";

security.Permissions = PdfPermissionsFlags.Print | PdfPermissionsFlags.FullQualityPrint;

security.UserPassword = "password";

string text = "Security options:\n\n" + String.Format("KeySize: {0}\n\nEncryption Algorithm: {4}\n\nOwner Password: {1}\n\nPermissions: {2}\n\n" +

"UserPassword: {3}", security.KeySize, security.OwnerPassword, security.Permissions, security.UserPassword, security.Algorithm);

graphics.DrawString("Document is Encrypted with following settings", font, brush, PointF.Empty);

font = new PdfStandardFont(PdfFontFamily.TimesRoman, 16f, PdfFontStyle.Bold);

graphics.DrawString(text, font, brush, new PointF(0, 40));

//Saves and closes the document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}

'Creates a new PDF document.

Dim document As New PdfDocument()

Dim page As PdfPage = document.Pages.Add()

Dim graphics As PdfGraphics = page.Graphics

Dim font As New PdfStandardFont(PdfFontFamily.TimesRoman, 20.0F, PdfFontStyle.Bold)

Dim brush As PdfBrush = PdfBrushes.Black

'Document security.

Dim security As PdfSecurity = document.Security

'Specifies key size and encryption algorithm, using 256 bits key in AES mode.

security.KeySize = PdfEncryptionKeySize.Key256Bit

security.Algorithm = PdfEncryptionAlgorithm.AES

security.OwnerPassword = "syncfusion"

security.Permissions = PdfPermissionsFlags.Print Or PdfPermissionsFlags.FullQualityPrint

security.UserPassword = "password"

Dim text As String = "Security options:" & vbLf & vbLf + [String].Format("KeySize: {0}" & vbLf & vbLf & "Encryption Algorithm: {4}" & vbLf & vbLf & "Owner Password: {1}" & vbLf & vbLf & "Permissions: {2}" & vbLf & vbLf + "UserPassword: {3}", security.KeySize, security.OwnerPassword, security.Permissions, security.UserPassword, security.Algorithm)

graphics.DrawString("Document is Encrypted with following settings", font, brush, PointF.Empty)

font = New PdfStandardFont(PdfFontFamily.TimesRoman, 16.0F, PdfFontStyle.Bold)

graphics.DrawString(text, font, brush, New PointF(0, 40))

'Saves and closes the document.

document.Save("Output.pdf")

document.Close()

{%endhighlight%}

### Digitally Sign the new PDF document

A digital signature is an electronic signature that is used to authenticate the identity of the sender of a message or the signer of a document, and to ensure that the original content of the message or document is unchanged. It stores information about the signee and the state of the document at the moment of signing.

Digital signatures are easily transportable, cannot be imitated by someone else, and can be automatically time-stamped. It has the ability to ensure that once the original signed message is received, the sender cannot easily repudiate it later.

_Table_ _28__: List of Elements in Digital Signature_

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
Appearance</td><td>
Gets the signature appearance. PdfAppearance allows you to draw and create custom appearance on the PdfSignature field.</td></tr>
<tr>
<td>
Bounds</td><td>
Gets or sets bounds of signature.</td></tr>
<tr>
<td>
Certificate</td><td>
Gets signing certificate.</td></tr>
<tr>
<td>
Certificated</td><td>
Gets or sets a value indicating certificate document or not. Allows document recipients to know if changes have been made contrary to the author's intent. Note: Works only with Adobe Reader 7.0.8 or higher.</td></tr>
<tr>
<td>
ContactInfo</td><td>
Gets or sets information provided by the signee to enable a recipient to contact the signer to verify signature; for example, a phone number.</td></tr>
<tr>
<td>
DocumentPermissions</td><td>
Gets or sets the permission for certificated document. Allows you to set permissions on certificated document with the help of PdfCertificationFlags.</td></tr>
<tr>
<td>
Field</td><td>
Gets PDF signature field.</td></tr>
<tr>
<td>
Location</td><td>
Gets or sets signature location on the page.</td></tr>
<tr>
<td>
LocationInfo</td><td>
Gets or sets the physical location of the signing.</td></tr>
<tr>
<td>
Reason</td><td>
Gets or sets the reason for signing.</td></tr>
<tr>
<td>
Visible</td><td>
Gets a value indicating whether the signature is visible or not. Allows you to create visible or invisible signatures by enabling the Visible property.</td></tr>
<tr>
<td>
TimeStampServer</td><td>
Sets the timestamp for the signature. Allows you to include timestamp for the digital signature.</td></tr>
</table>
Standard Signature

PdfCertificate class is used to get the certificates from disk or another device such as PFX file. The PFX file type is an encrypted security file that stores secure certificates that are used to authenticate a PDF document. One needs a password to access these files. The PFX files are supported with private keys.

PdfSignature class has methods and properties that allow setting the signature information such as reason, location information, bounds where the signature has to be placed, and contact information.



{%highlight c#%}



//Creates a new PDF document.

PdfDocument document = new PdfDocument();

//Adds a new page.

PdfPage page = document.Pages.Add();

PdfGraphics graphics = page.Graphics;

//Creates a certificate instance from PFX file with private key.

PdfCertificate pdfCert = new PdfCertificate(@"PDF.pfx", "syncfusion");

//Creates a digital signature.

PdfSignature signature = new PdfSignature(page, pdfCert, "Signature");

//Sets an image for signature field.

PdfBitmap bmp = new PdfBitmap(@"syncfusion_logo.gif");

//Sets signature info.

signature.Bounds = new RectangleF(new PointF(0, 0), bmp.PhysicalDimension);

signature.ContactInfo = "johndoe@owned.us";

signature.LocationInfo = "Honolulu, Hawaii";

signature.Reason = "I am author of this document.";

//Draws the signature image.

graphics.DrawImage(bmp, 0, 0);

//Saves and closes the document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}

'Creates a new PDF document.

Dim document As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = document.Pages.Add()

Dim graphics As PdfGraphics = page.Graphics

'Creates a certificate instance from PFX file with private key.

Dim pdfCert As New PdfCertificate("PDF.pfx", "syncfusion")

'Creates a digital signature.

Dim signature As New PdfSignature(page, pdfCert, "Signature")

'Sets an image for signature field.

Dim bmp As New PdfBitmap("syncfusion_logo.gif")

'Sets signature info.

signature.Bounds = New RectangleF(New PointF(0, 0),                 bmp.PhysicalDimension)

signature.ContactInfo = "johndoe@owned.us"

signature.LocationInfo = "Honolulu, Hawaii"

signature.Reason = "I am author of this document."

'Draws the signature image.

graphics.DrawImage(bmp, 0, 0)

'Saves and closes the document.

document.Save("Output.pdf")

document.Close()

{%endhighlight%}

### Author Signature

By default, documents are signed with standard signature types. Certificated property of PdfSignature is used to create author’s signature. When signed with this type of signature, any modification after signing is detected, and hence do not support added multiple signatures.





_Note: This implementation of certification will only work with Acrobat 7 and higher versions._



{%highlight c#%}



//Creates a new PDF document.

PdfDocument document = new PdfDocument();

//Adds a new page.

PdfPage page = document.Pages.Add();

PdfGraphics graphics = page.Graphics;

//Creates a certificate instance from PFX file with private key.

PdfCertificate pdfCert = new PdfCertificate(@"PDF.pfx", "syncfusion");

//Creates a digital signature.

PdfSignature signature = new PdfSignature(page, pdfCert, "Signature");

//Sets author’s signature.

signature.Certificated = true;

//Sets an image for signature field.

PdfBitmap bmp = new PdfBitmap(@"syncfusion_logo.gif");

//Sets signature info.

signature.Bounds = new RectangleF(new PointF(0, 0), bmp.PhysicalDimension);

signature.ContactInfo = "johndoe@owned.us";

signature.LocationInfo = "Honolulu, Hawaii";

signature.Reason = "I am author of this document.";

//Draws the signature image.

graphics.DrawImage(bmp, 0, 0);

//Saves and closes the document.

document.Save("Output.pdf");

document.Close();



{%endhighlight%}

{%highlight vbnet%}

'Creates a new PDF document.

Dim document As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = document.Pages.Add()

Dim graphics As PdfGraphics = page.Graphics

'Creates a certificate instance from PFX file with private key.

Dim pdfCert As New PdfCertificate("PDF.pfx", "syncfusion")

'Creates a digital signature.

Dim signature As New PdfSignature(page, pdfCert, "Signature")

'Sets author’s signature.

signature.Certificated = True

'Sets an image for signature field.

Dim bmp As New PdfBitmap("syncfusion_logo.gif")

'Sets signature info.

signature.Bounds = New RectangleF(New PointF(0, 0), bmp.PhysicalDimension)

signature.ContactInfo = "johndoe@owned.us"

signature.LocationInfo = "Honolulu, Hawaii"

signature.Reason = "I am author of this document."

'Draws the signature image.

graphics.DrawImage(bmp, 0, 0)

'Saves and closes the document.

document.Save("Output.pdf")

document.Close()

{%endhighlight%}

## Digitally Sign the existing PDF document

Essential PDF allows you to put signature in an existing PDF document as in a newly created PDF.



{%highlight c#%}



//Creates a new PDF document.

PdfLoadedDocument document = new PdfLoadedDocument("Input.pdf");

//Adds a new page.

PdfPageBase page = document.Pages[0];

PdfGraphics graphics = page.Graphics;

//Creates a certificate instance from PFX file with private key.

PdfCertificate pdfCert = new PdfCertificate(@"PDF.pfx", "syncfusion");

//Creates a digital signature.

PdfSignature signature = new PdfSignature(document, page, pdfCert, "Signature");

//Sets an image for signature field.

PdfBitmap bmp = new PdfBitmap(@"syncfusion_logo.gif");

//Sets signature info.

signature.Bounds = new RectangleF(new PointF(0, 0), bmp.PhysicalDimension);

signature.ContactInfo = "johndoe@owned.us";

signature.LocationInfo = "Honolulu, Hawaii";

signature.Reason = "I am author of this document.";

//Draws the signature image.

graphics.DrawImage(bmp, 0, 0);

//Saves and closes the document.

document.Save("Output.pdf");

document.Close();



{%endhighlight%}

{%highlight vbnet%}

'Creates a new PDF document.

Dim document As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = document.Pages.Add()

Dim graphics As PdfGraphics = page.Graphics

'Creates a certificate instance from PFX file with private key.

Dim pdfCert As New PdfCertificate("PDF.pfx", "syncfusion")

'Creates a digital signature.

Dim signature As New PdfSign.ature(page, pdfCert, "Signature")

'Sets author’s signature.

signature.Certificated = True

'Sets an image for signature field.

Dim bmp As New PdfBitmap("syncfusion_logo.gif")

'Sets signature info.

signature.Bounds = New RectangleF(New PointF(0, 0), bmp.PhysicalDimension)

signature.ContactInfo = "johndoe@owned.us"

signature.LocationInfo = "Honolulu, Hawaii"

signature.Reason = "I am author of this document."

'Draws the signature image.

graphics.DrawImage(bmp, 0, 0)

'Saves and closes the document.

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

## Timestamp in Digital signature

Essential PDF supports addition of timestamp in digital signatures. The date and time on which the document is signed can be added as part of the signature. Timestamps are easier to verify when they are associated with timestamp authority’s trusted certificate.  It also helps establish exactly when the document was signed and reduces the chances of an invalid signature. The timestamp can be obtained from a third-party timestamp authority or from the certificate authority that issued the digital ID.

Timestamps appear in the signature field and in the Signature Properties dialog box. When the timestamp is included, the certificate appears in the Date or Time tab of the Signature Properties dialog box. When no timestamp is added, then the signature field displays the local time of the computer at the moment of signing.

To apply timestamp using Essential PDF, the TimeStampServer property of the PdfSignature class has to be used. The parameters for the TimeStampMethod are the URI of digital server, username, and password.

The following code illustrates the method for adding timestamp in the digital signature.




{%highlight c#%}



//Creates a new PDF document.

PdfDocument document = new PdfDocument();

//Adds a new page.

PdfPage page = document.Pages.Add();

PdfGraphics graphics = page.Graphics;

//Creates a certificate instance from PFX file with private key.

PdfCertificate pdfCert = new PdfCertificate(@"PDF.pfx", "syncfusion");

//Creates a digital signature.

PdfSignature signature = new PdfSignature(page, pdfCert, "Signature");

//Sets an image for signature field

PdfBitmap bmp = new PdfBitmap(@"syncfusion_logo.gif");

//Adds time stamp using the server URI and credentials.

signature.TimeStampServer = new TimeStampServer(new Uri("http://digistamp.syncfusion.com"), "user", "123456");

//Sets signature info.

signature.Bounds = new RectangleF(new PointF(0, 0), bmp.PhysicalDimension);

signature.ContactInfo = "johndoe@owned.us";

signature.LocationInfo = "Honolulu, Hawaii";

signature.Reason = "I am author of this document.";

//Draws the signature image.

graphics.DrawImage(bmp, 0, 0);

//Saves and closes the document.

document.Save("Output.pdf");

document.Close();

{%endhighlight%}


{%highlight vbnet%}

'Creates a new PDF document.

Dim document As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = document.Pages.Add()

Dim graphics As PdfGraphics = page.Graphics

'Creates a certificate instance from PFX file with private key.

Dim pdfCert As New PdfCertificate("PDF.pfx", "syncfusion")

'Creates a digital signature.

Dim signature As New PdfSignature(page, pdfCert, "Signature")

'Adds time stamp using the server URI and credentials.

signature.TimeStampServer = New TimeStampServer(New Uri("http://digistamp.syncfusion.com"), "user", "123456")

'Sets an image for signature field.

Dim bmp As New PdfBitmap("syncfusion_logo.gif")

'Sets signature info.

signature.Bounds = New RectangleF(New PointF(0, 0), bmp.PhysicalDimension)

signature.ContactInfo = "johndoe@owned.us"

signature.LocationInfo = "Honolulu, Hawaii"

signature.Reason = "I am author of this document."

'Draws the signature image.

graphics.DrawImage(bmp, 0, 0)

'Saves and closes the document.

document.Save("Output.pdf")

document.Close()

{%endhighlight%}



