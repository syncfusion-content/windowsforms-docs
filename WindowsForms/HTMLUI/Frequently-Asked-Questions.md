---
layout: post
title: Frequently-Asked-Questions
description:  frequently asked questions
platform: WindowsForms
control: HTML UI
documentation: ug
---

##  Frequently Asked Questions

This section discusses various frequently asked questions with their answers, examples and code snippets.

### How To Access All the Child Elements Of an HTML Element In the HTMLUI Control?

The IHTMLElement.Children property of any IHTMLElement, collects all the child elements of a specified HTML element inside an IHTMLElementsCollection. You can access the elements needed for your conditions from this collection.

The following code snippet illustrates how the child elements of the Body element in the given HTML document are searched to access elements containing the OnClick attribute and how a Click event is attached to those elements.



[HTML]



<html>

<head>

<style>.nav{"background-color:#dae5f5"}</style>

</head>

<body>

<p/>

<img src="sync.jpg" id="img1" class="nav"/>

<p/>

<div>This is a sample</div>

</body>

</html>



[C#]



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

//Getting the body element in the HTML document

IHTMLElement[] body = this.htmluiControl1.Document.GetElementsByName("body");

//Collecting the children of the body element in a collection

IHTMLElementsCollection elem = body[0].Children;

foreach (IHTMLElement child in elem)

{

//searching for the children containing the OnClick attribute

if (child.Attributes.Contains("ONCLICK") == true)

{

//Click event declaration for current children

child.Click += new EventHandler(child_Click);

}

}

}



private void child_Click(object sender, EventArgs e)

{

BubblingEventArgs bargs = HTMLUIControl.GetBublingEventArgs(e);

//Accessing the element that is sending the event

BaseElement elem = bargs.RootSender as BaseElement;

//Validating the element for execution

if (elem.ID == "img1" && elem is IMGElementImpl)

{

if (elem.Attributes["src"].Value == "sync.jpg")

elem.Attributes["src"].Value = "syncfusion.gif";

else

elem.Attributes["src"].Value = "sync.jpg";

this.htmluiControl1.ScrollToElement(elem);

}

}



[VB.NET]



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)

'Getting the body element in the HTML document

Dim body As IHTMLElement() = Me.htmluiControl1.Document.GetElementsByName("body")



'Collecting the children of the body element in a collection

Dim elem As IHTMLElementsCollection = body(0).Children

For Each child As IHTMLElement In elem



'searching for the children containing the OnClick attribute

If child.Attributes.Contains("ONCLICK") = True Then



'Click event declaration for current children

AddHandler child.Click, AddressOf child_Click

End If

Next child

End Sub



Private Sub child_Click(ByVal sender As Object, ByVal e As EventArgs)

Dim bargs As BubblingEventArgs = HTMLUIControl.GetBublingEventArgs(e)

'Accessing the element that is sending the event

Dim elem As BaseElement = CType(IIf(TypeOf bargs.RootSender Is BaseElement, bargs.RootSender, Nothing), BaseElement)



'Validating the element for execution

If elem.ID = "img1" AndAlso TypeOf elem Is IMGElementImpl Then

If elem.Attributes("src").Value = "sync.jpg" Then

elem.Attributes("src").Value = "syncfusion.gif"

Else

elem.Attributes("src").Value = "sync.jpg"

End If

Me.htmluiControl1.ScrollToElement(elem)

End If

End Sub

### How To Access the HTML Elements Loaded Into the Control?

The HTML elements are accessed in HTMLUI for developing advanced UIs. The HTML elements are collected in a collection class. When the Hashtable is used as a collection class, it stores the HTML elements with a key, specific for each element.

These elements are then assigned to the code variables. The Code Variables are the objects of the classes that are responsible for the functionality of the tag elements. These classes contain the definitions for the properties, methods and events for the tag elements. These variables will be used in accessing the HTML elements inside the code. 

The following HTML document shows an input tag textbox element with an id as the key for accessing it in the Hashtable.



[HTML]



<html>

<body> 

<input type="text" id="txt"/>

</body> 

</html>



The following code snippet illustrates accessing the HTML elements from the above document.



