---
layout: post
title: Action
description: action
platform: WindowsForms
control: PDF
documentation: ug
---

# Action

Essential PDF supports different actions triggered by different events and user interactions. There are lots of possible actions such as playing a particular sound or movie, launching an application or URI, and so on.

Essential PDF supports the following types of actions.

* PdfSoundAction that plays the specified music file
* PdfJavaScriptAction thatexecutes specified PDF JavaScript code
* PdfUriAction that launches the specified URI
* PdfGoToAction that goes to the specified page of the document
* PdfLaunchAction that launches the application or opens the document
* PdfNamedAction that goes to the named destination: next, previous, first or last page
* PdfSubmitAction that submits the data that is entered into the PDF form
* PdfResetAction that resets the fields of the PDF form

1.   Following are the actions for Document Object:

* AfterOpen action to be performed after the document is opened
* AfterPrint action to be performed after the document is printed
* AfterSave action to be performed after the document is saved
* BeforeClose action to be performed before the document is closed
* BeforePrint action to be performed before the document is printed
* BeforeSave action to be performed before the document is saved

 2.   Following are the actions for Annotation Object:

* GotFocus action to be performed when the annotation gets focus
* LostFocus action to be performed when the annotation loses focus
* MouseEnter action to be performed when the cursor enters the active area of the annotation
* MouseLeave action to be performed when the cursor leaves the active area of the annotation
* MouseDown action to be performed when the mouse button is pressed inside the active area of the annotation
* MouseUp action to be performed when the mouse button is released inside the active area of the annotation

3.   Following are the actions for Form Field Object:

* Calculate JavaScript action to be performed to recalculate the value of the field
* Format JavaScript action to be performed before the field is formatted to display the value
* Validate JavaScript action to be performed when the value of the field is changed
* KeyPressed JavaScript action to be performed when the user types, key-stroke into a text field or combo box, or modifies the selection in a scrollable list box
## Sound Action


Sound action plays a specified music file in the PDF document. Volume and repeat can be specified for the sound action.



