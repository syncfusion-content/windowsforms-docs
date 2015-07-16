---
layout: post
title: HTML-Tags
description:  html tags
platform: WindowsForms
control: HTML UI
documentation: ug
---

#  HTML Tags

This sections details the HTML tags supported by HTMLUI. Most of the tags conform to the XHTML standard. Some of the tags support additional functionality implemented through custom attributes. Since HTMLUI considers each HTML tag as an XML element, it is recommended to use closing tags for each HTML element at the end. These tags and attributes are also marked and explained in this section.

## A - Anchor Tag

The Anchor tag is used for creating links to other files or in creating bookmarks. This tag ends with &lt;/A&gt;. It includes the following attributes.



* href:Specifies the URL of the page to which the link is to be made
* rel: Specifies the relation between the current document and the target url



The following example illustrates how the Anchor tag is rendered in HTMLUI.



[C#]



string htmlCode="&lt;html&gt;&lt;head&gt;<title>A Tag support</title>&lt;/head&gt;&lt;body&gt;<A href="link.htm">Link</A>&lt;/body&gt;&lt;/html&gt;";

this.htmluiControl1.LoadFromString(htmlCode);



[VB.NET]



Private htmlCode As String = "&lt;html&gt;&lt;head&gt;<title>A Tag support</title>&lt;/head&gt;&lt;body&gt;<A href="link.htm">Link</A>&lt;/body&gt;&lt;/html&gt;"

Me.HtmluiControl1.LoadFromString(htmlCode)



## ABBR - Abbreviation Tag

The Abbreviation tag is used to indicate the abbreviated forms of long and important texts. The title attribute is used to display a tooltip text when the cursor is moved over the abbreviated text. The support for &lt;abbr&gt; tag is shown in the following code snippet.



[HTML]



File Location and Name:  C:\MyProjects\Anchor\abbr.html



&lt;html&gt;

&lt;body&gt;

<abbr title="United Nations">UN</abbr>

&lt;/body&gt;

&lt;/html&gt;





[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\Anchor\abbr.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\Anchor\abbr.html")



## Acronym Tag

The Acronym tag is used to define the start of an acronym. The HTMLUI control supports the acronym tag which helps in providing useful tips to the users when marked up. The title attribute is used to provide a tooltip text when the mouse pointer moves over the acronym.



[HTML]



File Location and Name:  C:\MyProjects\Acronym\acronym.html



&lt;html&gt;

&lt;body&gt;

<abbr title="World Wide Web">WWW</abbr>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\Acronym\acronym.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\Acronym\acronym.html")



## Comment Tag

HTMLUI control supports the use of HTML Comment tags while developing applications. The Comment tag is used to include a brief description by the developer, which helps the user to understand the code and also helps to edit the code at a later date. Normally the content inside the comment is ignored by the HTMLUI control.



[HTML]



File Location and Name:  C:\MyProjects\Comment\comment.html



&lt;html&gt;

&lt;body&gt;

&lt;!-- This is a HTML comment --&gt;

<p>HTMLUI supports HTML commenting</p>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\Comment\comment.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\Comment\comment.html")



## Font Style Tags

The Font Style tags are used to format the appearance of the specified text when rendered in HTMLUI. The following are the font style tags supported in HTMLUI:



* &lt;b&gt;: Bold tag renders the text in bold face
* &lt;i&gt;: Italics tag renders italicized text
* &lt;u&gt;:Underline tag renders underlined text
* &lt;em&gt;:Emphasizing Text tag highlights important text in the document
* &lt;strong&gt;:Strong tag renders specified text in bold face
* &lt;code&gt;:Code tag renders specified text similar to computer coded text



[HTML]



File Location and Name:  C:\MyProjects\FontStyle\fontStyle.html



&lt;html&gt;

&lt;body&gt;

<b>Bold text</b>&lt;br/&gt;

<i>Italic text</i>&lt;br/&gt;

<u>Underlined text</u>&lt;br/&gt;

<em>Emphasized Text</em>&lt;br/&gt;

<strong>Strong Text</strong>&lt;br/&gt;

<code>Computer coded text</code>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\FontStyle\fontStyle.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\FontStyle\fontStyle.html")



## BODY - Body Tag

The Body element defines the body of the HTML document. This is the parent element of all the HTML elements visible in the browser. The contents to be displayed in the HTMLUI control are placed inside the body tag. In HTMLUI the body element is considered as the basis for all the elements present in the document. The following code snippet shows the use of a body element in rendering HTML documents in HTMLUI control.



[HTML]



File Location and Name:  C:\MyProjects\body\bodyTag.html



&lt;html&gt;

&lt;body bgcolor="#ffffff"&gt; 

<p>Body tag holds the contents to be displayed in the browser.&lt;/p&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\body\bodyTag.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\body\bodyTag.html")



## BR - Break Tag

The Break tag is used to insert a line break in the document displayed.



[HTML]



File Location and Name:  C:\MyProjects\break\br.html



&lt;html&gt;

&lt;body&gt; 

<p>This is the first line.&lt;/p&gt;&lt;br/&gt;<p>This is the next line</p>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\break\br.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\break\br.html")



## DIV - Division Tag

The Division tag is used to define a division or a section defined in the document that is rendered in the HTMLUI control. The align attribute of the div tag is used to align the text displayed inside the div tag. The align attribute uses the following values to specify the position of the text display.

* left
* Right
* center
* justify



[HTML]



File Location and Name:  C:\MyProjects\divide\div.html



&lt;html&gt;

&lt;body&gt;

<div align="left">Essential Studio</div>

<div align="right">Tools</div>

<div align="center">Grid</div>

<div align="justify">HTMLUI</div>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\divide\div.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\divide\div.html")



## FORM - Form Tag

The Form tag is used to create a form-based dialog for the users to give their inputs. The forms input element may be a text box, button, radio button, check box, and so on, based on the necessity of the user.



[HTML]



File Location and Name:  C:\MyProjects\UserInput\form.html



&lt;html&gt;

&lt;body&gt;

&lt;form&gt;

&lt;input type="text"/&gt;&lt;br/&gt;

&lt;input type="submit"/&gt;&lt;br/&gt;

&lt;input type="radio"/&gt;&lt;br/&gt;

&lt;input type="checkbox"/&gt;&lt;br/&gt;

&lt;/form&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\UserInput\form.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\UserInput\form.html")



## HEAD - Head Tag

The Head element contains the information required for processing the document. The contents of the head tag will not be displayed in the HTMLUI control. The HTMLUI control receives information only through the head element. The following are the information obtained:



* Link reference to the style sheets by using the Link tag of the head section
* Styles to the html elements by using the Style tag of the head section
* Title for the document in the Title tag of the head section



[HTML]



File Location and Name:  C:\MyProjects\heading\head.html



&lt;html&gt;

&lt;head&gt;

&lt;link href=”style.css” rel=”stylesheet” type=”text/css”&gt;

<style>p{“background-color:#dae5f5;”}&lt;/style&gt;

<title>Head section</title>

&lt;/head&gt;

&lt;body&gt;

<p>The head contains the title for the document</p>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\heading\head.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\heading\head.html")



## H1 - H6 Header Tag

The Header tags are defined as the h tags. These header tags are classified into six types based on the font size. HTMLUI control supports all the header tags ranging from h1 - the largest header to h6 - the smallest header.



[HTML]



File Location and Name:  C:\MyProjects\header\h.html



&lt;html&gt;

&lt;body&gt;

<h1 align="center">Header 1</h1>&lt;br/&gt;

<h2 align="left">Header 2</h2>&lt;br/&gt;

<h3 align="justify">Header 3</h3>&lt;br/&gt;

<h4 align="right">Header 4</h4>&lt;br/&gt;

<h5>Header 5</h5>&lt;br/&gt;

<h6>Header 6</h6>&lt;br/&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\header\h.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\header\h.html")



## HR - Horizontal Rule Tag

The Horizontal Rule tag is used to draw an horizontal line in the document. The &lt;hr&gt; tag in HTMLUI supports the following attributes.



* width:Specifies the width of the line
* size:Specifies the thickness or height of the line
* noshade: Renders the specified line in a solid color



[HTML]



File Location and Name:  C:\MyProjects\HorizRule\rule.html



&lt;html&gt;

&lt;body&gt;

<p>Syncfusion</p>&lt;hr width=100 size=10 noshade /&gt;<p>Essential Studio</p>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\HorizRule\rule.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\HorizRule\rule.html")



## HTML - HTML Tag

The HTML tag specifies that the document to be loaded in the HTMLUI control is an HTML document. This tag contains the head and the body elements as its child elements.



[HTML]



File Location and Name:  C:\MyProjects\HTML\htmlElement.html



&lt;html&gt;

&lt;head&gt;

<title>New html document</title>

&lt;/head&gt;

&lt;body&gt;

<p>The HTML tag contains the head and the body elements as its child element.&lt;/p&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\HTML\htmlElement.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\HTML\htmlElement.html")



## IMG - Image Tag

The Image tag is used to display an image in the HTMLUI control. The HTMLUI control supports the following attributes for the image element, which can used in developing advanced HTMLUI applications.



* src: Source attribute is used to access the location of the image file. The image may be located in the local folder or in the URI.
* alt: Alternate Text tag provides a tooltip test when the mouse is moved over the image. In case the image is not rendered in the control, this text is displayed in place of the image.



[HTML]



File Location and Name:  C:\MyProjects\img\imageElement.html



&lt;html&gt;

&lt;body&gt;

&lt;img src="htmlui.jpg" alt="Syncfusion Essential HTMLUI"/&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\img\imageElement.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\img\imageElement.html")





## INPUT - Input Tag

The Input tag is used to receive some inputs from the user. The input tag uses the following attributes to provide a value for the specified input elements from the user.



* type: Specifies the type of input control to be placed in the document. HTMLUI control supports the following input elements:





<table>
<tr>
<td>
Attribute Value</td><td>
Control that will be Displayed</td></tr>
<tr>
<td>
Text</td><td>
Text Box</td></tr>
<tr>
<td>
Button</td><td>
Button</td></tr>
<tr>
<td>
CheckBox</td><td>
Check Box</td></tr>
<tr>
<td>
Radio</td><td>
Radio Button</td></tr>
<tr>
<td>
Password</td><td>
Password Box</td></tr>
<tr>
<td>
Reset</td><td>
Reset Button</td></tr>
<tr>
<td>
Submit</td><td>
Submit Button</td></tr>
</table>


* value: Specifies the default text that will appear on the control after being rendered on the document
* size: Specifies the size of the input document
* name: Specifies a unique name to the control. In HTMLUI the Control.Name property will access the name given to the control in code and not the value of this name attribute. The user has to access this value with the help of the Control.Attributes["name"].Value property. This will return the value of this attribute.
* maxlength: Specifies the maximum number of characters that can be displayed inside the text fields
* disabled: Disables the control. Any change that the user makes in the control will not be updated in the control.
* checked: Displays the checkbox or the radio button selected by default in the document



[HTML]



File Location and Name:  C:\MyProjects\input\input.html



&lt;html&gt;

&lt;body&gt;

&lt;input type="text" value="textbox" size="20" maxlength="5" /&gt;&lt;br/&gt;

&lt;input type="button" value="button element"/&gt;&lt;br/&gt;

&lt;input type="checkbox" value="checkbox" checked/&gt;&lt;br/&gt;

&lt;input type="password" value="password" size="20"/&gt;&lt;br/&gt;

&lt;input type="radio" value="radio"/&gt;&lt;br/&gt;

&lt;input type="reset" value="reset"/&gt;&lt;br/&gt;

&lt;input type="submit" value="submit" size="50"/&gt;&lt;br/&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\input\input.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\input\input.html")

## LI - List Item Tag

The List Item tag defines a list item. The &lt;li&gt; tag is used inside the &lt;ol&gt; tag or &lt;ul&gt; tag to define each and every list item included inside them.



[HTML]



File Location and Name:  C:\MyProjects\listItem\li.html



&lt;html&gt;

&lt;body&gt;

&lt;ol&gt;

<li>Essential Tools</li>

<li>Essential Chart</li>

<li>Essential HTMLUI</li>

&lt;/ol&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\li.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\li.html")



## LINK - Link Tag

The Link tag is used to link another document to the current HTML document. This tag is generally used to link an external CSS style sheet to the HTML document. The following attributes for the link tag are supported in the HTMLUI control:



* rel: Specifies the relationship between the two documents
* type: Specifies the type of the document to be linked, either text or image
* href:Specifies thelocation of the document to be linked to the current document



[HTML]



File Location and Name:  C:\MyProjects\link\link.html



&lt;html&gt;

&lt;head&gt;&lt;link rel="stylesheet" type="text/css" href="background.css"/&gt;&lt;/head&gt;

&lt;body&gt;

<p>The document receives its background color from the external style sheet.&lt;/p&gt;

&lt;/body&gt;

&lt;/html&gt;



[Stylesheet]



File Location and Name:  C:\MyProjects\link\background.css



body

{

background-color: #dae5f5;

}



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\link\link.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\link\link.html")



## OL - Ordered List Tag

The Ordered List tag defines the start of an ordered list. The ordered list is numbered in the following scheme as '1, i, I, a, A' based on the requirements of the user. The ordered list contains the &lt;li&gt; items as its child elements. Each &lt;li&gt; element defines a list item. The type attribute is used to choose the required numbering style.



[HTMl]



File Location and Name:  C:\MyProjects\listItem\ol.html



&lt;html&gt;

&lt;body&gt;

&lt;ol type=”i”&gt;

<li>Essential Tools</li>

<li>Essential Chart</li>

<li>Essential HTMLUI</li>

&lt;/ol&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ol.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ol.html")



## OPTION - Option Tag

The Option tag is used to include items to the drop-down list. The option tag is the child of the select tag. The option tag in HTMLUI supports the selected attribute. This attribute specifies the control that the specified option item is to be selected at startup.





[HTML]



File Location and Name:  C:\MyProjects\select\option.html



&lt;html&gt;

&lt;body&gt;

<p>Dear Customer, please choose your option among our following products.&lt;/p&gt;

&lt;select&gt;

<option>Essential Tools</option>

<option>Essential Chart</option>

<option selected="selected">Essential HTMLUI</option>



<!-- HTMLUI also supports this format, <option selected>Essential HTMLUI</option> -->

&lt;/select&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\select\option.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\select\option.html")



## P - Paragraph Tag

The P tag is used to define a paragraph in the HTML document. HTMLUI supports the P tag along with its align attribute. The align attribute is used to specify the alignment of the text within the paragraph. The alignment values are as follows:



* left:Left-aligns the text
* right: Right-aligns the text
* center:Positions text at the center of the document
* justify: Left-aligns and right-aligns text



[HTML]



File Location and Name:  C:\MyProjects\paragraph\p.html



&lt;html&gt;

&lt;body&gt;

&lt;p align="left"&gt;<b>Essential Studio</b>&lt;/p&gt;

<p align="justify">Essential Studio contains 10 .NET libraries. It has components ranging from a Grid control to a HTML display control. They are available for both Windows Forms and ASP.NET.&lt;/p&gt;

&lt;/body&gt;

&lt;/html&gt;





[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html");





[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html")



## PRE - Preformatted Tag

The HTMLUI control renders preformatted texts written inside the &lt;pre&gt; tags. These texts are rendered with the fixed-pitch fonts and the control preserves the spaces and the line breaks used in the document.



[HTML]



File Location and Name:  C:\MyProjects\pre\pre.html



&lt;html&gt;

&lt;body&gt;

&lt;pre&gt;

Evaluation Center:

The Evaluation Center has online sample code and complete sample downloads to help you get started quickly.

&lt;/pre&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html")



## SCRIPT - Script Tag

The Script tag is used to include executable user defined code snippets inside the HTML document. This is to make the HTML document self-contained and not to depend on external means for executing an action.

HTMLUI supports C#, Visual Basic and Jscript. The language attribute is used to choose the script language from the supported types.



[HTML]



File Location and Name:  C:\MyProjects\scripting\scripting.html



&lt;html&gt;

&lt;head&gt;<title>Scripting</title>&lt;/head&gt;

&lt;body&gt;

&lt;P&gt;&lt;input type="button" id="btn"&gt;&lt;/p&gt;

&lt;p&gt;&lt;img id="img" src=""/&gt;&lt;/p&gt;

&lt;script language="C#"&gt;



using System;

using System.Windows.Forms;

using System.Collections;

using Syncfusion.Windows.Forms.HTMLUI;



namespace Syncfusion

{

public class Script

        {

                  IHTMLElement button = null;

                  IHTMLElement img = null;

                Hashtable htmlelements = new Hashtable();

                  /* Initializes script.*/

                  public static Script OnScriptStart()

                  {

                          return new Script();

                  }

                  public Script()

                  {

                    if( Global.Document == null )

                    {

                          MessageBox.Show( "Document is NULL" );

                          return;

                    }

                    button = Global.Document.GetElementByUserId( "btn" );

                    img = Global.Document.GetElementByUserId( "img" );                    

                     button.Click += new EventHandler(button_Click);

                  }

                public void button_Click(object sender, EventArgs ar)

                {

                        img.Attributes["src"].Value="sync.jpg";

                }

        }

}

&lt;/script&gt;&lt;br/&gt;

&lt;/body&gt;

&lt;/html&gt;



## SELECT - Select Tag

The Select tag is used to create a drop-down list of options that can be selected by the user to give some input to the application. The select tag in HTMLUI supports the following attributes that improve the usage of the application. 



* size:Specifies the number of items to be displayed in the select control in the document
* disabled: Displays a disabled list box in which no items can be selected



[HTML]



File Location and Name:  C:\MyProjects\select\select.html



&lt;html&gt;

&lt;body&gt;

&lt;p&gt;

Essential Studio includes ten component libraries in one great package. Each of these products has a unique and useful feature set.

&lt;/p&gt;

&lt;select size="2"&gt;

  <option>Essential Tools</option>

  <option>Essential Chart</option>

  <option>Essential Grid</option>

  <option>Essential HTMLUI</option>

&lt;/select&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\select\select.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\select\select.html")



## SPAN - Span Tag

The Span element is used to group inline elements present inside the element tags in the document.



[HTML]



File Location and Name: C:\MyProjects\span\span.html



&lt;html&gt;

&lt;body&gt;

<p>100% .NET HTML display engine that can be used to create extremely flexible user interfaces. Part of <span style="color:#0000FF;">Essential Studio</span> Enterprise.&lt;/p&gt; 

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\span\span.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\span\span.html")





## STYLE - Style Tag

The Style tag is used to apply styles to the HTML elements in the HTML document. The style tag is placed inside the head section and it will not be visible in the document. Styles can be applied to the HTML elements in the following ways:



1. By specifying the Tag Names: Specifies styles by writing CSS styles with the tag name inside the Style tag



[HTML]



<style>p {color: red}&lt;/style&gt;

<p>Sample</p>



2. By specifying the Class Names to the Styles: Specifies styles with the help of the class names inside the Style tag



[HTML]



&lt;style&gt;.span {color: green}&lt;/style&gt;

<span class=”span”>Sample</span>



3. By specifying ID Class Selectors: Specifies styles by writing styles with the unique id inside the Style tag, and assigning them to the HTML elements by using the id attribute



[HTML]



&lt;style&gt;#divide {color: blue}&lt;/style&gt;

<div id=”divide”>Sample</span>



Style tag in HTMLUI also supports the type attribute. The type attribute is optional and it specifies the type of the content in the HTML document.



[HTML]



File Location and Name:  C:\MyProjects\style\style.html



&lt;html&gt;

&lt;head&gt;

&lt;style type="text/css"&gt;

p {color: red}

.span {color: blue}

#bluebg { background-color: #dae5f5; background-repeat: repeat-x;}

&lt;/style&gt;

&lt;/head&gt;

&lt;body id="bluebg"&gt;

<p>100% .NET HTML display engine that can be used to create 

extremely flexible user interfaces. Part of <span 

class="span">Essential Studio</span> Enterprise.&lt;/p&gt; 

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\style\style.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\style\style.html")



## SUB - Subscript Tag

The Subscript tag defines a subscript text. The use of subscript text in HTMLUI is shown below.



[HTML]



File Location and Name:  C:\MyProjects\sub\sub.html



&lt;html&gt;

&lt;head&gt;

&lt;/head&gt;

&lt;body&gt;

Water - H<sub>2</sub>O<br/>

Sulphuric Acid - H<sub>2</sub>SO<sub>4</sub>&lt;br/&gt;

Carbon-di-Oxide - CO<sub>2</sub>

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\sub\sub.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\sub\sub.html")



## SUP - Superscript Tag

The Superscript tag defines a superscript text. The use of superscript text in HTMLUI is shown below.



[HTML]



File Location and Name:  C:\MyProjects\sup\sup.html



&lt;html&gt;

&lt;head&gt;

&lt;/head&gt;

&lt;body&gt;

Pythagoras theorem:&lt;br/&gt;

In a right angled triangle,&lt;br/&gt;

&lt;code&gt;

hypotenuse<sup>2</sup> = opposite<sup>2</sup> + adjacent<sup>2</sup>

&lt;/code&gt;

&lt;/body&gt;

&lt;/html&gt;





[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\sup\sup.html");





[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\sup\sup.html")



## TABLE - Table Tag

A Table tag defines a table in an HTML document. The table tag uses the &lt;tr&gt; tag to define a row and a &lt;td&gt; tag to define a cell element. The HTMLUI control supports the table with the following attributes that helps the rendering and display of complex html pages in the control easily.



* bgcolor: Specifies the background color of the table
* border: Specifies the thickness of the table border



[HTML]



File Location and Name:  C:\MyProjects\table\table.html



&lt;html&gt;

&lt;body&gt;

&lt;table bgcolor="#dae5f5" border="1"&gt;

&lt;tr&gt;

<td>Sample</td><td>Sample</td>

&lt;/tr&gt;

&lt;/table&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\table.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\table.html")



## TD - Table Cell Tag

The Table Cell tag defines a cell inside a table. The &lt;td&gt; tag has a parent &lt;tr&gt; tag to define the row and a &lt;table&gt; tag to define the table in which it is present. The td tag in HTMLUI supports the following attributes that help the user in designing custom structures for their documents easily.



* align: Specifies the alignment of the text inside the table cell
* bgcolor: Specifies a background color for the specified cell
* colspan: Spans the cell to the specified number of columns. This is used in merging the columns in the table.
* height:Specifiescustom height for the cells
* nowrap: Extends the text inside a particular cell into a single line. This display extends the width of the cell according to the contents inside it.
* rowspan: Extends the height of the cell to the specified number of rows. This is helpful in custom merging the rows of the given cell
* valign: Determines the vertical alignment of the text inside the table cell
* width: Specifies user-defined width for the specified cells



[HTML]



File Location and Name:  C:\MyProjects\table\td.html



&lt;html&gt;

&lt;body&gt;

&lt;table border = "1"&gt;

&lt;tr&gt;

<td >Sample</td>

<td align="center">Text Aligned Cell</td>

&lt;/tr&gt;

&lt;tr&gt;

<td bgcolor="Blue">bgcolor cell</td>

<td >Cell</td>

&lt;/tr&gt;

&lt;tr&gt;

<td colspan=2>Colspan cell</td>

&lt;/tr&gt;

&lt;tr&gt;

<td height="50">Custom height cell</td>

<td nowrap>nowrap cell</td>

&lt;/tr&gt;

&lt;tr&gt;

<td rowspan=2>Rowspan cell</td>

<td valign="bottom" height="80">V align cell</td>

&lt;/tr&gt;

&lt;tr&gt;

<td width="300">custom width cell</td>

&lt;/tr&gt;

&lt;tr&gt;

<td>Cell</td>

<td>Cell</td>

&lt;/tr&gt;

&lt;/table&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\td.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\td.html")



## TEXTAREA - Text Area Tag

The Text Area tag is used to define a multiline text box. The HTMLUI control supports the following attributes with the &lt;textarea&gt; tag for receiving inputs from the user effectively.

* rows: Specifies the number of rows for the text area
* cols: Specifies the number of columns for the text area



[HTML]



File Location and Name:  C:\MyProjects\textArea\textarea.html



&lt;html&gt;

&lt;body&gt;

&lt;textarea rows="5" cols="20"&gt;

Essential Studio features "Just-In-Time" source level debugging. Switch between debug and release versions with a single click.

&lt;/textarea&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\textArea\textarea.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\textArea\textarea.html")

## TH - Table Header Tag

The Table Header tag is used to define header cells for the cells in a table. The &lt;th&gt; tag renders the text content in the particular cell in a bold face. The &lt;th&gt; tag supports the following attributes:



* align: Specifies the alignment of the text inside the table cell
* bgcolor: Specifies a background color for the specified cell
* colspan: Spans the cell to the specified number of columns. This is used in merging the columns in the table.
* height:Specifiescustom height for the cells
* nowrap: Extends the text inside a particular cell into a single line. This display extends the width of the cell according to the contents inside it.
* rowspan: Extends the height of the cell to the specified number of rows. This is helpful in custom merging the rows of the given cell.
* valign: Determines the vertical alignment of the text inside the table cell
* width: Specifies user-defined width for the specified cells



[HTML]



File Location and Name:  C:\MyProjects\table\th.html



&lt;html&gt;

&lt;body&gt;

&lt;table border = "1"&gt;

&lt;tr&gt;

<th colspan = 2>Essential Studio</th>

&lt;/tr&gt;

&lt;tr&gt;

<td>Essential</td>

<td>Tools</td>

&lt;/tr&gt;

&lt;tr&gt;

<td>Essential</td>

<td>Grid</td>

&lt;/tr&gt;

&lt;tr&gt;

<td>Essential</td>

<td>Chart</td>

&lt;/tr&gt;

&lt;tr&gt;

<td>Essential</td>

<td>HTMLUI</td>

&lt;/tr&gt;

&lt;/table&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\th.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\th.html")



## TITLE - Title Tag

The Title tag is used to enter a title to the document. The &lt;title&gt; tag is displayed in the title bar of in the HTMLUI control, which is present at the top of the control. The title display can be toggled with the help of ShowTitle property of the HTMLUI control. This is a bool property, which when set to true displays the title bar over the control. The title tag is inserted in the head section of the document.



[HTML]



File Location and Name:  C:\MyProjects\head\title.html



&lt;html&gt;

&lt;head&gt;

&lt;title&gt;

Syncfusion Essential HTMLUI

&lt;/title&gt;

&lt;/head&gt;

&lt;body&gt;

<p>100% .NET HTML display engine that can be used to create extremely flexible user interfaces. Part of Essential Studio Enterprise.&lt;/p&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\head\title.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\head\title.html")

## TR - Table Row Tag

The Table Row tag is used to define a row in a table. The row contains the cells (td elements) as its children in a table. HTMLUI supports the align attribute that aligns the contents of the row to the specified horizontal alignment.



[HTML]



File Location and Name:  C:\MyProjects\table\tr.html



&lt;html&gt;

&lt;body&gt;

&lt;table border = "1"&gt;

&lt;tr align="center"&gt;

<td>Syncfusion</td>

<td>Essential Studio</td>

&lt;/tr&gt;

&lt;/table&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\tr.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\tr.html")



## UL - UnOrdered List Tag

The UnOrdered List tag defines the start of a bulleted list. HTMLUI supports the bullets of the following shapes: Circle, Square and Disc. The unordered list contains the &lt;li&gt; items as its child elements. Each &lt;li&gt; element define a list item. The type attribute is used to choose the required bulleting style.



[HTML]



File Location and Name:  C:\MyProjects\listItem\ul.html



&lt;html&gt;

&lt;body&gt;

&lt;ul type="disc"&gt;

<li>Essential Tools</li>

<li>Essential Chart</li>

<li>Essential HTMLUI</li>

&lt;/ul&gt;

&lt;/body&gt;

&lt;/html&gt;



[C#]



this.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ul.html");



[VB.NET]



Me.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ul.html")



## HTML Tags Sample

This sample shows the various Tags supported in HTMLUI.



{ ![](HTML-Tags_images/HTML-Tags_img1.jpeg) | markdownify }
{:.image }




By default, this sample can be found under the following location:



...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