[C#]



//declaring the code variable of the tag element 

//INPUTElementImpl is responsible for the INPUT tag in HTMLUI 

INPUTElementImpl text;



//Collection class accessing the HTML document with the userID as the key

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();



//Code variable assigned to the html element with the help of the element's id as //the key 

this.text = htmlelements["txt"] as INPUTElementImpl;



//usage of the code variable inside the project 

this.text.UserControl.CustomControl.Text = "HTML Elements in HTMLUI";



[VB.NET]



'declaring the code variable of the tag element 

'INPUTElementImpl is responsible for the INPUT tag in HTMLUI 

Private text As INPUTElementImpl



'Collection class accessing the HTML document with the userID as the key 

Private htmlelements As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()



'Code variable assigned to the html element with the help of the element's id as 'the key 

Me.Text = CType(IIf(TypeOf htmlelements("txt") Is INPUTElementImpl, htmlelements("txt"), Nothing), INPUTElementImpl)



'usage of the code variable inside the project 

Me.Text.UserControl.CustomControl.Text = "HTML Elements in HTMLUI"



### How To Access the Inner HTML Text Of the Current HTML Element In the HTMLUI Control?

You can access the inner HTML text of the current HTML element in the HTMLUI control by using the InnerHTML property of the HTMLUI control. This property also allows access to the child elements of the HTML elements.

The following HTML document contains a div element. The code snippet shows how the inner text of the element is accessed and displayed in the output at run time.



[HTML]



<!-- HTML Document -->

<html>

<body>

<div id="div1">

Have an issue you need to contact Syncfusion about? Use our state of the art incident management

system - Direct-Trac.

</div>

</body>

</html>



[C#]



Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();

DIVElementImpl div1 = this.htmlelements["div1"] as DIVElementImpl;

MessageBox.Show(div1.InnerHTML.ToString());



[VB.NET]



Private htmlelements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private div1 As DIVElementImpl = CType(IIf(TypeOf Me.htmlelements("div1") Is DIVElementImpl, 

Me.htmlelements("div1"), Nothing), DIVElementImpl)

MessageBox.Show(div1.InnerHTML.ToString())



### How To Access the Name Of an HTML Element At Run-time?

The element.Name property gets the name of the tag that defines the element as an attribute, and not the name of the element defined by the user. You can access the name of the element with the help of the element.Attributes property.

The following HTML document illustrates how an input element with a name is declared and accessed in HTMLUI.



[HTML]



<html>

<body>

<p>

<input type="text" id="txt1" name="textboxOne" size="20"></input>

</p>

</body>

</html>



[C#]



INPUTElementImpl textBox1;

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();



//accessing the input element

textBox1 = htmlelements["txt1"] as INPUTElementImpl;



//accessing the tag name of the element

Console.WriteLine("Tag Name of TextBox1:\n"+ textBox1.Name.ToString());



//accessing the attribute name of the element

Console.WriteLine("Name given for TextBox1:\n"+ textBox1.Attributes["name"].Value);



[VB.NET]



Private textBox1 As INPUTElementImpl

Private htmlelements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()



'accessing the input element

Private textBox1 = CType(IIf(TypeOf htmlelements("txt1") Is INPUTElementImpl, 

htmlelements("txt1"), Nothing), INPUTElementImpl)



'accessing the tag name of the element

Console.WriteLine("Tag Name of TextBox1:" & Constants.vbLf+ textBox1.Name.ToString())



'accessing the attribute name of the element

Console.WriteLine("Name given for TextBox1:" & Constants.vbLf+ textBox1.Attributes("name").Value)



### How To Add an Attribute To an HTML Element And Change Its Value At Run-time?

You can add an attribute to an HTML element using the Add method of the Attributes property, as shown in the following code snippet.



[C#]



// textBox is an INPUT element of type 'text' in the HTML document

if(this.textBox.Attributes.Contains("style") == false)

this.textBox.Attributes.Add("style");



[VB.NET]



' textBox is an INPUT element of type 'text' in the HTML document

If Me.textBox.Attributes.Contains("style") = False Then

Me.textBox.Attributes.Add("style")

End If



You can change the value of an element's attribute at run time by using the Value property of that particular attribute, as shown in the below code snippet.



[C#]



// textBox is an INPUT element of type 'text' in the HTML document

this.textBox.Attributes["style"].Value = "background-color:red";



[VB.NET]



' textBox is an INPUT element of type 'text' in the HTML document

Private Me.textBox.Attributes("style").Value = "background-color:red"



### How To Change a Characteristic Of an HTML Element Before It Is Displayed?

The characteristic of an element can be easily changed in the PreRenderDocument event of the HTMLUI control.

The PreRenderDocument event is raised when the elements in the HTML document are created in the HTMLUI control, but their size and location are not calculated yet.



[HTML]



<html>

<body bgcolor="#c4d6e9">

<h1>Syncfusion</h1>

<h4>.NET Essentials</h4>

<p>

<img id="image" src="files/oldImage.gif"/>

</p>

<p>

Essential Studio includes ten component libraries in one great package. Each of these products has a unique and useful feature set. Syncfusion aims to provide customers with the utmost satisfaction and value in using Syncfusion and Microsoft technologies through our technical consulting and training services.

</p>

</body>

</html>


The following snippet shows how an image reference is changed for a page in the HTMLUI at run time, by using the PrerenderDocument event. 



[C#]



Hashtable htmlelements = new Hashtable();



// Event Declaration.

this.htmluiControl1.PreRenderDocument += newSyncfusion.Windows.Forms.HTMLUI.PreRenderDocumentEventHandler(this.htmluiControl1_PreRenderDocument);



// Event that is to be raised when a tree of element has been created and their size and location have 

// not been calculated yet.

private void htmluiControl1_PreRenderDocument(object sender,PreRenderDocumentArgs e)

{

// Create and Return the Hash Table where key is Tag name(Element.Name) and Value is array of

// elements with Current name.

this.htmlelements = e.Document.GetElementsByNameHash();

ArrayList imgs = this.htmlelements["img"] as ArrayList;

foreach(BaseElement elem in imgs)

{

string oldValue = elem.Attributes["src"].Value;

string newValue = @"C:\MyProjects\ImageHandling\newImage.jpg";



// Replace or change the value of the attribute in the element at run time.

elem.Attributes["src"].Value = oldValue.Replace(elem.Attributes["src"].Value, newValue);

Console.WriteLine(elem.Attributes["src"].Value);

}

} 



[VB.NET]



Private htmlelements As Hashtable = New Hashtable()



' Event Declaration.

Me.htmluiControl1.PreRenderDocument += New Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentEventHandler(Me.htmluiControl1 _PreRenderDocument)



' Event that is to be raised when a tree of element has been created and their size and location have 

' not been calculated yet.

Private Sub htmluiControl1_PreRenderDocument(ByVal sender As Object, ByVal e As PreRenderDocumentArgs)



' Create and Return the Hash Table where key is Tag name(Element.Name) and Value is array of

' elements with Current name.

Me.htmlelements = e.Document.GetElementsByNameHash()

Dim imgs As ArrayList = CType(IIf(TypeOf Me.htmlelements("img") Is ArrayList, Me.htmlelements("img"), Nothing), ArrayList)

For Each elem As BaseElement In imgs

Dim oldValue As String = elem.Attributes("src").Value

Dim newValue As String =@"C:\MyProjects\ImageHandling\newImage.jpg";



' Replace or change the value of the attribute in the element at run time.

elem.Attributes("src").Value = oldValue.Replace(elem.Attributes("src").Value, newValue)

Console.WriteLine(elem.Attributes("src").Value)

Next elem

End Sub



The following figure illustrates this behavior where the oldImage has been replaced by newImage.



{{ '![](Frequently-Asked-Questions_images/Frequently-Asked-Questions_img1.jpeg)' | markdownify }}
{:.image }


### How To Change the Default Font Used For Rendering the HTML Document In the HTMLUI Control?

HTMLUI uses a default font to render the text from the HTML document, in cases where there are no specifications for the font to be used. You can change this default font by using the DefaultFormat.Font property, written while initializing the HTMLUI control.



[C#]



htmluiControl1 = new Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl();

htmluiControl1.DefaultFormat.Font = new Font("Pristina",16);



[VB.NET]



Private htmluiControl1 = New Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl()

Private htmluiControl1.DefaultFormat.Font = New Font("Pristina",16)



### How To Delete an HTML Element From a Document Loaded Into the HTMLUI Control At Run-time?

The HTML elements loaded in the HTMLUI control are collected in the IHTMLElementsCollection. You can make use of the Remove method of the IHTMLElementsCollection Interface to remove an element from the current collection, and the Refresh method to redraw the HTMLUI control with changes updated in the current document.

The following HTML document contains a textbox and a button element. The following code snippet shows how the textbox and the button are removed from the HTMLUI control's display at run time.



[HTML]



<!-- HTML document -->

<html>

<body>

<p>

<input type="text" id="txt1"></input>

</p>

<p>

<input type="button" id="btn1" value="Button1"></input>

</p>

</body>

</html>



[C#]



IHTMLElement text1;

IHTMLElement btn1;



private System.Windows.Forms.Button button1;

button1.Click += new System.EventHandler(this.button1_Click);

htmluiControl1.LoadFinished += new System.EventHandler(this.htmluiControl1_LoadFinished);



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

this.text1 = this.htmluiControl1.Document.GetElementByUserId("txt1");

this.btn1 = this.htmluiControl1.Document.GetElementByUserId("btn1");

}



private void button1_Click(object sender, System.EventArgs e)

{

this.text1.Parent.Children.Remove(this.text1); 

this.btn1.Parent.Children.Remove(this.btn1);

this.htmluiControl1.Refresh();

}



[VB.NET]



Private text1 As IHTMLElement

Private btn1 As IHTMLElement



Private button1 As System.Windows.Forms.Button

Private button1.Click += New System.EventHandler(Me.button1_Click)

Private htmluiControl1.LoadFinished += New System.EventHandler(Me.htmluiControl1_LoadFinished)



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)

Me.text1 = Me.htmluiControl1.Document.GetElementByUserId("txt1")

Me.btn1 = Me.htmluiControl1.Document.GetElementByUserId("btn1")

End Sub



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.text1.Parent.Children.Remove(Me.text1)

Me.btn1.Parent.Children.Remove(Me.btn1)

Me.htmluiControl1.Refresh()

End Sub



### How To Enable the HTMLUI Control To Load HTML Documents That Have Been Dragged Onto the Control?

In order to enable the HTMLUI control to load HTML documents that have been dragged onto the control, you have to set the AllowDrop property of the HTMLUI control to True. This property helps in supporting the drag-and-drop operation in the HTMLUI control.

During the drag-and-drop operation, the file name of the document along with the location is collected, and when the mouse button is released, the specified document is loaded from the mentioned location through the LoadHTML method of the HTMLUI control.



[C#]



//To support drag events to the control

this.htmluiControl1.AllowDrop = true;



//DragDrop and DragEnter events declaration

this.htmluiControl1.DragDrop += new System.Windows.Forms.DragEventHandler(this.htmluiControl1_DragDrop);

this.htmluiControl1.DragEnter += new System.Windows.Forms.DragEventHandler(this.htmluiControl1_DragEnter);



private void htmluiControl1_DragEnter(object sender, System.Windows.Forms.DragEventArgs e)

{

if(e.Data.GetDataPresent (DataFormats.FileDrop)) 

//Specifying the drop effect

e.Effect = DragDropEffects.All;

else 

e.Effect = DragDropEffects.None;

}



private void htmluiControl1_DragDrop(object sender, System.Windows.Forms.DragEventArgs e)

{

//Specifying the drop format and collecting the file name

string[] files = (string[])e.Data.GetData("FileDrop", false); 

foreach (string fileName in files) 

{ 

//Loading the specified file in to the HTMLUI control

this.htmluiControl1.LoadHTML(fileName);

}

}



[VB.NET]



'To support drag events to the control

Private Me.htmluiControl1.AllowDrop = True



'DragDrop and DragEnter events declaration

Private Me.htmluiControl1.DragDrop += New System.Windows.Forms.DragEventHandler(Me.htmluiControl1_DragDrop)

Private Me.htmluiControl1.DragEnter += New System.Windows.Forms.DragEventHandler(Me.htmluiControl1_DragEnter)



Private Sub htmluiControl1_DragEnter(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

If e.Data.GetDataPresent(DataFormats.FileDrop) Then

'Specifying the drop effect

e.Effect = DragDropEffects.All

Else

e.Effect = DragDropEffects.None

End If

End Sub



Private Sub htmluiControl1_DragDrop(ByVal sender As Object, ByVal e As System.Windows.Forms.DragEventArgs)

'Specifying the drop format and collecting the file name

Dim files As String() = CType(e.Data.GetData("FileDrop", False), String())

For Each fileName As String In files

'Loading the specified file in to the HTMLUI control

Me.htmluiControl1.LoadHTML(fileName)

Next fileName

End Sub



### How To Enable User Interaction With the HTML Elements

The HTMLUI control supports a rich set of interactivity with the elements displayed. The HTML elements in the HTML document are accessed with the object variables of the respective classes.

HTMLUI control gives a free hand to the user in deciding each and every factor of the element's display. Some include selecting the position of the control, attaching the attributes at run time, attaching events with the element, changing the text inside it at run time, and so on.

The following snippet shows how the elements interact with each other on the execution of their respective events.



[HTML]



<html>

<head>

<title>HTMLUI Element Interactivity</title>

</head>

<body bgcolor="#DBE2F2">

<p><input type="button" id="btn" value="HTMLButton"/></p>

<p><div id="div">HTMLUI supports a wide variety of HTML tags that can be used to display very rich HTML documents.</div></p>

</body>

</html>



[C#]



// Class that is responsible for <input> tag

INPUTElementImpl button; 



// Class that is responsible for <div> tag

DIVElementImpl div;



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{



 Hashtable html = this.htmluiControl1.Document.GetElementsByUserIdHash();

 this.button = html["btn"] as INPUTElementImpl;

 this.div = html["div"] as DIVElementImpl;

 this.button.Click += new EventHandler(button_Click);



 // Event raised when InnerHtml property changed

 this.div.InnerHTMLChanged += new ValueChangedEventHandler(div_InnerHTMLChanged);

}



private void button_Click(object sender, EventArgs e)

{



    // Gets or sets text, the inner part of the element. Inner part includes children of the current element.

this.div.InnerHTML = "HTMLUI is very easy to use with complete designer integration. The control is very powerful and rich interfaces can be created with minimal coding.";

}



private void div_InnerHTMLChanged(object sender, ValueChangedEventArgs e)

{



    // Returns the HTML text including inner and current element text; also current element is added in to 

   // the output.

this.div.Children.Parent.Parent.InnerHTML = this.div.OuterHTML + "<p/><img src='HTMLUI.gif'/>";

}



[VB.NET]



'  Class that is responsible for <input> tag

Private button As INPUTElementImpl



' Class that is responsible for <div> tag    

Private div As DIVElementImpl



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)



Dim html As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Me.button = CType(IIf(TypeOf html("btn") Is INPUTElementImpl, html("btn"), Nothing), INPUTElementImpl)

Me.div = CType(IIf(TypeOf html("div") Is DIVElementImpl, html("div"), Nothing), DIVElementImpl)

AddHandler button.Click, AddressOf button_Click



// Event raised when InnerHtml property changed

AddHandler div.InnerHTMLChanged, AddressOf div_InnerHTMLChanged

End Sub



Private Sub button_Click(ByVal sender As Object, ByVal e As EventArgs)



' Gets or sets text, the inner part of the element. Inner part includes children of the current element.

Me.div.InnerHTML = "HTMLUI is very easy to use with complete designer integration. The control is very powerful and rich interfaces can be created with " & ControlChars.CrLf & "minimal coding."

End Sub



Private Sub div_InnerHTMLChanged(ByVal sender As Object, ByVal e As ValueChangedEventArgs)



'  Returns the HTML text including inner and current element text; also current element is added in to 

'   the output

Me.div.Children.Parent.Parent.InnerHTML = Me.div.OuterHTML & "<p/><img src='HTMLUI.gif'/>"

End Sub



The button and the div elements are obtained. Events are declared for both the elements, and on clicking the button, the text inside the div element changes. When the text inside the div element is changed, an image element is appended to the div element. This shows how interactivity can be handled in HTMLUI.



{{ '![](Frequently-Asked-Questions_images/Frequently-Asked-Questions_img2.jpeg)' | markdownify }}
{:.image }


### How To Get an Object For the Control Present In an HTML Element In the HTMLUI Control?

You can make use of the GetControlByElement() method of the InputHTML Interface to get an object for the control present in an HTML element in the HTMLUI control. If the HTML element does not contain any control in it, it returns a null value, by default.



[HTML]



<html>

<body> 

<input type="text" id="txt"/>

</body> 

</html>



[C#]



//Initializing the respective control's object

private System.Windows.Forms.RadioButton htmlRadioButton;



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

//Collecting the html elements in a hashtable with their key as id

Hashtable elements = this.htmluiControl1.Document.GetElementsByUserIdHash();

BaseElement radioElem = (BaseElement)elements["radio1"];



//Getting the Control from the html element and assigning it to the required object

//The html element hereafter can be accessed with the help of the htmlRadioButton object

htmlRadioButton = (RadioButton) this.htmluiControl1.Document.GetControlByElement(radioElem);

}



[VB.NET]



'Initializing the respective control's object

Private htmlRadioButton As System.Windows.Forms.RadioButton



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)

'Collecting the html elements in a hashtable with their key as id

Dim elements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Dim radioElem As BaseElement = CType(elements("radio1"), BaseElement)



'Getting the Control from the html element and assigning it to the required object

'The html element hereafter can be accessed with the help of the htmlRadioButton object

htmlRadioButton = CType(Me.htmluiControl1.Document.GetControlByElement(radioElem), RadioButton)

End Sub



### How To Load Custom Controls As Part Of the HTML Layout?

An HTML document containing custom controls is shown below.



[HTML]



<HTML>

<HEAD>

<TITLE>HTMLUI CUSTOM CONTROLS</TITLE>

<style> 

.tttDisplay { text-decoration: none; color: #ffffff; font-family: Tahoma; font-size: 34pt; font-weight: bold; line-height: 30px; padding-left: 2px; }

</style>

</HEAD>

<BODY>



<TABLE id="CustomControls" cellSpacing="0" cellPadding="0" width="100%" bgColor="silver" border="1" height="100%" align="center">



<TR>

<TD class="tttDisplay" height="33%" width="100%" id="cctd1" vAlign="center">

<maskededittextbox id="maskedEditTextBox1" height="20" width="136">

</maskededittextbox>

</TD>

</TR>



<TR>

<TD class="tttDisplay" height="33%" width="100%" id="cctd2" vAlign="center">

<monthcalendar id="monthCalendar1" width="199" height="155"></monthcalendar>

</TD>

</TR>



<TR>

<TD class="tttDisplay" height="33%" width="100%" id="cctd3" vAlign="center">

<datagrid id="dataGrid1" width="304" height="144"></datagrid>

</TD>

</TR>



</TABLE>



</BODY>

</HTML>



The CustomControlBase implements the base functionality of the Windows forms control on the HTML tag element and loads the custom controls with its respective functionalities into the HTMLUI.



[C#]



// Event Handler Declaration. 

this.htmluiControl1.PreRenderDocument += new Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentEventHandler(this.htmluiControl1_PreRenderDocument);



// Event that is to be raised when a tree of element has been created and their size and location have 

// not been calculated yet.

private void htmluiControl1_PreRenderDocument(object sender, Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentArgs e)

{

Hashtable htmlelements = new Hashtable();



   // Returns an hash of elements by their User Id.

htmlelements = e.Document.ElementsByUserID;

BaseElement maskedEditTextBoxElement1 = htmlelements["maskedEditTextBox1"] as BaseElement;



    // Here the base functionality of the 'this.maskedEditBox1' is implemented to the'maskedEditTextBoxElement1'. 

new CustomControlBase( maskedEditTextBoxElement1, this.maskedEditBox1  ); 

BaseElement monthCalendarElement1 = htmlelements["monthCalendar1"] as BaseElement;



   // Here the base functionality of the 'this.monthCalendar1' is implemented to the 'monthCalendarElement1'.

new CustomControlBase( monthCalendarElement1, this.monthCalendar1  ); 

BaseElement dataGridElement1 = htmlelements["dataGrid1"] as BaseElement;



   // Here the base functionality of the 'this.dataGrid1' is implemented to the 'datGridElement1'.

new CustomControlBase( dataGridElement1, this.dataGrid1  ); 

}



[VB.NET]



Private Sub htmluiControl1_PreRenderDocument(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentArgs)

Dim htmlelements As Hashtable = New Hashtable()

htmlelements = e.Document.ElementsByUserID



Dim maskedEditTextBoxElement1 As BaseElement = CType(IIf(TypeOf htmlelements("maskedEditTextBox1") Is BaseElement, htmlelements("maskedEditTextBox1"), Nothing), BaseElement)

Dim oTemp1 As CustomControlBase = New CustomControlBase(maskedEditTextBoxElement1, Me.maskedEditBox1)



Dim monthCalendarElement1 As BaseElement = CType(IIf(TypeOf htmlelements("monthCalendar1") Is BaseElement, htmlelements("monthCalendar1"), Nothing), BaseElement)

Dim oTemp2 As CustomControlBase = New CustomControlBase(monthCalendarElement1, Me.monthCalendar1)



Dim dataGridElement1 As BaseElement = CType(IIf(TypeOf htmlelements("dataGrid1") Is BaseElement, htmlelements("dataGrid1"), Nothing), BaseElement)

Dim oTemp3 As CustomControlBase = New CustomControlBase(dataGridElement1, Me.dataGrid1)

End Sub



###  How To Load HTML Into the HTMLUI Control?

You can make use of the GetControlByElement() method of the InputHTML Interface to get an object for the control present in an HTML element in the HTMLUI control. If the HTML element does not contain any control in it, it returns a null value, by default.



[HTML]



<html>

<body> 

<input type="text" id="txt"/>

</body> 

</html>



[C#]



//Initializing the respective control's object

private System.Windows.Forms.RadioButton htmlRadioButton;



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

//Collecting the html elements in a hashtable with their key as id

Hashtable elements = this.htmluiControl1.Document.GetElementsByUserIdHash();

BaseElement radioElem = (BaseElement)elements["radio1"];



//Getting the Control from the html element and assigning it to the required object

//The html element hereafter can be accessed with the help of the htmlRadioButton object

htmlRadioButton = (RadioButton) this.htmluiControl1.Document.GetControlByElement(radioElem);

}



[VB.NET]



'Initializing the respective control's object

Private htmlRadioButton As System.Windows.Forms.RadioButton



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)

'Collecting the html elements in a hashtable with their key as id

Dim elements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Dim radioElem As BaseElement = CType(elements("radio1"), BaseElement)



'Getting the Control from the html element and assigning it to the required object

'The html element hereafter can be accessed with the help of the htmlRadioButton object

htmlRadioButton = CType(Me.htmluiControl1.Document.GetControlByElement(radioElem), RadioButton)

End Sub



#### Loading As Startup Document

An HTML document can be loaded at startup by two ways: 

* Using the Properties window
* By coding



Using the Properties window, involves specifying the location of the startup HTML file by using the StartupDocument property of the HTMLUI control. The link shown at the bottom of the Properties window can also be used for the same purpose.

{{ '![](Frequently-Asked-Questions_images/Frequently-Asked-Questions_img3.jpeg)' | markdownify }}
{:.image }




While using code for the Startup Document, it should be written in the Form_Load event that occurs before the form is displayed for the first time.  



[C#]



// Get or Set the path to the Startup Document for the control.

private void Form1_Load(object sender, System.EventArgs e)

{

this.htmluiControl1.StartupDocument = @"C:\MyProjects\Startup\startup_page.htm";

}



[VB.NET]



‘Get or Set the path to the Startup Document for the control.

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.htmluiControl1.StartupDocument = "C:\MyProjects\Startup\startup_page.htm"

End Sub



#### Loading At Run Time

HTML documents can also be loaded at run time. For example, in a file link where an HTML file may link to another file. In that case, a new file is loaded in the control after the one that was initially loaded.

The various ways of loading the document at run time from various resources are:

To load the file from disk into the HTMLUI, the following code snippet can be used.



[C#]



// Load the specified HTML document from Disk at runtime.

string filepath = @"C:\MyProjects\LoadHTML\FromDisk.htm";

this.htmluiControl1.LoadHTML(filePath);



[VB.NET]



' Load the specified HTML document from Disk at runtime.

Private filepath As String = "C:\MyProjects\LoadHTML\FromDisk.htm"

Me.HtmluiControl1.LoadHTML(filepath)



The above snippet can also be used to load HTML documents which are linked to the specified HTML documents, as links are easily invoked in HTMLUI.

To load a file from the URI, the following code snippet can be used.



[C#]



using System.Net;



Uri uri = new Uri( "http://www.syncfusion.com");

htmluiControl1.LoadHTML( uri );



[VB.NET]



Imports System.Net



Private uri As Uri = New Uri("http://www.syncfusion.com")

HtmluiControl1.LoadHTML(uri)



Loading HTML in the form of a string can be done as shown below.



[C#]



string htmlCode ="<HTML><HEAD><TITLE>HI</TITLE></HEAD>

<BODY bgcolor='#ffffff'><INPUT type='button' id='btn'/></INPUT></BODY></HTML>";

this.htmluiControl1.LoadFromString(htmlCode);



[VB.NET]



Private htmlCode As String = "<HTML><HEAD><TITLE>HI</TITLE></HEAD>"

<BODY bgcolor="#ffffff'><INPUT type='button' id='btn'/></INPUT></BODY></HTML>"

Me.HtmluiControl1.LoadFromString(htmlCode)



To load a HTML file as an embedded resource:

1. Add an HTML file as an Embedded Resource to the application.
2. Set its BuildAction as Embedded Resource.
3. Include the following code snippet.



[C#]



Stream htmlStream = (Stream)Assembly.GetExecutingAssembly().GetManifestResourceStream

("LoadingFileFromResource.resfile.htm");

this.htmluiControl1.LoadHTML(htmlStream);



[VB.NET]



Private htmlStream As Stream = CType(System.Reflection.Assembly.GetExecutingAssembly().GetManifestResourceStream("LoadingFileFromResource.resfile.htm"), Stream)

Me.HtmluiControl1.LoadHTML(htmlStream)



> {{ '![](Frequently-Asked-Questions_images/Frequently-Asked-Questions_img4.jpeg)' | markdownify }}
{:.image }
_Note: The string entered inside the GetManifestResourceStream method is in reference to the Default namespace found in the Properties window of the C# file in the Solution Explorer. This may vary for the users._

### How To Print the Contents Of the HTMLUI Control?

The document available in the HTMLUI control can be printed with the help of the HTMLUIPrintDocument class. The Print method of this class is used to start the document printing process.



[C#]



//represents printing support in the HTMLUI control

HTMLUIPrintDocument pd;

pd = new HTMLUIPrintDocument(this.htmluiControl1.Document);



// starts the printing process 

pd.Print();



[VB.NET]



'  represents printing support in the HTMLUI control

Private pd As HTMLUIPrintDocument

Private pd = New HTMLUIPrintDocument(Me.HtmluiControl1.Document)



'  Starts the printing process

pd.Print()



### How To Specify a CSS File For HTML Content?

Style sheets contain the styles to be applied for the elements in the HTML document. HTMLUI supports the use of styles in three modes:



* Inline style sheet (inside an HTML element)
* Internal style sheet (inside the tag) 
* External style sheet (as a separate file)



The HTMLUI control supports formatting the HTML document with style sheets at run time. The LoadCSS method of the HTMLUI control loads the styles from the specified CSS and refreshes the current document on the HTMLUI control with the applied styles.



[C#]



// Loads styles from the specified CSS document from a System.IO.Stream and refresh the current

// document using the styles

this.htmluiControl1.LoadCSS(@"C:\MyProjects\LoadCSS\style.css");



[VB.NET]



'  Loads styles from the specified CSS document from a System.IO.Stream and refresh the current

' document using the styles 

Me.HtmluiControl1.LoadCSS("C:\MyProjects\LoadCSS\style.css")



### How To Toggle the Visibility Of an HTML Element In the HTMLUI control At Run-time?

Each HTML element in the HTMLUI has an xVisible attribute by default that helps the user to toggle the visibility of a particular element. Since the xVisible is a bool property, the value to be set is either True or False, as string.

The following code snippet shows how the visibility of an element is toggled on the execution of an event.



[HTML]



<html>

<body>

<table>

<tr>

<td id="tdpopup">Cell Toggle</td>

<td id="tdpopup">Cell Toggle</td>

</tr>

<tr>

<td colspan="2">

<img src="sync.gif" id="img"/>

</td>

</tr>

</table>

</body>

</html>



[C#]



IHTMLElement image = Global.Document.GetElementByUserId("img");

image.Click += new EventHandler(image_Click);

IHTMLElement[] elem = this.htmluiControl1.Document.GetElementsByName("td");



public void image_Click(object sender, EventArgs e)

{

string visibleString = "";

htmluiControl1.BeginUpdate();

if(this.bDescriptionHidden == false)

visibleString = "false";

else

visibleString = "true";

this.bDescriptionHidden = !this.bDescriptionHidden;

foreach (IHTMLElement description in elem)

{

if(description.ID == "tdpopup")

description.Attributes["xVisible"].Value = visibleString;

}

htmluiControl1.EndUpdate();

this.htmluiControl1.Refresh();

}



[VB.NET]



Private image As IHTMLElement = Global.Document.GetElementByUserId("img")

Private image.Click += New EventHandler(image_Click)

Private elem As IHTMLElement() = Me.htmluiControl1.Document.GetElementsByName("td")



Public Sub image_Click(ByVal sender As Object, ByVal e As EventArgs)

Dim visibleString As String = ""

htmluiControl1.BeginUpdate()

If Me.bDescriptionHidden = False Then

visibleString = "false"

Else

visibleString = "true"

End If

Me.bDescriptionHidden = Not Me.bDescriptionHidden

For Each description As IHTMLElement In elem

If description.ID = "tdpopup" Then

description.Attributes("xVisible").Value = visibleString

End If

Next description

htmluiControl1.EndUpdate()

Me.htmluiControl1.Refresh()

End Sub



