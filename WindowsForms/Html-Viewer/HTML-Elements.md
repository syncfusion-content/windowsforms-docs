---
layout: post
title: HTML Elements in Windows Forms Html Viewer control | Syncfusion®
description: Learn about HTML Elements support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# HTML Elements in Windows Forms Html Viewer (HTMLUI)

HTMLUI supports various elements in an HTML document for rendering and presenting them to the user and also allows the user to dynamically access the elements to produce rich, customized user interfaces. Each HTML element defines properties and methods which can be used for customization.

The property [SupportedEvents](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.AElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_AElementImpl_SupportedEvents) and the method [MergeSupportedEvents](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.INPUTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_INPUTElementImpl_MergeSupportedEvents_System_String___) are common to most HTML elements.



## SupportedEvents

This property returns an array of events supporting the element.

{% tabs %}

{% highlight C# %}



// SupportedEvents property returns an array of events supporting the element. 

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

BRElementImpl br = tab["br"] as BRElementImpl;

this.label1.Text = this.br.SupportedEvents.Length.ToString(); 

{% endhighlight %}

{% highlight VB %}



‘SupportedEvents property returns an array of events supporting the element. 

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private tr As BRElementImpl = CType(IIf(TypeOf tab("br") Is BRElementImpl, tab("br"), Nothing), BRElementImpl)

Private Me.label1.Text = Me.br.SupportedEvents.Length.ToString()



MergeSupportedEvents 

The MergeSupportedEvents method is used to merge the standard and special events.

{% endhighlight %}

{% endtabs %}

{% tabs %}

{% highlight C# %}



// MergeSupportedEvents method is to merge the standard and special events.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

INPUTElementImpl txt = tab["txt"] as INPUTElementImpl;

string[] specialEvents = new string[2];

specialEvents[0] = "Yes";

specialEvents[1] = "No";

MessageBox.Show("Before Merging:" + this.txt.SupportedEvents.Length.ToString());

this.txt.MergeSupportedEvents(specialEvents);

MessageBox.Show("After Merging:" + this.txt.SupportedEvents.Length.ToString());

{% endhighlight %}

{% highlight VB %}



‘MergeSupportedEvents method is to merge the standard and special events.

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private txt As INPUTElementImpl = CType(IIf(TypeOf tab("txt") Is INPUTElementImpl, tab("txt"), Nothing), INPUTElementImpl)

Private specialEvents As String() = New String(1) {}

Private specialEvents(0) = "Yes"

Private specialEvents(1) = "No"

MessageBox.Show("Before Merging:" + Me.txt.SupportedEvents.Length.ToString())

Me.txt.MergeSupportedEvents(specialEvents)

MessageBox.Show("After Merging:" + Me.txt.SupportedEvents.Length.ToString())

{% endhighlight %}

{% endtabs %}

## Element types

The following are the various HTML elements supported by Essential<sup>®</sup> HTMLUI.



<table>
<tr>
<td>
{{'[Anchor Element](#a---anchor-element)'| markdownify}}</td><td>
{{'[Body Element](#body-element)'| markdownify}}</td><td>
{{'[Bold Element](#b---bold-element)'| markdownify}}</td><td>
{{'[BR Element](#br---break-element)'| markdownify}}</td><td>
{{'[Code Element](#code-element)'| markdownify}}</td><td>
{{'[Custom Element](#custom-element)'| markdownify}}</td><td>
{{'[Div Element](#div---division-element)'| markdownify}}</td></tr>
<tr>
<td>
{{'[EM Element](#em---emphasize-element)'| markdownify}}</td><td>
{{'[Font Element](#font-element)'| markdownify}}</td><td>
{{'[Form Element](#form-element)'| markdownify}}</td><td>
{{'[H1 - H6 Element](#h1---h6-header-elements)'| markdownify}}</td><td>
{{'[Head Element](#head-element)'| markdownify}}</td><td>
{{'[HR Element](#hr---horizontal-rule-element)'| markdownify}}</td><td>
{{'[HTML Element](#html-element)'| markdownify}}</td></tr>
<tr>
<td>
{{'[I Element](#i---italics-element)'| markdownify}}</td><td>
{{'[IMG Element](#img---image-element)'| markdownify}}</td><td>
{{'[Input Element](#input-element)'| markdownify}}</td><td>
{{'[LI Element](#li---list-element)'| markdownify}}</td><td>
{{'[Link Element](#link-element)'| markdownify}}</td><td>
{{'[OL Element](#ol---ordered-list-element)'| markdownify}}</td><td>
{{'[P Element](#p---paragraph-element)'| markdownify}}</td></tr>
<tr>
<td>
{{'[PRE Element](#pre---preformatted-element)'| markdownify}}</td><td>
{{'[Script Element](#script-element)'| markdownify}}</td><td>
{{'[Select Element](#select-element)'| markdownify}}</td><td>
{{'[Span Element](#span-element)'| markdownify}}</td><td>
{{'[Strong Element](#strong-element)'| markdownify}}</td><td>
{{'[Style Element](#style-element)'| markdownify}}</td><td>
{{'[Table Element](#table-element)'| markdownify}}</td></tr>
<tr>
<td>
{{'[TD Element](#td---table-cell-element)'| markdownify}}</td><td>
{{'[TextArea Element](#textarea-element)'| markdownify}}</td><td>
{{'[TH Element](#th---table-head-element)'| markdownify}}</td><td>
{{'[TR Element](#tr---table-row-element)'| markdownify}}</td><td>
{{'[U Element](#u---underline-element)'| markdownify}}</td><td>
{{'[UL Element](#ul---unordered-list-element)'| markdownify}}</td><td>
</td></tr>
</table>


## A - Anchor element

The A element is used in creating links to another document or in creating bookmarks within the same document. This element is defined by the &lt;a&gt; tag in the HTML code. The [AElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.AElementImpl.html) class contains the properties and methods related to this element. Some of the important properties and methods are listed below:



### Properties

* [IsVisited](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.AElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_AElementImpl_IsVisited):Gets a bool value (either `true`/`false`) indicating whether the link is visited or not. This may be used in changing the color of the links visited.
* [HoverFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.AElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_AElementImpl_HoverFormat):Gets the format of the A element when the user hovers the mouse pointer over the link.
* [VisitedFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.AElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_AElementImpl_VisitedFormat): Gets the format of the A element visited recently.

{% tabs %}

{% highlight C# %}



// IsVisited property gets the Boolean value indicating whether the link is visited or not 

// VisitedFormat property get the format of the A element visited recently. 

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

AElementImpl a = tab["a"] as AElementImpl;

this.label1.Text = "\nA(IsVisited and VisitedFormat):" + this.a.IsVisited.ToString() + "," + this.a.VisitedFormat.BackgroundColor.Name.ToString(); 

{% endhighlight %}

{% highlight VB %}



' IsVisited property gets the Boolean value indicating whether the link is visited or not 

‘VisitedFormat property get the format of the A element visited recently. 

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()



Private a As AElementImpl = CType(IIf(TypeOf tab("a") Is AElementImpl, tab("a"), Nothing), AElementImpl)



Private Me.label1.Text=Constants.vbLf & "A(IsVisited and VisitedFormat):" & Me.a.IsVisited.ToString()+","+Me.a.VisitedFormat.BackgroundColor.Name.ToString()

{% endhighlight %}

{% endtabs %}

### Methods

* [ResetVisited](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.AElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_AElementImpl_ResetVisited): Excludes the element from the list containing the visited links.



## B - Bold element

The B element is responsible for formatting the specified text in bold style. The [BElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.BElementImpl.html) class contains the properties and methods of this element. The SUBElementImpl and SUPElementImpl classes are also responsible to bold elements. They also contain the properties and methods for the element's behavior.

## BODY element

The BODY element forms the main section in the HTMLUI because this element contains all the other elements and details regarding their position and properties. The [BODYElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.BODYElementImpl.html) class contains the properties and methods for this element.

## BR - Break element

The BR element is used for inserting a line break after a particular line. This is implemented using the <br> tag in the HTML document. The [BRElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.BRElementImpl.html) class contains the properties and methods for this element's behavior.



### Properties

* [IsVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.BRElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_BRElementImpl_IsVisible): Gets/sets a Boolean value to indicate whether the control is shown/hidden.

{% tabs %}

{% highlight C# %}



// Get the Boolean value to indicate whether the control is visible or not.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

BRElementImpl br = tab["br"] as BRElementImpl;

this.label1.Text = "\nBR(IsVisible):" + this.br.IsVisible.ToString(); 

{% endhighlight %}

{% highlight VB %}



' Get the Boolean value to indicate whether the control is visible or not.

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private br As BRElementImpl = CType(IIf(TypeOf tab("br") Is BRElementImpl, tab("br"), Nothing), BRElementImpl)

Me.label1.Text = Constants.vbLf & "BR(IsVisible):" & Me.br.IsVisible.ToString()

{% endhighlight %}

{% endtabs %}

## CODE element

The CODE element is used in marking the specified text as a computer code, formatted using mono spaced font. It uses the [CODElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.CODElementImpl.html) class which contains the properties and methods determining the element's behavior.

## CUSTOM element

The CUSTOM element is used in creating the custom tags as determined by the user. The [CUSTOMElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.CUSTOMElementImpl.html) class is responsible for the custom controls declared by the <custom> tag in the HTML document and contains the element's properties and methods.

## DIV - Division element

The DIV element divides the given page into logical sections. The [DIVElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.DIVElementImpl.html) class contains the properties and methods that describe the behavior of the DIV element.

## EM - Emphasize element

The EM element is responsible for emphasizing a specific text, usually in italics. The HTML code uses the <em> tag to specify this element. The [EMElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.EMElementImpl.html) class specifies the properties and methods to be used while coding this element.



## FONT element

The FONT element is used for changing the font face, size and color of the specified text. The <font> tag is used to specify the FONT element in the HTML code. The [FONTElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.FONTElementImpl.html) class determines the properties and methods used by this element.

## FORM element

The FORM element creates a form for user input. A form can contain text fields, check boxes, radio buttons and other form fields. The [FORMElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.FORMElementImpl.html) class is used to determine the properties and methods of this element.

## H1 - H6 Header elements

* The H1 element is used to define a header. The H1 element produces the largest header. The [H1ElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.H1ElementImpl.html) class is used in determining the properties and methods of the H1 element.



* The H2 element is used to define a header. The [H2ElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.H2ElementImpl.html) class is used in determining the properties and methods of the H2 element.



* The H3 element is used to define a header. The [H3ElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.H3ElementImpl.html) class is used in determining the properties and methods of the H3 element.



* The H4 element is used to define a header. The [H4ElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.H4ElementImpl.html) class is used in determining the properties and methods of the H4 element.



* The H5 element is used to define a header. The [H5ElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.H5ElementImpl.html) class is used in determining the properties and methods of the H5 element.



* The H6 element is used to define a header. The H6 element produces the smallest header. The [H6ElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.H6ElementImpl.html) class is used in determining the properties and methods of the H6 element.



## HEAD element

The HEAD element contains information regarding the document like the title of the document, links to the style sheets, and so on. The [HEADElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HEADElementImpl.html) class is used to specify the properties and methods of the head element.

## HTML element

The HTML element is used to specify that the document is an HTML document. It is mentioned by the <html> tag in the HTML document. The properties and methods of this element are defined in the [HTMLElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLElementImpl.html) class.

## HR - Horizontal rule element

The HR element is used in creating horizontal rules. The [HRElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HRElementImpl.html) class contains the methods and properties for this element.

## I - Italics element

The I element is used in formatting the specified text in italics. The [IElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.IElementImpl.html) class is used in determining the properties and methods for the I element.

## IMG - Image element

The IMG element is used in defining and applying an image in the document wherever needed. The <img> tag is used for this. The properties and methods of this element is defined in the [IMGElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.IMGElementImpl.html) class.



### Properties

* [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.IMGElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_IMGElementImpl_Image): Gets the bitmap of the image that represents this element.

{% tabs %}

{% highlight C# %}



// Gets the bitmap of the image that represents IMG element.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

IMGElementImpl img = tab["img"] as IMGElementImpl;



// Gets the width and height of the image.

this.label1.Text ="\nIMG(Image)" + this.img.Image.PhysicalDimension.ToString();

{% endhighlight %}

{% highlight VB %}



‘Gets the bitmap of the image  that represents IMG element.

Private tab As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private img As IMGElementImpl = CType(IIf(TypeOf tab("img") Is  IMGElementImpl, tab("img"), Nothing), IMGElementImpl)

Me.label1.Text =Constants.vbLf & "IMG(Image)" & Me.img.Image.PhysicalDimension.ToString()

{% endhighlight %}

{% endtabs %}

## INPUT element

The INPUT element is used for getting input from the user. It can be a text box, a button element or a check box which is determined by the type attribute of the <input> tag in the HTML document. The [INPUTElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.INPUTElementImpl.html) class is used in determining the methods and properties for this element.



### Properties

* [UserControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.INPUTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_INPUTElementImpl_UserControl): Gets/sets the user control instance for the particular input element declared by the user.

{% tabs %}

{% highlight C# %}



// Sets the user control instance for the particular input element declared by the user.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

INPUTElementImpl txt = tab["txt"] as INPUTElementImpl;

this.txt.UserControl.CustomControl.Text = "This is a textBox";

{% endhighlight %}

{% highlight VB %}



'  User control property sets the user control instance for the particular input element declared by the user.

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private txt As INPUTElementImpl = CType(IIf(TypeOf tab("txt") Is INPUTElementImpl, tab("txt"), Nothing), INPUTElementImpl)

Me.txt.UserControl.CustomControl.Text = "This is a textBox"

{% endhighlight %}

{% endtabs %}

#### Methods

* [InfillFromXMLElement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.INPUTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_INPUTElementImpl_InfillFromXMLElement_Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_System_Xml_XmlElement_): Detects the type of control from the type attribute and creates that control.



## LI - List element

The LIST element is used to define a list item. The [LIElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.LIElementImpl.html) class is used to determine the properties and methods for this element. There are two types of lists that are supported by HTMLUI.



* [OL Element](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.OLElementImpl.html): Ordered List Element.
* [UL Element](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.ULElementImpl.html): Unordered List Element.



## LINK element

The LINK element is used to define links to other documents, style sheets, and so on. The [LinkElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.LinkElementImpl.html) is used to determine the methods and properties for the link element.



### Properties



* [IsVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.LinkElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_LinkElementImpl_IsVisible): Gets/sets a value indicating whether the link is shown/hidden.

{% tabs %}

{% highlight C# %}



// Get the value indicating whether the link is visible or not.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

LinkElementImpl link = tab["link"] as LinkElementImpl;

this.label1.Text = "\nLink(IsVisible):" + this.link.IsVisible.ToString();

{% endhighlight %}

{% highlight VB %}

‘Get the value indicating whether the link is visible or not.

Private As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private link As LinkElementImpl = CType(IIf(TypeOf tab("link") Is LinkElementImpl, tab("link"), Nothing), LinkElementImpl)

Me.label1.Text = Constants.vbLf & "Link(IsVisible):" & Me.link.IsVisible.ToString()

{% endhighlight %}

{% endtabs %}

### Methods



* [GetCssStream](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.LinkElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_LinkElementImpl_GetCssStream):Returns a stream CSS data of the link element.



## OL - Ordered list element

The OL element is used in generating an ordered list as specified by the user. The properties and methods of this element are defined in the [OLElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.OLElementImpl.html) class.

## P - Paragraph element

The P element is used to define a paragraph in the document. The user can determine the properties and methods for the P element by invoking the [PElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.PElementImpl.html) class.

## PRE - Pre formatted element

The PRE element defines pre formatted text. The text enclosed in the pre element usually preserves the spaces and line breaks. The enclosed text appears exactly as in the HTML document. The properties and methods for this element can be determined from the [PREElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.PREElementImpl.html) class.



## SCRIPT element

The SCRIPT element is used to define scripts to the HTML document. This makes the document self-contained. It does not require any other external ways to define the operation of the document's elements. The [SCRIPTElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SCRIPTElementImpl.html) class is used to determine the properties and methods for this element.



### Properties



* [IsVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SCRIPTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_SCRIPTElementImpl_IsVisible): Gets/sets a value indicating whether the script is shown/hidden.

{% tabs %}

{% highlight C# %}



// Gets or sets a value indicating whether the script is visible or not.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

this.script = tab["script"] as SCRIPTElementImpl;

this.label1.Text = "\nScript(IsVisible):" + this.script.IsVisible.ToString();

{% endhighlight %}

{% highlight VB %}



‘Gets or sets a value indicating whether the script is visible or not.

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private Me.script = Ctype(IIf(TypeOf tab("script") Is SCRIPTElementImpl, tab("script"), Nothing), SCRIPTElementImpl)

Private Me.label1.Text = Constants.vbLf & "Script(IsVisible):" & Me.script.IsVisible.ToString()  

{% endhighlight %}

{% endtabs %}

### Methods



* [GetScriptCode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SCRIPTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_SCRIPTElementImpl_GetScriptCode): Gets the string format of the script code.

{% tabs %}

{% highlight C# %}



MessageBox.Show("ScriptCode:\n" + this.script.GetScriptCode().ToString());

{% endhighlight %}

{% highlight VB %}



MessageBox.Show("ScriptCode:" & Constants.vbLf+Me.script.GetScriptCode().ToString())   

{% endhighlight %}

{% endtabs %}

## SELECT element

The SELECT element is used to define a drop-down list. The user can specify the number of items to include in the drop-down list. The [SELECTElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SELECTElementImpl.html) class defines the properties and methods for this element.



### Properties



* [UserControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SELECTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_SELECTElementImpl_UserControl): Gets/sets the user control instance to the particular element.

{% tabs %}

{% highlight C# %}



// UserControl property gets or sets the user control instance to the particular element.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

this.select = tab["select"] as SELECTElementImpl;

this.label1.Text = "\nSelect(UserControl):" + this.UserControl.DefaultSize.ToString();                      

{% endhighlight %}

{% highlight VB %}



‘UserControl property gets or sets the user control instance to the particular element.

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Me.Select = CType(IIf(TypeOf tab("select") Is SELECTElementImpl, tab("select"), Nothing), SELECTElementImpl)

Me.label1.Text = Constants.vbLf & "Select(UserControl):" & Me.Select.UserControl.DefaultSize.ToString()

{% endhighlight %}

{% endtabs %}

### Methods

* [InfillFromXMLElement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SELECTElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_SELECTElementImpl_InfillFromXMLElement_Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_System_Xml_XmlElement_): Detects the type of control and creates the particular control



## SPAN element

The SPAN element is used to group inline elements in the document and create custom character styles. The [SPANElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.SPANElementImpl.html) class is used to determine the properties and methods for the span element.

## STRONG element

The STRONG element is used to emphasize the specified text, usually in bold. The [STRONGElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.STRONGElementImpl.html) class is used to define the properties and methods for the strong element.

## STYLE element

The STYLE element is used to implement custom style in a document. It occurs inside the head section. An external style sheet is linked by using the <link> tag in a HTML document. The [StyleElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.StyleElementImpl.html) class is invoked for defining the properties and methods of the style element.



### Properties



* [IsVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.StyleElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_StyleElementImpl_IsVisible): Gets/sets a value indicating whether the link is shown/hidden.

{% tabs %}

{% highlight C# %}



// Gets a value indicating whether the link is visible or not.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

StyleElementImpl link = tab ["style"] as StyleElementImpl;

this.label1.Text = "\nLink(IsVisible):" + link.IsVisible.ToString();

{% endhighlight %}

{% highlight VB %}



‘Gets a value indicating whether the link is visible or not.

Private tab  As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private link As StyleElementImpl = CType(IIf(TypeOf tab("style") Is StyleElementImpl, tab("style"), Nothing), StyleElementImpl)

Private Me.label1.Text = Constants.vbLf & "Link(IsVisible):" &  link.IsVisible.ToString()

{% endhighlight %}

{% endtabs %}

#### Methods



* [GetCssStream](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.StyleElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_StyleElementImpl_GetCssStream): Returns a stream of inner CSS data of the style element.



## TABLE element

The TABLE element is used to create tables in a document. The table element contains the TR, TD elements within it. The [TABLEElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TABLEElementImpl.html) class is used to determine the properties and methods for the table element.



### Properties

* [ColsCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TABLEElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_TABLEElementImpl_ColsCount): Gets/sets the number of columns present in the table.
* [RowsCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TABLEElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_TABLEElementImpl_RowsCount): Gets/sets the number of rows present in the table.

{% tabs %}

{% highlight C# %}



// Gets the number of columns and rows present in the table.

Hashtable tab  = this.htmluiControl1.Document.GetElementsByUserIdHash();

TABLEElementImpl table = tab ["table"] as TABLEElementImpl;

this.label1.Text = "\nTable(ColsCount and RowsCount):" + table.ColsCount.ToString() + "," + table.RowsCount.ToString();


{% endhighlight %}


{% highlight VB %}



‘Gets the number of columns and rows present in the table.

Private tab  As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private table As TABLEElementImpl = CType(IIf(TypeOf tab("table") Is TABLEElementImpl, tab("table"), Nothing), TABLEElementImpl)

Private Me.label1.Text = Constants.vbLf & "Table(ColsCount and RowsCount):" & table.ColsCount.ToString()+","+table.RowsCount.ToString()

{% endhighlight %}

{% endtabs %}

## TD - Table cell element

The TD element is used to create regular cells inside a table. The [TDElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TDElementImpl.html) class contains the properties and methods for the table element.

## TEXTAREA element

The TEXTAREA element is used to define a multiline textbox, allowing the user to enter unlimited characters. The [TEXTAREAElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TEXTAREAElementImpl.html) class is invoked to define the properties and methods of the element.



### Properties



* [UserControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TEXTAREAElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_TEXTAREAElementImpl_UserControl): Gets/sets the user control instance for the particular input element declared by the user.

{% tabs %}

{% highlight C# %}



// UserControl property gets the user control instance for the particular input element declared by the // user.

Hashtable tab  = this.htmluiControl1.Document.GetElementsByUserIdHash();

TEXTAREAElementImpl txt = tab ["txt"] as TEXTAREAElementImpl;

this.txt.UserControl.CustomControl.Text = "This is a multiline textBox";

{% endhighlight %}

{% highlight VB %}

‘UserControl property gets the user control instance for the particular input element declared by the      '  user.

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()

Private txt As TEXTAREAElementImpl = CType(IIf(TypeOf tab("txt") Is TEXTAREAElementImpl, tab("txt"), Nothing), TEXTAREAElementImpl)

Private Me.txt.UserControl.CustomControl.Text= "This is a multiline textBox"

{% endhighlight %}

{% endtabs %}

## TH - Table head element

The TH element is used to create header cells inside a table. The [THElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.THElementImpl.html) class contains the properties and methods for the table header element. The text inside this element is formatted in bold, by default.

## TR - Table row element

The TR element is used to create rows inside a table. The [TRElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TRElementImpl.html) class contains the properties and methods for the table cell coding.



### Properties



* [CellsCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TRElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_TRElementImpl_CellsCount): Gets the number of cells present in the row.
* [VirtualCellsCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.TRElementImpl.html#Syncfusion_Windows_Forms_HTMLUI_TRElementImpl_VirtualCellsCount): Gets the total number of cells including the Column panel.

{% tabs %}

{% highlight C# %}



// Gets the number of cells present in the row and gets total number of cells including the column.

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

TRElementImpl tr = tab["tr"] as TRElementImpl;

this.label1.Text = "TR(CellsCount and VirtualCellsCount):"+ tr.CellsCount.ToString()+","+ tr.VirtualCellsCount.ToString();

{% endhighlight %}

{% highlight VB %}



‘Gets the  number of cells present in the row and gets total number of cells including the column.

Private tab As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private tr As TRElementImpl = Ctype(IIf(TypeOf tab("tr") Is TRElementImpl, tab("tr"), Nothing), TRElementImpl)

Private Me.label1.Text = "TR(CellsCount and VirtualCellsCount):"+ tr.CellsCount.ToString()+","+ tr.VirtualCellsCount.ToString()

{% endhighlight %}

{% endtabs %}

## UL - Unordered list element

The UL element is used in generating an unordered list. The properties and methods of this element are defined in the [ULElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.ULElementImpl.html) class.



## U - Underline element

The U element is used to underline the specified text. The [UElementImpl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.UElementImpl.html) class contains the properties and methods for the underline element.

