---
layout: post
title: HTML Tags in Windows Forms Html Viewer control | Syncfusion
description: Learn about HTML Tags support in Syncfusion Windows Forms Html Viewer (HTMLUI) control and more details.
platform: WindowsForms
control: HTML UI
documentation: ug
---

#  HTML tags in Windows Forms Html Viewer control

This sections details the HTML tags supported by HTMLUI. Most of the tags conform to the XHTML standard. Some of the tags support additional functionality implemented through custom attributes. Since HTMLUI considers each HTML tag as an XML element, it is recommended to use closing tags for each HTML element at the end. These tags and attributes are also marked and explained in this section.

## A - Anchor tag

The Anchor tag is used for creating links to other files or in creating bookmarks. This tag ends with </A>. It includes the following attributes.



* href: Specifies the URL of the page to which the link is to be made.
* rel: Specifies the relation between the current document and the target URL.



The following example illustrates how the Anchor tag is rendered in HTMLUI.

{% tabs %}

{% highlight C# %}



string htmlCode="<html><head><title>A Tag support</title></head><body><A href="link.htm">Link</A></body></html>";

this.htmluiControl1.LoadFromString(htmlCode);

{% endhighlight %}

{% highlight VB %}



Private htmlCode As String = "<html><head><title>A Tag support</title></head><body><A href="link.htm">Link</A></body></html>"

Me.HtmluiControl1.LoadFromString(htmlCode)

{% endhighlight %}

{% endtabs %}

## ABBR - Abbreviation tag

The Abbreviation tag is used to indicate the abbreviated forms of long and important texts. The title attribute is used to display a tooltip text when the cursor is moved over the abbreviated text. The support for <abbr> tag is shown in the following code snippet.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\Anchor\abbr.html



<html>

<body>

<abbr title="United Nations">UN</abbr>

</body>

</html>

{% endhighlight %}



{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\Anchor\abbr.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\Anchor\abbr.html")

{% endhighlight %}

{% endtabs %}

## Acronym tag

The Acronym tag is used to define the start of an acronym. The HTMLUI control supports the acronym tag which helps in providing useful tips to the users when marked up. The title attribute is used to provide a tooltip text when the mouse pointer moves over the acronym.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\Acronym\acronym.html



<html>

<body>

<abbr title="World Wide Web">WWW</abbr>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\Acronym\acronym.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\Acronym\acronym.html")

{% endhighlight %}

{% endtabs %}

## Comment tag

HTMLUI control supports the use of HTML Comment tags while developing applications. The Comment tag is used to include a brief description by the developer, which helps the user to understand the code and also helps to edit the code at a later date. Normally the content inside the comment is ignored by the HTMLUI control.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\Comment\comment.html



<html>

<body>

<!-- This is a HTML comment -->

<p>HTMLUI supports HTML commenting</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\Comment\comment.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\Comment\comment.html")

{% endhighlight %}

{% endtabs %}

## Font style tags

The Font Style tags are used to format the appearance of the specified text when rendered in HTMLUI. The following are the font style tags supported in HTMLUI:



* &lt;b&gt;: Bold tag renders the text in bold face.
* &lt;i&gt;: Italics tag renders italicized text.
* &lt;u&gt;:Underline tag renders underlined text.
* &lt;em&gt;:Emphasizing Text tag highlights important text in the document.
* &lt;strong&gt;:Strong tag renders specified text in bold face.
* &lt;code&gt;:Code tag renders specified text similar to computer coded text.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\FontStyle\fontStyle.html



<html>

<body>

<b>Bold text</b><br/>

<i>Italic text</i><br/>

<u>Underlined text</u><br/>

<em>Emphasized Text</em><br/>

<strong>Strong Text</strong><br/>

<code>Computer coded text</code>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\FontStyle\fontStyle.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\FontStyle\fontStyle.html")

{% endhighlight %}

{% endtabs %}


## BODY - Body tag

The Body element defines the body of the HTML document. This is the parent element of all the HTML elements visible in the browser. The contents to be displayed in the HTMLUI control are placed inside the body tag. In HTMLUI the body element is considered as the basis for all the elements present in the document. The following code snippet shows the use of a body element in rendering HTML documents in HTMLUI control.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\body\bodyTag.html



<html>

<body bgcolor="#ffffff"> 

<p>Body tag holds the contents to be displayed in the browser.</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\body\bodyTag.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\body\bodyTag.html")

{% endhighlight %}

{% endtabs %}

## BR - Break tag

The Break tag is used to insert a line break in the document displayed.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\break\br.html



<html>

<body> 

<p>This is the first line.</p><br/><p>This is the next line</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\break\br.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\break\br.html")

{% endhighlight %}

{% endtabs %}

## DIV - Division tag

The Division tag is used to define a division or a section defined in the document that is rendered in the HTMLUI control. The align attribute of the div tag is used to align the text displayed inside the div tag. The align attribute uses the following values to specify the position of the text display.

* left
* Right
* center
* justify

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\divide\div.html



<html>

<body>

<div align="left">Essential Studio</div>

<div align="right">Tools</div>

<div align="center">Grid</div>

<div align="justify">HTMLUI</div>

</body>

</html>


{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\divide\div.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\divide\div.html")

{% endhighlight %}

{% endtabs %}

## FORM - Form tag

The Form tag is used to create a form-based dialog for the users to give their inputs. The forms input element may be a text box, button, radio button, check box, and so on, based on the necessity of the user.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\UserInput\form.html



<html>

<body>

<form>

<input type="text"/><br/>

<input type="submit"/><br/>

<input type="radio"/><br/>

<input type="checkbox"/><br/>

</form>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\UserInput\form.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\UserInput\form.html")

{% endhighlight %}

{% endtabs %}

## HEAD - Head tag

The Head element contains the information required for processing the document. The contents of the head tag will not be displayed in the HTMLUI control. The HTMLUI control receives information only through the head element. The following are the information obtained:



* Link reference to the style sheets by using the Link tag of the head section.
* Styles to the HTML elements by using the Style tag of the head section.
* Title for the document in the Title tag of the head section.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\heading\head.html



<html>

<head>

<link href=”style.css” rel=”stylesheet” type=”text/css”>

<style>p{“background-color:#dae5f5;”}</style>

<title>Head section</title>

</head>

<body>

<p>The head contains the title for the document</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\heading\head.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\heading\head.html")

{% endhighlight %}

{% endtabs %}

## H1 - H6 header tag

The Header tags are defined as the h tags. These header tags are classified into six types based on the font size. HTMLUI control supports all the header tags ranging from h1 - the largest header to h6 - the smallest header.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\header\h.html



<html>

<body>

<h1 align="center">Header 1</h1><br/>

<h2 align="left">Header 2</h2><br/>

<h3 align="justify">Header 3</h3><br/>

<h4 align="right">Header 4</h4><br/>

<h5>Header 5</h5><br/>

<h6>Header 6</h6><br/>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\header\h.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\header\h.html")

{% endhighlight %}

{% endtabs %}

## HR - Horizontal rule tag

The Horizontal Rule tag is used to draw an horizontal line in the document. The <hr> tag in HTMLUI supports the following attributes.



* width: Specifies the width of the line.
* size: Specifies the thickness or height of the line.
* no shade: Renders the specified line in a solid color.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\HorizRule\rule.html



<html>

<body>

<p>Syncfusion</p><hr width=100 size=10 noshade /><p>Essential Studio</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\HorizRule\rule.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\HorizRule\rule.html")

{% endhighlight %}

{% endtabs %}

## HTML - HTML tag

The HTML tag specifies that the document to be loaded in the HTMLUI control is an HTML document. This tag contains the head and the body elements as its child elements.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\HTML\htmlElement.html



<html>

<head>

<title>New html document</title>

</head>

<body>

<p>The HTML tag contains the head and the body elements as its child element.</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\HTML\htmlElement.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\HTML\htmlElement.html")

{% endhighlight %}

{% endtabs %}

## IMG - Image tag

The Image tag is used to display an image in the HTMLUI control. The HTMLUI control supports the following attributes for the image element, which can used in developing advanced HTMLUI applications.



* src: Source attribute is used to access the location of the image file. The image may be located in the local folder or in the URI.
* alt: Alternate Text tag provides a tooltip test when the mouse is moved over the image. In case the image is not rendered in the control, this text is displayed in place of the image.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\img\imageElement.html



<html>

<body>

<img src="htmlui.jpg" alt="Syncfusion Essential HTMLUI"/>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\img\imageElement.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\img\imageElement.html")

{% endhighlight %}

{% endtabs %}

## INPUT - Input tag

The Input tag is used to receive some inputs from the user. The input tag uses the following attributes to provide a value for the specified input elements from the user.



* type: Specifies the type of input control to be placed in the document. HTMLUI control supports the following input elements:





<table>
<tr>
<td>
Attribute value</td><td>
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


* value: Specifies the default text that will appear on the control after being rendered on the document.
* size: Specifies the size of the input document.
* name: Specifies a unique name to the control. In HTMLUI the Control.Name property will access the name given to the control in code and not the value of this name attribute. The user has to access this value with the help of the Control.Attributes["name"].Value property. This will return the value of this attribute.
* max length: Specifies the maximum number of characters that can be displayed inside the text fields.
* disabled: Disables the control. Any change that the user makes in the control will not be updated in the control.
* checked: Displays the checkbox or the radio button selected by default in the document.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\input\input.html



<html>

<body>

<input type="text" value="textbox" size="20" maxlength="5" /><br/>

<input type="button" value="button element"/><br/>

<input type="checkbox" value="checkbox" checked/><br/>

<input type="password" value="password" size="20"/><br/>

<input type="radio" value="radio"/><br/>

<input type="reset" value="reset"/><br/>

<input type="submit" value="submit" size="50"/><br/>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\input\input.html");


{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\input\input.html")

{% endhighlight %}

{% endtabs %}

## LI - List item tag

The List Item tag defines a list item. The <li> tag is used inside the <ol> tag or <ul> tag to define each and every list item included inside them.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\listItem\li.html



<html>

<body>

<ol>

<li>Essential Tools</li>

<li>Essential Chart</li>

<li>Essential HTMLUI</li>

</ol>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\li.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\li.html")

{% endhighlight %}

{% endtabs %}

## LINK - Link tag

The Link tag is used to link another document to the current HTML document. This tag is generally used to link an external CSS style sheet to the HTML document. The following attributes for the link tag are supported in the HTMLUI control:



* rel: Specifies the relationship between the two documents.
* type: Specifies the type of the document to be linked, either text or image.
* href: Specifies the location of the document to be linked to the current document.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\link\link.html

<html>

<head><link rel="stylesheet" type="text/css" href="background.css"/></head>

<body>

<p>The document receives its background color from the external style sheet.</p>

</body>

</html>

{% endhighlight %}

{% endtabs %}

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\link\background.css



body

{

background-color: #dae5f5;

}

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\link\link.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\link\link.html")

{% endhighlight %}

{% endtabs %}

## OL - Ordered list tag

The Ordered List tag defines the start of an ordered list. The ordered list is numbered in the following scheme as '1, i, I, a, A' based on the requirements of the user. The ordered list contains the <li> items as its child elements. Each <li> element defines a list item. The type attribute is used to choose the required numbering style.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\listItem\ol.html



<html>

<body>

<ol type=”i”>

<li>Essential Tools</li>

<li>Essential Chart</li>

<li>Essential HTMLUI</li>

</ol>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ol.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ol.html")

{% endhighlight %}

{% endtabs %}

## OPTION - Option tag

The Option tag is used to include items to the drop-down list. The option tag is the child of the select tag. The option tag in HTMLUI supports the selected attribute. This attribute specifies the control that the specified option item is to be selected at startup.

{% tabs %}

{% highlight HTML %}

File Location and Name:  C:\MyProjects\select\option.html



<html>

<body>

<p>Dear Customer, please choose your option among our following products.</p>

<select>

<option>Essential Tools</option>

<option>Essential Chart</option>

<option selected="selected">Essential HTMLUI</option>



<!-- HTMLUI also supports this format, <option selected>Essential HTMLUI</option> -->

</select>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\select\option.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\select\option.html")

{% endhighlight %}

{% endtabs %}

## P - Paragraph tag

The P tag is used to define a paragraph in the HTML document. HTMLUI supports the P tag along with its align attribute. The align attribute is used to specify the alignment of the text within the paragraph. The alignment values are as follows:



* left:Left-aligns the text.
* right: Right-aligns the text.
* center:Positions text at the center of the document.
* justify: Left-aligns and right-aligns text.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\paragraph\p.html



<html>

<body>

<p align="left"><b>Essential Studio</b></p>

<p align="justify">Essential Studio contains 10 .NET libraries. It has components ranging from a Grid control to a HTML display control. They are available for both Windows Forms and ASP.NET.</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html");


{% endhighlight %}


{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html")

{% endhighlight %}

{% endtabs %}

## PRE - Pre formatted tag

The HTMLUI control renders pre formatted texts written inside the <pre> tags. These texts are rendered with the fixed-pitch fonts and the control preserves the spaces and the line breaks used in the document.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\pre\pre.html



<html>

<body>

<pre>

Evaluation Center:

The Evaluation Center has online sample code and complete sample downloads to help you get started quickly.

</pre>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\paragraph\p.html")

{% endhighlight %}

{% endtabs %}

## SCRIPT - Script tag

The Script tag is used to include executable user defined code snippets inside the HTML document. This is to make the HTML document self-contained and not to depend on external means for executing an action.

HTMLUI supports C#, Visual Basic and JavaScript. The language attribute is used to choose the script language from the supported types.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\scripting\scripting.html



<html>

<head><title>Scripting</title></head>

<body>

<P><input type="button" id="btn"></p>

<p><img id="img" src=""/></p>

<script language="C#">



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

                Hashtable tab = new Hashtable();

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

</script><br/>

</body>

</html>

{% endhighlight %}

{% endtabs %}

## SELECT - Select tag

The Select tag is used to create a drop-down list of options that can be selected by the user to give some input to the application. The select tag in HTMLUI supports the following attributes that improve the usage of the application.



* size:Specifies the number of items to be displayed in the select control in the document.
* disabled: Displays a disabled list box in which no items can be selected.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\select\select.html



<html>

<body>

<p>

Essential Studio includes ten component libraries in one great package. Each of these products has a unique and useful feature set.

</p>

<select size="2">

  <option>Essential Tools</option>

  <option>Essential Chart</option>

  <option>Essential Grid</option>

  <option>Essential HTMLUI</option>

</select>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\select\select.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\select\select.html")

{% endhighlight %}

{% endtabs %}

## SPAN - Span tag

The Span element is used to group inline elements present inside the element tags in the document.

{% tabs %}

{% highlight HTML %}



File Location and Name: C:\MyProjects\span\span.html



<html>

<body>

<p>100% .NET HTML display engine that can be used to create extremely flexible user interfaces. Part of <span style="color:#0000FF;">Essential Studio</span> Enterprise.</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\span\span.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\span\span.html")


{% endhighlight %}

{% endtabs %}

## STYLE - Style tag

The Style tag is used to apply styles to the HTML elements in the HTML document. The style tag is placed inside the head section and it will not be visible in the document. Styles can be applied to the HTML elements in the following ways:



1. By specifying the Tag Names: Specifies styles by writing CSS styles with the tag name inside the Style tag.

   {% capture codesnippet1 %}
   {% tabs %}

   {% highlight VB %}

		<style>p {color: red}</style>

		<p>Sample</p>

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet1 | OrderList_Indent_Level_1 }}

2. By specifying the Class Names to the Styles: Specifies styles with the help of the class names inside the Style tag.

   {% capture codesnippet2 %}
   {% tabs %}

   {% highlight HTML %}
   
		<style>.span {color: green}</style>

		<span class=”span”>Sample</span>

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet2 | OrderList_Indent_Level_1 }}

3. By specifying ID Class Selectors: Specifies styles by writing styles with the unique id inside the Style tag, and assigning them to the HTML elements by using the id attribute.

   {% capture codesnippet3 %}
   {% tabs %}

   {% highlight HTML %}

		<style>#divide {color: blue}</style>

		<div id=”divide”>Sample</span>

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet3 | OrderList_Indent_Level_1 }}

   Style tag in HTMLUI also supports the type attribute. The type attribute is optional and it specifies the type of the content in the HTML document.

   {% tabs %}

   {% highlight HTML %}

		File Location and Name:  C:\MyProjects\style\style.html



		<html>

		<head>

		<style type="text/css">

		p {color: red}

		.span {color: blue}

		#bluebg { background-color: #dae5f5; background-repeat: repeat-x;}

		</style>

		</head>

		<body id="bluebg">

		<p>100% .NET HTML display engine that can be used to create 

		extremely flexible user interfaces. Part of <span 

		class="span">Essential Studio</span> Enterprise.</p> 

		</body>

		</html>

   {% endhighlight %}

   {% endtabs %}

   {% tabs %}

   {% highlight C# %}


		this.htmluiControl.LoadHTML(@"C:\MyProjects\style\style.html");

   {% endhighlight %} 

   {% highlight HTML %}

		Me.htmluiControl.LoadHTML(@"C:\MyProjects\style\style.html")
  
   {% endhighlight %}

   {% endtabs %}


## SUB - Subscript tag

The Subscript tag defines a subscript text. The use of subscript text in HTMLUI is shown below.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\sub\sub.html



<html>

<head>

</head>

<body>

Water - H<sub>2</sub>O<br/>

Sulphuric Acid - H<sub>2</sub>SO<sub>4</sub><br/>

Carbon - CO<sub>2</sub>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\sub\sub.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\sub\sub.html")

{% endhighlight %}

{% endtabs %}

## SUP - Superscript tag

The Superscript tag defines a superscript text. The use of superscript text in HTMLUI is shown below.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\sup\sup.html



<html>

<head>

</head>

<body>

Pythagoras theorem:<br/>

In a right angled triangle,<br/>

<code>

hypotenuse<sup>2</sup> = opposite<sup>2</sup> + adjacent<sup>2</sup>

</code>

</body>

</html>


{% endhighlight %}


{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\sup\sup.html");


{% endhighlight %}


{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\sup\sup.html")

{% endhighlight %}

{% endtabs %}

## TABLE - Table tag

A Table tag defines a table in an HTML document. The table tag uses the <tr> tag to define a row and a <td> tag to define a cell element. The HTMLUI control supports the table with the following attributes that helps the rendering and display of complex HTML pages in the control easily.



* background color: Specifies the background color of the table.
* border: Specifies the thickness of the table border.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\table\table.html



<html>

<body>

<table bgcolor="#dae5f5" border="1">

<tr>

<td>Sample</td><td>Sample</td>

</tr>

</table>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\table.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\table.html")

{% endhighlight %}

{% endtabs %}

## TD - Table cell tag

The Table Cell tag defines a cell inside a table. The <td> tag has a parent <tr> tag to define the row and a <table> tag to define the table in which it is present. The td tag in HTMLUI supports the following attributes that help the user in designing custom structures for their documents easily.



* align: Specifies the alignment of the text inside the table cell.
* background color: Specifies a background color for the specified cell.
* column span: Spans the cell to the specified number of columns. This is used in merging the columns in the table.
* height:Specifies custom height for the cells.
* no wrap: Extends the text inside a particular cell into a single line. This display extends the width of the cell according to the contents inside it.
* row span: Extends the height of the cell to the specified number of rows. This is helpful in custom merging the rows of the given cell.
* vertical align: Determines the vertical alignment of the text inside the table cell.
* width: Specifies user-defined width for the specified cells.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\table\td.html



<html>

<body>

<table border = "1">

<tr>

<td >Sample</td>

<td align="center">Text Aligned Cell</td>

</tr>

<tr>

<td bgcolor="Blue">bgcolor cell</td>

<td >Cell</td>

</tr>

<tr>

<td colspan=2>Column cell</td>

</tr>

<tr>

<td height="50">Custom height cell</td>

<td nowrap>no wrap cell</td>

</tr>

<tr>

<td rowspan=2>Rows cell</td>

<td valign="bottom" height="80">V align cell</td>

</tr>

<tr>

<td width="300">custom width cell</td>

</tr>

<tr>

<td>Cell</td>

<td>Cell</td>

</tr>

</table>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\td.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\td.html")

{% endhighlight %}

{% endtabs %}

## TEXTAREA - Text area tag

The Text Area tag is used to define a multiline text box. The HTMLUI control supports the following attributes with the <textarea> tag for receiving inputs from the user effectively.

* rows: Specifies the number of rows for the text area.
* cols: Specifies the number of columns for the text area.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\textArea\textarea.html



<html>

<body>

<textarea rows="5" cols="20">

Essential Studio features "Just-In-Time" source level debugging. Switch between debug and release versions with a single click.

</textarea>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\textArea\textarea.html");

{% endhighlight %}

{% highlight VB %}

Me.htmluiControl.LoadHTML(@"C:\MyProjects\textArea\textarea.html")

{% endhighlight %}

{% endtabs %}

## TH - Table header tag

The Table Header tag is used to define header cells for the cells in a table. The <th> tag renders the text content in the particular cell in a bold face. The <th> tag supports the following attributes:



* align: Specifies the alignment of the text inside the table cell.
* background color: Specifies a background color for the specified cell.
* column span: Spans the cell to the specified number of columns. This is used in merging the columns in the table.
* height:Specifies custom height for the cells.
* no wrap: Extends the text inside a particular cell into a single line. This display extends the width of the cell according to the contents inside it.
* row span: Extends the height of the cell to the specified number of rows. This is helpful in custom merging the rows of the given cell.
* vertical align: Determines the vertical alignment of the text inside the table cell.
* width: Specifies user-defined width for the specified cells.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\table\th.html



<html>

<body>

<table border = "1">

<tr>

<th colspan = 2>Essential Studio</th>

</tr>

<tr>

<td>Essential</td>

<td>Tools</td>

</tr>

<tr>

<td>Essential</td>

<td>Grid</td>

</tr>

<tr>

<td>Essential</td>

<td>Chart</td>

</tr>

<tr>

<td>Essential</td>

<td>HTMLUI</td>

</tr>

</table>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\th.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\th.html")

{% endhighlight %}

{% endtabs %}

## TITLE - Title tag

The Title tag is used to enter a title to the document. The <title> tag is displayed in the title bar of in the HTMLUI control, which is present at the top of the control. The title display can be toggled with the help of ShowTitle property of the HTMLUI control. This is a bool property, which when set to true displays the title bar over the control. The title tag is inserted in the head section of the document.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\head\title.html



<html>

<head>

<title>

Syncfusion Essential HTMLUI

</title>

</head>

<body>

<p>100% .NET HTML display engine that can be used to create extremely flexible user interfaces. Part of Essential Studio Enterprise.</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\head\title.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\head\title.html")

{% endhighlight %}

{% endtabs %}

## TR - Table row tag

The Table Row tag is used to define a row in a table. The row contains the cells (td elements) as its children in a table. HTMLUI supports the align attribute that aligns the contents of the row to the specified horizontal alignment.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\table\tr.html



<html>

<body>

<table border = "1">

<tr align="center">

<td>Syncfusion</td>

<td>Essential Studio</td>

</tr>

</table>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\table\tr.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\table\tr.html")

{% endhighlight %}

{% endtabs %}

## UL - UnOrdered list tag

The UnOrdered List tag defines the start of a bulleted list. HTMLUI supports the bullets of the following shapes: Circle, Square and Disc. The unordered list contains the <li> items as its child elements. Each <li> element define a list item. The type attribute is used to choose the required bulleting style.

{% tabs %}

{% highlight HTML %}



File Location and Name:  C:\MyProjects\listItem\ul.html



<html>

<body>

<ul type="disc">

<li>Essential Tools</li>

<li>Essential Chart</li>

<li>Essential HTMLUI</li>

</ul>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



this.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ul.html");

{% endhighlight %}

{% highlight VB %}



Me.htmluiControl.LoadHTML(@"C:\MyProjects\listItem\ul.html")

{% endhighlight %}

{% endtabs %}

## HTML tags sample

This sample shows the various Tags supported in HTMLUI.



![HTML-Tags_img1](HTML-Tags_images/HTML-Tags_img1.jpeg)





By default, this sample can be found under the following location:



...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

