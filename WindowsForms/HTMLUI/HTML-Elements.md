---
layout: post
title: HTML-Elements
description: html elements
platform: WindowsForms
control: HTML UI
documentation: ug
---

# HTML Elements

HTMLUI supports various elements in an HTML document for rendering and presenting them to the user and also allows the user to dynamically access the elements to produce rich, customized user interfaces. Each HTML element defines properties and methods which can be used for customization.  

The property SupportedEvents and the method MergeSupportedEvents are common to most HTML elements.



SupportedEvents

This property returns an array of events supporting the element.



[C#]



// SupportedEvents property returns an array of events supporting the element. 

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

BRElementImpl br = htmlelements["br"] as BRElementImpl;

this.label1.Text = this.br.SupportedEvents.Length.ToString(); 



[VB.NET]



‘SupportedEvents property returns an array of events supporting the element. 

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private tr As BRElementImpl = CType(IIf(TypeOf htmlelements("br") Is BRElementImpl, htmlelements("br"), Nothing), BRElementImpl)

Private Me.label1.Text = Me.br.SupportedEvents.Length.ToString()



MergeSupportedEvents 

The MergeSupportedEvents method is used to merge the standard and special events.



[C#]



// MergeSupportedEvents method is to merge the standard and special events.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

INPUTElementImpl txt = htmlelements["txt"] as INPUTElementImpl;

string[] specialEvents = new string[2];

specialEvents[0] = "Yes";

specialEvents[1] = "No";

MessageBox.Show("Before Merging:" + this.txt.SupportedEvents.Length.ToString());

this.txt.MergeSupportedEvents(specialEvents);

MessageBox.Show("After Merging:" + this.txt.SupportedEvents.Length.ToString());



[VB.NET]



‘MergeSupportedEvents method is to merge the standard and special events.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private txt As INPUTElementImpl = CType(IIf(TypeOf htmlelements("txt") Is INPUTElementImpl, htmlelements("txt"), Nothing), INPUTElementImpl)

Private specialEvents As String() = New String(1) {}

Private specialEvents(0) = "Yes"

Private specialEvents(1) = "No"

MessageBox.Show("Before Merging:" + Me.txt.SupportedEvents.Length.ToString())

Me.txt.MergeSupportedEvents(specialEvents)

MessageBox.Show("After Merging:" + Me.txt.SupportedEvents.Length.ToString())

## Element Types

The following are the various HTML elements supported by Essential HTMLUI.



<table>
<tr>
<td>
Anchor Element</td><td>
Body Element</td><td>
Bold Element</td><td>
BR Element</td><td>
Code Element</td><td>
Custom Element</td><td>
Div Element</td></tr>
<tr>
<td>
EM Element</td><td>
Font Element</td><td>
Form Element</td><td>
H1 - H6 Element</td><td>
Head Element</td><td>
HR Element</td><td>
HTML Element</td></tr>
<tr>
<td>
I Element</td><td>
IMG Element</td><td>
Input Element</td><td>
LI Element</td><td>
Link Element</td><td>
OL Element</td><td>
P Element</td></tr>
<tr>
<td>
PRE Element</td><td>
Script Element</td><td>
Select Element</td><td>
Span Element</td><td>
Strong Element</td><td>
Style Element</td><td>
Table Element</td></tr>
<tr>
<td>
TD Element</td><td>
TextArea Element</td><td>
TH Element</td><td>
TR Element</td><td>
U Element</td><td>
UL Element</td><td>
</td></tr>
</table>


## A - Anchor Element

The A element is used in creating links to another document or in creating bookmarks within the same document. This element is defined by the &lt;a&gt; tag in the HTML code. The AElementImpl class contains the properties and methods related to this element. Some of the important properties and methods are listed below:



Properties

* IsVisited:Gets a bool value (either true / false) indicating whether the link is visited or not. This may be used in changing the color of the links visited.
* HoverFormat:Gets the format of the A element when the user hovers the mouse pointer over the link.
* VisitedFormat: Gets the format of the A element visited recently.



[C#]



// IsVisited property gets the Boolean value indicating whether the link is visited or not 

// VisitedFormat property get the format of the A element visited recently. 

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

AElementImpl a = htmlelements["a"] as AElementImpl;

this.label1.Text = "\nA(IsVisited and VisitedFormat):" + this.a.IsVisited.ToString() + "," + this.a.VisitedFormat.BackgroundColor.Name.ToString(); 



[VB.NET]



' IsVisited property gets the Boolean value indicating whether the link is visited or not 

‘VisitedFormat property get the format of the A element visited recently. 

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()



Private a As AElementImpl = CType(IIf(TypeOf htmlelements("a") Is AElementImpl, htmlelements("a"), Nothing), AElementImpl)



Private Me.label1.Text=Constants.vbLf & "A(IsVisited and VisitedFormat):" & Me.a.IsVisited.ToString()+","+Me.a.VisitedFormat.BackgroundColor.Name.ToString()



Methods

* ResetVisited: Excludes the element from the list containing the visited links.



## B - Bold Element

The B element is responsible for formatting the specified text in bold style. The BElementImpl class contains the properties and methods of this element. The SUBElementImpl and SUPElementImpl classes are also responsible for bolding elements. They also contain the properties and methods for the element's behavior.

## BODY Element

The BODY element forms the main section in the HTMLUI because this element contains all the other elements and details regarding their position and properties. The BODYElementImpl class contains the properties and methods for this element.

## BR - Break Element

The BR element is used for inserting a line break after a particular line. This is implemented using the &lt;br&gt; tag in the HTML document. The BRElementImpl class contains the properties and methods for this element's behavior. 



Properties

* IsVisible: Gets / sets a Boolean value to indicate whether the control is shown / hidden.



[C#]



// Get the Boolean value to indicate whether the control is visible or not.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

BRElementImpl br = htmlelements["br"] as BRElementImpl;

this.label1.Text = "\nBR(IsVisible):" + this.br.IsVisible.ToString(); 



[VB.NET]



' Get the Boolean value to indicate whether the control is visible or not.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private br As BRElementImpl = CType(IIf(TypeOf htmlelements("br") Is BRElementImpl, htmlelements("br"), Nothing), BRElementImpl)

Me.label1.Text = Constants.vbLf & "BR(IsVisible):" & Me.br.IsVisible.ToString()

## CODE Element

The CODE element is used in marking the specified text as a computer code, formatted using monospaced font. It uses the CODElementImpl class which contains the properties and methods determining the element's behavior.

## CUSTOM Element

The CUSTOM element is used in creating the custom tags as determined by the user. The CUSTOMElementImpl class is responsible for the custom controls declared by the &lt;custom&gt; tag in the HTML document and contains the element's properties and methods.

## DIV - Division Element

The DIV element divides the given page into logical sections. The DIVElementImpl class contains the properties and methods that describe the behavior of the DIV element.

## EM - Emphasize element

The EM element is responsible for emphasizing a specific text, usually in italics. The HTML code uses the &lt;em&gt; tag to specify this element. The EMElementImpl class specifies the properties and methods to be used while coding this element.



## FONT Element

The FONT element is used for changing the font face, size and color of the specified text. The &lt;font&gt; tag is used to specify the FONT element in the HTML code. The FONTElementImpl class determines the properties and methods used by this element.

## FORM Element

The FORM element creates a form for user input. A form can contain text fields, check boxes, radio buttons and other form fields. The FORMElementImpl class is used to determine the properties and methods of this element.

## H1 - H6 Header Elements

* The H1 element is used to define a header. The H1 element produces the largest header. The H1ElementImpl class is used in determining the properties and methods of the H1 element.



* The H2 element is used to define a header. The H2ElementImpl class is used in determining the properties and methods of the H2 element.



* The H3 element is used to define a header. The H3ElementImpl class is used in determining the properties and methods of the H3 element.



* The H4 element is used to define a header. The H4ElementImpl class is used in determining the properties and methods of the H4 element.



* The H5 element is used to define a header. The H5ElementImpl class is used in determining the properties and methods of the H5 element.



* The H6 element is used to define a header. The H6 element produces the smallest header. The H6ElementImpl class is used in determining the properties and methods of the H6 element.



## HEAD Element

The HEAD element contains information regarding the document like the title of the document, links to the style sheets, and so on. The HEADElementImpl class is used to specify the properties and methods of the head element.

## HTML Element

The HTML element is used to specify that the document is an HTML document. It is mentioned by the &lt;html&gt; tag in the HTML document. The properties and methods of this element are defined in the HTMLElementImpl class.

## HR - Horizontal Rule Element

The HR element is used in creating horizontal rules. The HRElementImpl class contains the methods and properties for this element.

## I - Italics Element

The I element is used in formatting the specified text in italics. The IElementImpl class is used in determining the properties and methods for the I element.

## IMG - Image Element

The IMG element is used in defining and applying an image in the document wherever needed. The &lt;img&gt; tag is used for this. The properties and methods of this element is defined in the IMGElementImpl class.



Properties

* Image: Gets the bitmap of the image that represents this element



[C#]



// Gets the bitmap of the image that represents IMG element.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

IMGElementImpl img = htmlelements["img"] as IMGElementImpl;



// Gets the width and height of the image.

this.label1.Text ="\nIMG(Image)" + this.img.Image.PhysicalDimension.ToString();



[VB.NET]



‘Gets the bitmap of the image  that represents IMG element.

Private htmlelements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private img As IMGElementImpl = CType(IIf(TypeOf htmlelements("img") Is  IMGElementImpl, htmlelements("img"), Nothing), IMGElementImpl)

Me.label1.Text =Constants.vbLf & "IMG(Image)" & Me.img.Image.PhysicalDimension.ToString()



## INPUT Element

The INPUT element is used for getting input from the user. It can be a text box, a button element or a check box which is determined by the type attribute of the &lt;input&gt; tag in the HTML document. The INPUTElementImpl class is used in determining the methods and properties for this element.



Properties

* UserControl: Gets / sets the user control instance for the particular input element declared by the user



[C#]



// Sets the user control instance for the particular input element declared by the user.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

INPUTElementImpl txt = htmlelements["txt"] as INPUTElementImpl;

this.txt.UserControl.CustomControl.Text = "This is a textBox";



[VB.NET]



'  User control property sets the user control instance for the particular input element declared by the user.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private txt As INPUTElementImpl = CType(IIf(TypeOf htmlelements("txt") Is INPUTElementImpl, htmlelements("txt"), Nothing), INPUTElementImpl)

Me.txt.UserControl.CustomControl.Text = "This is a textBox"



Methods

* InfillFromXMLElement: Detects the type of control from the type attribute and creates that control



## LI - List Element

The LIST element is used to define a list item. The LIElementImpl class is used to determine the properties and methods for this element. There are two types of lists that are supported by HTMLUI.



* OL Element: Ordered List Element
* UL Element: Unordered List Element



## LINK Element

The LINK element is used to define links to other documents, style sheets, and so on. The LinkElementImpl is used to determine the methods and properties for the link element. 



Properties



* IsVisible: Gets / sets a value indicating whether the link is shown / hidden



[C#]



// Get the value indicating whether the link is visible or not.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

LinkElementImpl link = htmlelements["link"] as LinkElementImpl;

this.label1.Text = "\nLink(IsVisible):" + this.link.IsVisible.ToString();



[VB.NET]



‘Get the value indicating whether the link is visible or not.

Private As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private link As LinkElementImpl = CType(IIf(TypeOf HtmlElement("link") Is LinkElementImpl, htmlelements("link"), Nothing), LinkElementImpl)

Me.label1.Text = Constants.vbLf & "Link(IsVisible):" & Me.link.IsVisible.ToString()



Methods



* GetCssStream:Returns a stream CSS data of the link element



## OL - Ordered List Element

The OL element is used in generating an ordered list as specified by the user. The properties and methods of this element are defined in the OLElementImpl class.

## P - Paragraph Element

The P element is used to define a paragraph in the document. The user can determine the properties and methods for the P element by invoking the PElementImpl class.

## PRE - Preformatted Element

The PRE element defines preformatted text. The text enclosed in the pre element usually preserves the spaces and line breaks. The enclosed text appears exactly as in the HTML document. The properties and methods for this element can be determined from the PREElementImpl class.



## SCRIPT Element

The SCRIPT element is used to define scripts to the HTML document. This makes the document self-contained. It does not require any other external ways to define the operation of the document's elements. The SCRIPTElementImpl class is used to determine the properties and methods for this element.



Properties



* IsVisible: Gets / sets a value indicating whether the script is shown / hidden



[C#]



// Gets or sets a value indicating whether the script is visible or not.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

this.script = htmlelements["script"] as SCRIPTElementImpl;

this.label1.Text = "\nScript(IsVisible):" + this.script.IsVisible.ToString();



[VB.NET]



‘Gets or sets a value indicating whether the script is visible or not.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private Me.script = Ctype(IIf(TypeOf htmlelements("script") Is SCRIPTElementImpl, htmlelements("script"), Nothing), SCRIPTElementImpl)

Private Me.label1.Text = Constants.vbLf & "Script(IsVisible):" & Me.script.IsVisible.ToString()  



Methods



* GetScriptCode: Gets the string format of the script code



[C#]



MessageBox.Show("ScriptCode:\n" + this.script.GetScriptCode().ToString());



[VB.NET]



MessageBox.Show("ScriptCode:" & Constants.vbLf+Me.script.GetScriptCode().ToString())   



## SELECT Element

The SELECT element is used to define a drop-down list. The user can specify the number of items to include in the drop-down list. The SELECTElementImpl class defines the properties and methods for this element.



Properties



* UserControl: Gets / sets the user control instance to the particular element



[C#]



// UserControl property gets or sets the user control instance to the particular element.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

this.select = htmlelements["select"] as SELECTElementImpl;

this.label1.Text = "\nSelect(UserControl):" + this.UserControl.DefaultSize.ToString();                      



[VB.NET]



‘UserControl property gets or sets the user control instance to the particular element.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Me.Select = CType(IIf(TypeOf htmlelements("select") Is SELECTElementImpl, htmlelements("select"), Nothing), SELECTElementImpl)

Me.label1.Text = Constants.vbLf & "Select(UserControl):" & Me.Select.UserControl.DefaultSize.ToString()



Methods

* InfillFromXMLElement: Detects the type of control and creates the particular control



## SPAN Element

The SPAN element is used to group inline elements in the document and create custom character styles. The SPANElementImpl class is used to determine the properties and methods for the span element.

## STRONG Element

The STRONG element is used to emphasize the specified text, usually in bold. The STRONGElementImpl class is used to define the properties and methods for the strong element.

## STYLE Element

The STYLE element is used to implement custom style in a document. It occurs inside the head section. An external style sheet is linked by using the &lt;link&gt; tag in a HTML document. The StyleElementImpl class is invoked for defining the properties and methods of the style element.



Properties



* IsVisible: Gets / sets a value indicating whether the link is shown / hidden



[C#]



// Gets a value indicating whether the link is visible or not.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

StyleElementImpl link = htmlelements["style"] as StyleElementImpl;

this.label1.Text = "\nLink(IsVisible):" + link.IsVisible.ToString();



[VB.NET]



‘Gets a value indicating whether the link is visible or not.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private link As StyleElementImpl = CType(IIf(TypeOf htmlelements("style") Is StyleElementImpl, htmlelements("style"), Nothing), StyleElementImpl)

Private Me.label1.Text = Constants.vbLf & "Link(IsVisible):" &  link.IsVisible.ToString()



Methods



* GetCssStream: Returns a stream of inner CSS data of the style element



## TABLE Element

The TABLE element is used to create tables in a document. The table element contains the TR, TD elements within it. The TABLEElementImpl class is used to determine the properties and methods for the table element.



Properties

* ColsCount: Gets / sets the number of columns present in the table
* RowsCount: Gets / sets the number of rows present in the table



[C#]



// Gets the number of columns and rows present in the table.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

TABLEElementImpl table = htmlelements["table"] as TABLEElementImpl;

this.label1.Text = "\nTable(ColsCount and RowsCount):" + table.ColsCount.ToString() + "," + table.RowsCount.ToString();





[VB.NET]



‘Gets the number of columns and rows present in the table.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private table As TABLEElementImpl = CType(IIf(TypeOf htmlelements("table") Is TABLEElementImpl, htmlelements("table"), Nothing), TABLEElementImpl)

Private Me.label1.Text = Constants.vbLf & "Table(ColsCount and RowsCount):" & table.ColsCount.ToString()+","+table.RowsCount.ToString()



## TD - Table cell Element

The TD element is used to create regular cells inside a table. The TDElementImpl class contains the properties and methods for the table element.

## TEXTAREA Element

The TEXTAREA element is used to define a multiline textbox, allowing the user to enter unlimited characters. The TEXTAREAElementImpl class is invoked to define the properties and methods of the element.



Properties



* UserControl: Gets / sets the user control instance for the particular input element declared by the user



[C#]



// UserControl property gets the user control instance for the particular input element declared by the // user.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

TEXTAREAElementImpl txt = htmlelements["txt"] as TEXTAREAElementImpl;

this.txt.UserControl.CustomControl.Text = "This is a multiline textBox";





[VB.NET]



‘UserControl property gets the user control instance for the particular input element declared by the      '  user.

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private txt As TEXTAREAElementImpl = CType(IIf(TypeOf htmlelements("txt") Is TEXTAREAElementImpl, htmlelements("txt"), Nothing), TEXTAREAElementImpl)

Private Me.txt.UserControl.CustomControl.Text= "This is a multiline textBox"



## TH - Table Head Element

The TH element is used to create header cells inside a table. The THElementImpl class contains the properties and methods for the table header element. The text inside this element is formatted in bold, by default.

## TR - Table Row Element

The TR element is used to create rows inside a table. The TRElementImpl class contains the properties and methods for the table cell coding. 



Properties



* CellsCount: Gets the number of cells present in the row
* VirtualCellsCount: Gets the total number of cells including the Colspan



[C#]



// Gets the number of cells present in the row and gets total number of cells including the colspan.

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

TRElementImpl tr = htmlelements["tr"] as TRElementImpl;

this.label1.Text = "TR(CellsCount and VirtualCellsCount):"+ tr.CellsCount.ToString()+","+ tr.VirtualCellsCount.ToString();



[VB.NET]



‘Gets the  number of cells present in the row and gets total number of cells including the colspan.

Private htmlelements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private tr As TRElementImpl = Ctype(IIf(TypeOf htmlelements("tr") Is TRElementImpl, htmlelements("tr"), Nothing), TRElementImpl)

Private Me.label1.Text = "TR(CellsCount and VirtualCellsCount):"+ tr.CellsCount.ToString()+","+ tr.VirtualCellsCount.ToString()

## UL - Unordered List Element

The UL element is used in generating an unordered list. The properties and methods of this element are defined in the ULElementImpl class.



## U - Underline Element

The U element is used to underline the specified text. The UElementImpl class contains the properties and methods for the underline element.

