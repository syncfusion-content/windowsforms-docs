---
layout: post
title: Metadata-XMP
description: metadata (xmp)
platform: WindowsForms
control: PDF
documentation: ug
---

# Metadata (XMP)

Metadata__is a data that describes the characteristics or properties of a document. It can be distinguished from the main contents__of a document. Metadata includes document information properties such as author, modification date, and copyright status.

In order to work multiple applications effectively with metadata, there must be a common standard that they understand. XMP-the Extensible Metadata Platform is designed to provide such a standard.

XMP standardizes the definition, creation, and processing of metadata.

XMP is provided with the following schemas:

* Basic Schema 
* Dublin Core Schema 
* Rights Management Schema 
* Basic Job Ticket Schema 
* Paged-Text Schema 
* PDF Schema 
## Basic Schema


Basic Schema contains properties that provide basic descriptive information such as, 

* Base URL
* Creation date
* Creator tool
* Label
* Modified date.
* Meta data date
* Nickname
* Rating

BasicSchema class is used to create the basic schema properties.

Refer the following code sample to create XMP basic schema.



[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

//XMP Basic Schema.

BasicSchema basic = xmp.BasicSchema;

//Sets the basic details of the document.

basic.Advisory.Add("advisory");

basic.BaseURL = new Uri("http://google.com");

basic.CreateDate = DateTime.Now;

basic.CreatorTool = "creator tool";

basic.Identifier.Add("identifier");

basic.Label = "label";

basic.MetadataDate = DateTime.Now;

basic.ModifyDate = DateTime.Now;

basic.Nickname = "nickname";

basic.Rating.Add(-25);

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");



[VB]



Dim pdfDoc As PdfDocument = New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Gets XMP object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'XMP Basic Schema.

Dim basic As BasicSchema = xmp.BasicSchema

'set the basic details of the document

basic.Advisory.Add("advisory")

basic.BaseURL = New Uri("http://google.com")

basic.CreateDate = DateTime.Now

basic.CreatorTool = "creator tool"

basic.Identifier.Add("identifier")

basic.Label = "label"

basic.MetadataDate = DateTime.Now

basic.ModifyDate = DateTime.Now

basic.Nickname = "nickname"

basic.Rating.Add(-25)

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

## Dublin Core Schema

The Dublin Core schema provides a set of commonly used properties such as,

* Contributor
* Coverage
* Creator
* Date
* Description
* Format
* Language
* Publisher
* Title

DublinCoreSchema class is used to create the Dublincore schema properties.



[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

//XMP Dublincore Schema.

DublinCoreSchema dublin = xmp.DublinCoreSchema;

//Sets the Dublin Core Schema details of the document.

dublin.Creator.Add("Syncfusion");

dublin.Description.Add("Title", "Essential PDF creator");

dublin.Title.Add("Resource name", "Documentation");

dublin.Type.Add("PDF");

dublin.Publisher.Add("Essential PDF");

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");



[VB]



Dim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Gets XMP object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'XMP Dublincore Schema.

Dim dublin As DublinCoreSchema = xmp.DublinCoreSchema

'Sets the Dublin Core Schema details of the document.

dublin.Creator.Add("Syncfusion")

dublin.Description.Add("Title", "Essential PDF creator")

dublin.Title.Add("Resource name", "Documentation")

dublin.Type.Add("PDF")

dublin.Publisher.Add("Essential PDF")

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

## Rights Management Schema

This schema includes properties related to rights management. These properties provide information regarding the legal restrictions associated with a resource.

* Certificate
* Marked
* Owner
* UsageTerm
* WebStatement



[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

//XMP Rights Management Schema.

RightsManagementSchema rights = xmp.RightsManagementSchema;

//Sets the Dublin rights Schema details of the document.

rights.Certificate=new Uri("http://syncfusion.com");

rights.Owner.Add("Syncfusion");

rights.Marked = true;

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");

pdfDoc.Close();



[VB]



Dim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Gets xmp object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'XMP Rights Management Schema.

Dim rights As RightsManagementSchema = xmp.RightsManagementSchema

'Sets the Dublin rights Schema details of the document.

rights.Certificate = New Uri("http://syncfusion.com")

rights.Owner.Add("Syncfusion")

rights.Marked = True

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

pdfDoc.Close()

## Basic Job Ticket Schema

This schema describes very simple workflow or job information.

* JobRef

[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

// Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

// XMP Rights Management Schema.

BasicJobTicketSchema basicJob = xmp.BasicJobTicketSchema;

//SetS the Dublin rights Schema details of the document.

basicJob.JobRef.Add("PDF document creation");

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");

pdfDoc.Close();



[VB]



Dim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Get XMP object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'XMP Rights Management Schema.

Dim basicJob As BasicJobTicketSchema = xmp.BasicJobTicketSchema

'Sets the Dublin rights Schema details of the document.

basicJob.JobRef.Add("PDF document creation")

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

pdfDoc.Close()

## Paged-Text Schema

The Paged-Text schema is used for text appearence on page in a document.

* MaxPageSize
* NPages
* Colorants
* PlateNames



[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

//XMP Page text Schema.

PagedTextSchema pagedText = xmp.PagedTextSchema;

//Sets the Page text Schema details of the document.

pagedText.MaxPageSize.Width = 500;

pagedText.MaxPageSize.Height = 750;

pagedText.NPages = 1;

pagedText.PlateNames.Add("Sample page");

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");

pdfDoc.Close();



[VB]



Dim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Gets XMP object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'XMP Page text Schema.

Dim pagedText As PagedTextSchema = xmp.PagedTextSchema

'Sets the Page text Schema details of the document.

pagedText.MaxPageSize.Width = 500

pagedText.MaxPageSize.Height = 750

pagedText.NPages = 1

pagedText.PlateNames.Add("Sample page")

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

pdfDoc.Close()

## PDF Schema

This schema specifies properties used with Adobe PDF documents.

PDFSchema class is used to create the PDF Schema. It has the following set of properties.



[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

//XMP PDF Schema.

PDFSchema pdfSchema = xmp.PDFSchema;

//Sets the PDF Schema details of the document.

pdfSchema.Producer = "Syncfusion";

pdfSchema.PDFVersion = "1.5";

pdfSchema.Keywords = "Essential PDF";

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");

pdfDoc.Close();



[VB]



Dim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Gets XMP object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'XMP PDF Schema.

Dim pdfSchema As PDFSchema = xmp.PDFSchema

'Sets the PDF Schema details of the document.

pdfSchema.Producer = "Syncfusion"

pdfSchema.PDFVersion = "1.5"

pdfSchema.Keywords = "Essential PDF"

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

pdfDoc.Close()

## Custom Schema

A custom schema defines the structure of the customized information records. You can use the CustomSchema class to: 

* Define custom metadata files and, 
* Add them to the PDF document 

Add the following code to define a custom schema. 



[C#]



//Creates PDF document.

PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Gets XMP object.

XmpMetadata xmp = pdfDoc.DocumentInformation.XmpMetadata;

//Creates custom schema field.

CustomSchema cs = new CustomSchema(xmp, "custom", "http://www.syncfusion.com");

cs["Author"] = "Syncfusion";

cs["creationDate"] = DateTime.Now.ToString();

cs["DOCID"] = "SYNCSAM001";

cs["Encryption"] = "Standard";

cs["Project"] = "Data processing";

//Saves the document.

pdfDoc.Save("DocumentInformation.pdf");



[VB]



'Creates PDF document.

Dim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Gets XMP object.

Dim xmp As XmpMetadata = pdfDoc.DocumentInformation.XmpMetadata

'Creates custom schema field.

Dim cs As New CustomSchema(xmp, "custom", "http://www.syncfusion.com")

cs("Author") = "Syncfusion"

cs("creationDate") = DateTime.Now.ToString()

cs("DOCID") = "SYNCSAM001"

cs("Encryption") = "Standard"

cs("Project") = "Data processing"

'Saves the document.

pdfDoc.Save("DocumentInformation.pdf")

## Adding Custom Metadata

Essential PDF allows you to add required metadata (custom metadata) to a PDF document. Custom metadata can be an information about the document that cannot fit in the predefined metadata fields. For example, when a metadata field “Link” is available, you can only provide a link there. But, Essential PDF allows you to add additional information like Author, date of creation, etc. about the link. This feature allows you to add as many new metadata fields as you want. You cannot add metadata fields under the predefined metadata fields.

### How to add a custom Metadata Field

To add a custom metadata field, 

* Create an XML document container 
* Create a custom schema 
### Create an XML Document container


The custom metadata to be created has to be stored and linked to the PDF document in use. Here XML document is used as a container to save the custom metadata fields for the PDF document. 

You can add the following code to create an XML document to store custom metadata fields. 



[C#]



XmpMetadata xmp = new XmpMetadata(pdfDoc.DocumentInformation.XmpMetadata.XmlData); 



[VB]



Dim xmp As New XmpMetadata(pdfDoc.DocumentInformation.XmpMetadata.XmlData)



The following table provides more information on the code.

_Table_ _27__: Property Table_

<table>
<tr>
<td>
Property</td><td>
Type</td><td>
Value it accepts</td></tr>
<tr>
<td>
XmlData</td><td>
XmlElement</td><td>
XmlElement</td></tr>
</table>
### Create custom schema

Custom schema defines the structure of the customized information records. 

You can use the CustomSchema class to: 

* Define custom metadata files
* Add them to the PDF document 



[C#]



//Creates custom schema.

CustomSchema cs = new CustomSchema(xmp, "custom", "http://www.syncfusion.com");

cs["Author"] = "Syncfusion";

cs["creationDate"] = DateTime.Now.ToString();

cs["DOCID"] = "SYNCSAM001";



[VB]



'Creates custom schema.

Dim cs As New CustomSchema(Xmp, "custom", "http://www.syncfusion.com")

cs("Author") = "Syncfusion"

cs("creationDate") = DateTime.Now.ToString()

cs("DOCID") = "SYNCSAM001"



The above code sample illustrates creation of custom schema or first-level metadata field [www.syncfusion.com](http://www.syncfusion.com), which is a link. The second-level metadata fields under the link are Author, creation date, and DocID.

### Full code

Full code is used to create a custom meatadata field as illustrated in the following code.


[C#]



PdfDocument pdfDoc = new PdfDocument();

PdfPage page = pdfDoc.Pages.Add();

//Creates XML Document container.

XmpMetadata xmp = new XmpMetadata(pdfDoc.DocumentInformation.XmpMetadata.XmlData);

//Creates custom schema.

CustomSchema cs = new CustomSchema(xmp, "custom", "http://www.syncfusion.com");

cs["Author"] = "Syncfusion";

cs["creationDate"] = DateTime.Now.ToString();

cs["DOCID"] = "SYNCSAM001";

//Saves the document.

pdfDoc.Save("CustomMetaField.pdf");

pdfDoc.Close();



[VB]



'Loads the PDF document.

Dim doDim pdfDoc As New PdfDocument()

Dim page As PdfPage = pdfDoc.Pages.Add()

'Creates XML Document container.

Dim xmp As New XmpMetadata(pdfDoc.DocumentInformation.XmpMetadata.XmlData)

'Creates custom schema.

Dim cs As New CustomSchema(xmp, "custom", "http://www.syncfusion.com")

cs("Author") = "Syncfusion"

cs("creationDate") = DateTime.Now.ToString()

cs("DOCID") = "SYNCSAM001"

'Saves the document.

pdfDoc.Save("CustomMetaField.pdf")

pdfDoc.Close()

Security

Essential PDF allows you to create a secure PDF document with support for user password and owner password, document encryption and access right of the document.

The document can be encrypted with 40, 128 and 256 bit key to protect its contents from unauthorized access.

The document can be protected using 2 passwords; a user password and an owner password.

User Password

The user password allows you to view the document and the access to document is restricted based on the access rights that have been set.

Owner Password

The owner password allows you to get full control over the PDF document. When both passwords are identical, you are considered to log in as owner.

Allow Print 

If this flag is not set, then you are not allowed to print the document. If this property is true, then you are allowed to print the document, depending on the value of FullQualityPrint flag and encryption key size. If encryption key size is 40 bit, then FullQualityPrint flag property is ignored. If encryption key size is 128 bit and if FullQualityPrint flag is set, then the document is printed at full quality, otherwise printing of the document is limited to a low-level representation of the document, of degraded quality. This degraded quality printing is viewer implementation dependent.

Full Quality Print 

This property has effect only when AllowPrint flag is set and encryption key size is 128 bit.

EditAnnotations

If this flag is set, it allows you to add or modify text annotations and fill in interactive forms fields.

Fill Fields

This flag is effective only when using 128 bit encryption. If this flag is set, it allows you to fill in existing interactive form fields.

Copy Content 

When document is encrypted using 128 bit and if this flag is set, it allows you to copy or otherwise extract text and graphics from the document by operations other than those controlled by AccessibilityCopyContent flag. When using a 40 bit encryption, this flag controls extraction of text and graphics to provide accessibility to disabled users and for other purposes. 

Accessibility Copy Content 

This property is effective only while using 128 bit encryption and flag set. It allows you to copy or otherwise extract text and graphics from the document to provide accessibility to disabled users and for other purposes.