{%highlight c#%}



//Creates a new document with PDF/A standard.

PdfDocument document = new PdfDocument();

//Adds a page.

PdfPage page = document.Pages.Add();

//Creates PDF graphics for the page.

PdfGraphics g = page.Graphics;

//Creates a solid brush.

PdfBrush brush = new PdfSolidBrush(Color.Black);

float fontSize = 20f;

Font f = new Font("Arial", fontSize, FontStyle.Regular);

//Sets the font.

PdfFont font = new PdfTrueTypeFont(f,FontStyle.Regular,12, false, true);

//Draws the text.

g.DrawString("Play the specified music file, when PDF document is opened", font, brush, new PointF(20, 20));

//Sets the Sound action.

PdfSoundAction soundAction = new PdfSoundAction("Startup.wav");

document.Actions.AfterOpen = soundAction;

//Saves and close the PDF document.

document.Save("Output.pdf");

document.Close();

{%endhighlight%}


{%highlight vbnet%}
'Creates a new document with PDF/A standard.

Dim document As New PdfDocument()

'Adds a page.

Dim page As PdfPage = document.Pages.Add()

'Creates PDF graphics for the page.

Dim g As PdfGraphics = page.Graphics

'Creates a solid brush.

Dim brush As PdfBrush = New PdfSolidBrush(Color.Black)

Dim fontSize As Single = 20.0F

Dim f As New Font("Arial", fontSize, FontStyle.Regular)

'Sets the font.

Dim font As PdfFont = New PdfTrueTypeFont(f, FontStyle.Regular, 12, False, True)

'Draws the text.

g.DrawString("Play the specified music file, when PDF document is opened", font, brush, New PointF(20, 20))

'Sets the Sound action.

Dim soundAction As New PdfSoundAction("Startup.wav")

document.Actions.AfterOpen = soundAction

'Saves and closes the PDF document.

document.Save("Output.pdf")


{%endhighlight%}

## JavaScript Action

A JavaScript action allows execution of JavaScript code embedded in the PDF document.



{%highlight c#%}



//Creates a new document with PDF/A standard.

PdfDocument document = new PdfDocument();

//Adds a page.

PdfPage page = document.Pages.Add();

//Creates PDF graphics for the page.

PdfGraphics g = page.Graphics;

//Creates a solid brush.

PdfBrush brush = new PdfSolidBrush(Color.Black);

float fontSize = 20f;

Font f = new Font("Arial", fontSize, FontStyle.Regular);

//Sets the font.

PdfFont font = new PdfTrueTypeFont(f,FontStyle.Regular,12, false, true);

//Draws the text.

g.DrawString("Alert box will pop up, when PDF document is opened", font, brush, new PointF(20, 20));

//Sets the JavaScript action.

PdfJavaScriptAction javaScriptAction = new PdfJavaScriptAction("app.alert(\"Hello World!!!\")");

document.Actions.AfterOpen = javaScriptAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}



'Creates a new document with PDF/A standard.

Dim document As New PdfDocument()

'Adds a page.

Dim page As PdfPage = document.Pages.Add()

'Creates PDF graphics for the page.

Dim g As PdfGraphics = page.Graphics

'Creates a solid brush.

Dim brush As PdfBrush = New PdfSolidBrush(Color.Black)

Dim fontSize As Single = 20.0F

Dim f As New Font("Arial", fontSize, FontStyle.Regular)

'Sets the font.

Dim font As PdfFont = New PdfTrueTypeFont(f, FontStyle.Regular, 12, False, True)

'Draws the text.

g.DrawString("Alert box will pop up, when PDF document is opened", font, brush, New PointF(20, 20))

'Sets the JavaScript action.

Dim javaScriptAction As New PdfJavaScriptAction("app.alert(""Hello World!!!"")")

document.Actions.AfterOpen = javaScriptAction

'Saves and closes the PDF document.

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

## URI Action 

URI action allows you displaying a hypertext link in a web browser. Next property of an action is used to specify the queue of actions.



{%highlight c#%}



//Creates a new document with PDF/A standard.

PdfDocument document = new PdfDocument();

//Adds a page.

PdfPage page = document.Pages.Add();

//Creates PDF graphics for the page.

PdfGraphics g = page.Graphics;

//Creates a solid brush.

PdfBrush brush = new PdfSolidBrush(Color.Black);

 float fontSize = 20f;

Font f = new Font("Arial", fontSize, FontStyle.Regular);

//Sets the font.

PdfFont font = new PdfTrueTypeFont(f,FontStyle.Regular,12, false, true);

//Draws the text.

g.DrawString("Alert box will pop up, when PDF document is opened", font, brush, new PointF(20, 20));

//Sets URI action.

PdfUriAction uriAction = new PdfUriAction("http://www.syncfusion.com");

//Sets JavaScript action.

PdfJavaScriptAction javaScriptAction = new PdfJavaScriptAction("app.alert(\"The webpage has been opened\")");

//Sets action queue.

uriAction.Next = javaScriptAction;

document.Actions.AfterOpen = uriAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}



'Creates a new document with PDF/A standard.

Dim document As New PdfDocument()

'Adds a page.

Dim page As PdfPage = document.Pages.Add()

'Creates PDF graphics for the page.

Dim g As PdfGraphics = page.Graphics

'Creates a solid brush.

Dim brush As PdfBrush = New PdfSolidBrush(Color.Black)

Dim fontSize As Single = 20.0F

Dim f As New Font("Arial", fontSize, FontStyle.Regular)

'Sets the font.

Dim font As PdfFont = New PdfTrueTypeFont(f, FontStyle.Regular, 12, False, True)

'Draws the text.

g.DrawString("Alert box will pop up, when PDF document is opened", font, brush, New PointF(20, 20))

'Sets URI action

Dim uriAction As New PdfUriAction("http://www.syncfusion.com")

'Sets JavaScript action.

Dim javaScriptAction As New PdfJavaScriptAction("app.alert(""The webpage has been opened"")")

'Sets action queue.

uriAction.[Next] = javaScriptAction

document.Actions.AfterOpen = uriAction

'Saves and closes the PDF document.

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

## GoTo Action 

GoTo action displays the specified page in the current document. The location can be specified for the destination page. 



{%highlight c#%}



//Creates a new document.

PdfDocument document = new PdfDocument();

//Adds a page.

PdfPage page = document.Pages.Add();

//Creates PDF graphics for the page.

PdfGraphics graphics = page.Graphics;

//Creates a solid brush.

PdfBrush brush = new PdfSolidBrush(Color.Black);

Font f = new Font("Arial", fontSize, FontStyle.Regular);

//Sets the font.

PdfFont font = new PdfTrueTypeFont(f,FontStyle.Regular,12, false, true);

//Draws the text.

graphics.DrawString("Page 1", font, brush, new PointF(20, 20));

//Adds second page.

PdfPage page1 = document.Pages.Add();

page1.Graphics.DrawString("Page 2", font, brush, new PointF(0, 100));

//Sets the Javascript action.

PdfGoToAction javaScriptAction = new PdfGoToAction(page1) ;

//Sets destination location.

javaScriptAction.Destination = new PdfDestination(page1, new PointF(0,100));

document.Actions.AfterOpen = javaScriptAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();



{%endhighlight%}

{%highlight vbnet%}

'Creates a new document with PDF/A standard.

Dim document As New PdfDocument()

'Adds a page.

Dim page As PdfPage = document.Pages.Add()

'Creates PDF graphics for the page.

Dim graphics As PdfGraphics = page.Graphics

'Creates a solid brush.

Dim brush As PdfBrush = New PdfSolidBrush(Color.Black)

Dim fontSize As Single = 20.0F

Dim f As New Font("Arial", fontSize, FontStyle.Regular)

'Sets the font.

Dim font As PdfFont = New PdfTrueTypeFont(f, FontStyle.Regular, 12, False, True)

'Draws the text.

graphics.DrawString("Page 1", font, brush, New PointF(20, 20))

'Adds second page.

Dim page1 As PdfPage = document.Pages.Add()

page1.Graphics.DrawString("Page 2", font, brush, New PointF(0, 100))

'Sets the JavaScript action.

Dim javaScriptAction As New PdfGoToAction(page1)

'Sets destination location.

javaScriptAction.Destination = New PdfDestination(page1, New PointF(0, 100))

document.Actions.AfterOpen = javaScriptAction

'Saves and closes the PDF document.

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

## Launch Action 

Launch action allows execution of an external application or file.



{%highlight c#%}



//Creates a new document with PDF/A standard.

PdfDocument document = new PdfDocument();

//Adds a page.

PdfPage page = document.Pages.Add();

//Creates PDF graphics for the page.

PdfGraphics graphics = page.Graphics;

//Creates a solid brush.

PdfBrush brush = new PdfSolidBrush(Color.Black);

float fontSize = 20f;

Font f = new Font("Arial", fontSize, FontStyle.Regular);

//Sets the font.

PdfFont font = new PdfTrueTypeFont(f,FontStyle.Regular,12, false, true);

//Draws the text.

graphics.DrawString("External application document will open, when PDF document is opened", font, brush, new PointF(20, 20));

//Creates launch action to start the application.

PdfLaunchAction launchAction = new PdfLaunchAction("Essential PDF.rtf");

document.Actions.AfterOpen = launchAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}


{%highlight vbnet%}



'Creates a new document with PDF/A standard.

Dim document As New PdfDocument()

'Adds a page.

Dim page As PdfPage = document.Pages.Add()

'Creates PDF graphics for the page.

Dim graphics As PdfGraphics = page.Graphics

'Creates a solid brush.

Dim brush As PdfBrush = New PdfSolidBrush(Color.Black)

Dim fontSize As Single = 20.0F

Dim f As New Font("Arial", fontSize, FontStyle.Regular)

'Sets the font.

Dim font As PdfFont = New PdfTrueTypeFont(f, FontStyle.Regular, 12, False, True)

'Draws the text.

graphics.DrawString("External application document will open, when PDF document is opened", font, brush, New PointF(20, 20))

'Creates a launch action to start the application.

Dim launchAction As New PdfLaunchAction("Essential PDF.rtf")

document.Actions.AfterOpen = launchAction

'Saves and closes the PDF document.

document.Save("Output.pdf")

document.Close()



{%endhighlight%}

## Named Action

Named action allows execution of predefined PDF actions. The following predefined PDF actions are available: go to next page, go to prev page, go to first page, and go to last page. 



{%highlight c#%}



//Creates a new document with PDF/A standard.

PdfDocument document = new PdfDocument();

//Creates a solid brush.

PdfBrush brush = new PdfSolidBrush(Color.Black);

float fontSize = 20f;

Font f = new Font("Arial", fontSize, FontStyle.Regular);

//Sets the font.

PdfFont font = new PdfTrueTypeFont(f, FontStyle.Regular, 12, false, true);

for (int i = 0; i < 10; i++)

{

 //Adds a page.

PdfPage page = document.Pages.Add();

//Creates PDF graphics for the page.

PdfGraphics graphics = page.Graphics;

//Draws the text.

graphics.DrawString("Page No : " + (i + 1).ToString(), font, brush, new PointF(20, 20));

}

//Creates launch action to start the application.

PdfNamedAction namedAction = new PdfNamedAction(PdfActionDestination.LastPage);

document.Actions.AfterOpen = namedAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}



'Creates a new document with PDF/A standard.

Dim document As New PdfDocument()

'Creates a solid brush.

Dim brush As PdfBrush = New PdfSolidBrush(Color.Black)

Dim fontSize As Single = 20.0F

Dim f As New Font("Arial", fontSize, FontStyle.Regular)

'Sets the font.

Dim font As PdfFont = New PdfTrueTypeFont(f, FontStyle.Regular, 12, False, True)

For i As Integer = 0 To 9

'Adds a page.

Dim page As PdfPage = document.Pages.Add()

'Creates PDF graphics for the page.

Dim graphics As PdfGraphics = page.Graphics

'Draws the text.

graphics.DrawString("Page No : " + (i + 1).ToString(), font, brush, New PointF(20, 20))

Next

'Creates launch action to start the application.

Dim namedAction As New PdfNamedAction(PdfActionDestination.LastPage)

document.Actions.AfterOpen = namedAction

'Saves and closes the PDF document.

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

## Submit Action

Submit action allows submission of data that is entered into the PDF form.


{%highlight c#%}



//Creates a PDF document.

PdfDocument document = new PdfDocument();

//Adds a new page.

PdfPage page = document.Pages.Add();

Font f = new Font("Arial", 12);

PdfTrueTypeFont font = new PdfTrueTypeFont(f);

page.Graphics.DrawString("First Name", font, PdfBrushes.Red, new PointF(0, 0));

//Creates a Text box field.

PdfTextBoxField textBoxField = new PdfTextBoxField(page, "FirstName");

//Sets properties to the textbox.

textBoxField.BorderColor = new PdfColor(Color.Gray);

textBoxField.BorderStyle = PdfBorderStyle.Beveled;

textBoxField.Bounds = new RectangleF(80, 0, 100, 20);

textBoxField.ToolTip = "First Name";

//Adds the form field to the document.

document.Form.Fields.Add(textBoxField);

//Creates a Button field.

PdfButtonField submitButton = new PdfButtonField(page, "Submit data");

submitButton.Bounds = new RectangleF(100, 60, 50, 20);

submitButton.ToolTip = "Submit";

document.Form.Fields.Add(submitButton);

//Adds a new page.

page = document.Pages.Add();

//Creates instance of submit action, which submits the data of the form fields to the mentioned URL.

PdfSubmitAction submitAction = new PdfSubmitAction("http://www.syncfusion.com/Submit.aspx");

submitAction.DataFormat = SubmitDataFormat.Html;

submitButton.Actions.GotFocus = submitAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}



'Creates a PDF document.

Dim document As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = document.Pages.Add()

Dim f As New Font("Arial", 12)

Dim font As New PdfTrueTypeFont(f)

page.Graphics.DrawString("First Name", font, PdfBrushes.Red, New PointF(0, 0))

'Creates a Text box field.

Dim textBoxField As New PdfTextBoxField(page, "FirstName")

'Sets properties to the textbox.

textBoxField.BorderColor = New PdfColor(Color.Gray)

textBoxField.BorderStyle = PdfBorderStyle.Beveled

textBoxField.Bounds = New RectangleF(80, 0, 100, 20)

textBoxField.ToolTip = "First Name"

'Adds the form field to the document.

 document.Form.Fields.Add(textBoxField)

'Creates a Button field.

Dim submitButton As New PdfButtonField(page, "Submit data")

submitButton.Bounds = New RectangleF(100, 60, 50, 20)

submitButton.ToolTip = "Submit"

document.Form.Fields.Add(submitButton)

'Adds a new page.

page = document.Pages.Add()

'Creates instance of submit action, which submits the data of the form fields to the mentioned URL.

Dim submitAction As New PdfSubmitAction("http://www.syncfusion.com/Submit.aspx")

submitAction.DataFormat = SubmitDataFormat.Html

submitButton.Actions.GotFocus = submitAction

'Saves and closes the PDF document

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

## Reset Action 

Reset action allows resetting of all form fields in the PDF document.



{%highlight c#%}



//Creates a PDF document.

PdfDocument document = new PdfDocument();

//Adds a new page.

PdfPage page = document.Pages.Add();

Font f = new Font("Arial", 12);

PdfTrueTypeFont font = new PdfTrueTypeFont(f);

page.Graphics.DrawString("First Name", font, PdfBrushes.Red, new PointF(0, 0));

//Creates a Text box field.

PdfTextBoxField textBoxField = new PdfTextBoxField(page, "FirstName");

//Sets properties to the textbox.

textBoxField.BorderColor = new PdfColor(Color.Gray);

textBoxField.BorderStyle = PdfBorderStyle.Beveled;

textBoxField.Bounds = new RectangleF(80, 0, 100, 20);

textBoxField.ToolTip = "First Name";

//Adds form field to the document.

document.Form.Fields.Add(textBoxField);

//Creates a Button field.

PdfButtonField submitButton = new PdfButtonField(page, "Clear");

submitButton.Bounds = new RectangleF(100, 60, 50, 20);

submitButton.ToolTip = "Clear";

document.Form.Fields.Add(submitButton);

//Adds a new page.

page = document.Pages.Add();

//Creates an instance of reset action.

PdfResetAction resetAction = new PdfResetAction();

submitButton.Actions.GotFocus = resetAction;

//Saves and closes the PDF document.

document.Save("Output.pdf");

document.Close();


{%endhighlight%}

{%highlight vbnet%}



'Creates a PDF document.

Dim document As New PdfDocument()

'Adds a new page.

Dim page As PdfPage = document.Pages.Add()

Dim f As New Font("Arial", 12)

Dim font As New PdfTrueTypeFont(f)

page.Graphics.DrawString("First Name", font, PdfBrushes.Red, New PointF(0, 0))

'Creates a Text box field.

Dim textBoxField As New PdfTextBoxField(page, "FirstName")

'Sets properties to the textbox.

textBoxField.BorderColor = New PdfColor(Color.Gray)

textBoxField.BorderStyle = PdfBorderStyle.Beveled

textBoxField.Bounds = New RectangleF(80, 0, 100, 20)

textBoxField.ToolTip = "First Name"

'Adds form field to the document.

document.Form.Fields.Add(textBoxField)

'Creates a Button field.

Dim submitButton As New PdfButtonField(page, "Submit data")

submitButton.Bounds = New RectangleF(100, 60, 50, 20)

submitButton.ToolTip = "Submit"

document.Form.Fields.Add(submitButton)

'Adds a new page.

page = document.Pages.Add()

'Creates an instance of submit action. It submits data of the form fields to the mentioned URL.

Dim submitAction As New PdfSubmitAction("http://www.syncfusion.com/Submit.aspx")

submitAction.DataFormat = SubmitDataFormat.Html

submitButton.Actions.GotFocus = submitAction

'Saves and closes the PDF document.

document.Save("Output.pdf")

document.Close()


{%endhighlight%}

