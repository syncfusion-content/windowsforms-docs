---
layout: post
title: Intellisense 
description: This section explains about the intellisense functionalities in EditControl
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Intellisense

EditControl provides Intellisense pop-up capabilities to add content easily, as like in Microsoft Visual Studio Code Editor. Intellisense pop-up that displays a list of code completion options to speed up the process of coding applications by reducing typos and other common mistakes.

## Configure intellisense popup

In EditControl, `ContextChoice` support allows you to create pop-ups for displaying a list of options that are used to complete what the user is typing. When the . (period) character is typed after a class instance, a pop-up containing all the members of the class gets displayed. 

You can also autocomplete the word by using the UP/DOWN ARROW keys to choose the Context Choice item and pressing the <kbd>Tab</kbd> key. The ContextChoice pop-up can be dismissed by pressing the <kbd>ESC</kbd> key.

![](Intellisense-images/Intellisense_img1.png)

The ContextChoice displaying characters are specified in the configuration file by using the `DropContextChoiceList` field in the lexem for the corresponding character. If you wish to display the ContextChoice dropdown in response to the period (".") or comma (",") being typed, use the following XML code.

{% highlight xaml %}

<lexem BeginBlock="." Type="Operator" DropContextChoiceList="true"/>

<lexem BeginBlock="," Type="Operator" DropContextChoiceList="true"/>

{% endhighlight %}

The preceding code has to be placed within the <lexems> section of the configuration file.

`AutoCompleteSingleLexem` property indicates whether the ContextChoice list gets auto completed when a single lexem remains in the list.

{% tabs %}

{% highlight C# %}

this.editControl1.AutoCompleteSingleLexem = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.AutoCompleteSingleLexem = True

{% endhighlight %}

{% endtabs %}

### Populate intellisense popup

ContextChoice list is populated by handling the `ContextChoiceOpen` event of the EditControl, and adding items to the Items collection associated with the `IContextChoiceController` object.

<table>
<tr>
<th>
Event</th><th>
Description</th></tr>
<tr>
<td>
ContextChoiceOpen</td><td>
This event occurs when the ContextChoice window has been opened</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceOpen(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController controller)
{

// Add items to the Items collection associated with the IContextChoiceController object.

controller.Items.Add("Activate", "Activate the form and give it focus", this.editControl1.ContextChoiceController.Images["Image0"]);
controller.Items.Add("ActiveControl", "Gets or sets the Active Control", this.editControl1.ContextChoiceController.Images["Image1"]);
controller.Items.Add("ActiveMDIChild", "Activates the MDIChild of form", this.editControl1.ContextChoiceController.Images["Image2"]);
controller.Items.Add("AutoScroll", "Gets or sets the value indicating Autoscroll", this.editControl1.ContextChoiceController.Images["Image3"]);
controller.Items.Add("bar1", "Gets or sets the button on the form that is clicked when the user presses the ENTER key", this.editControl1.ContextChoiceController.Images["Image4"]);controller.Items.Add("Focus", "Specifies the back color of the form.", this.editControl1.ContextChoiceController.Images["Image5"]);
                           
}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceOpen(ByVal controller As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController) Handles EditControl1.ContextChoiceOpen

' Add items to the Items collection associated with the IContextChoiceController object.

controller.Items.Add("Activate", "Activate the form and give it focus", this.editControl1.ContextChoiceController.Images["Image0"]);
controller.Items.Add("ActiveControl", "Gets or sets the Active Control", this.editControl1.ContextChoiceController.Images["Image1"]);
controller.Items.Add("ActiveMDIChild", "Activates the MDIChild of form", this.editControl1.ContextChoiceController.Images["Image2"]);
controller.Items.Add("AutoScroll", "Gets or sets the value indicating Autoscroll", this.editControl1.ContextChoiceController.Images["Image3"]);
controller.Items.Add("bar1", "Gets or sets the button on the form that is clicked when the user presses the ENTER key", this.editControl1.ContextChoiceController.Images["Image4"]);controller.Items.Add("Focus", "Specifies the back color of the form.", this.editControl1.ContextChoiceController.Images["Image5"]);
                           
End Sub

{% endhighlight %}

{% endtabs %}

**Adding custom images to list items**

Custom images can also be added to the ContextChoice list items by indexing them into the Images collection of the `IContextChoiceController` object associated with the EditControl. The Images collection of the IContextChoiceController can be populated by using the code given below.

{% tabs %}

{% highlight C# %}

int index = 0;

foreach (Image img in this.imageList1.Images)
{

// Populating images using an external ImageList.

this.editControl1.ContextChoiceController.AddImage("Image" + index.ToString(), img);

index++;

}     

{% endhighlight %}


{% highlight VB %}

Dim index As Integer = 0

Dim img As Image

For Each img In  Me.imageList1.Images

' Populating images using an external ImageList.

Me.editControl1.ContextChoiceController.AddImage("Image" + index.ToString(), img)

index += 1

Next img

{% endhighlight %}

{% endtabs %}

**List item tooltip**

ToolTip text is specified for each Context Choice list item while adding the items to the `IContextChoiceController`, as shown in the following code snippet.

{% tabs %}

{% highlight C# %}

// Specify tooltip text for each Context Choice list item.

controller.Items.Add("LoadFile", "Use this method to open a file in EditControl.", this.editControl1.ContextChoiceController.Images["Image3"]);

{% endhighlight %}


{% highlight VB %}

' Specify tooltip text for each Context Choice list item.

controller.Items.Add("LoadFile", "Use this method to open a file in EditControl.", Me.editControl1.ContextChoiceController.Images["Image3"])

{% endhighlight %}

{% endtabs %}

**ContextChoice operations**

EditControl provides the following set of events for performing Context Choice operations:

    * ContextChoiceBeforeOpen
    * ContextChoiceClose
    * ContextChoiceItemSelected
    * ContextChoiceSelectedTextInsert

<table>
<tr>
<th>
Event</th><th>
Description</th></tr>
<tr>
<td>
ContextChoiceBeforeOpen</td><td>
Occurs when the Context Choice window is about to open</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceBeforeOpen(object sender, System.ComponentModel.CancelEventArgs e)
{                        

// Display Context Choice popup if the lexem used to invoke ContextChoice is "this" or "me" only

int ind = GetContextChoiceCharIndex(lexemLine);

ILexem lex = lexemLine.LineLexems[ind-1] as ILexem;

if ((lex.Text == "this") || (lex.Text == "me"))

e.Cancel = false;

else

// Cancels the display of the ContextChoice list.

e.Cancel = true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceBeforeOpen(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles EditControl1.ContextChoiceBeforeOpen

' Display Context Choice popup if the lexem used to invoke the ContextChoice is "this" or "me" only

Dim ind As Integer = GetContextChoiceCharIndex(lexemLine)

 Dim lex As ILexem = lexemLine.LineLexems(ind - 1)

If lex.Text = "this" OrElse lex.Text = "me" Then

e.Cancel = False

Else

' Cancel the display of the ContextChoice list.

e.Cancel = True

End If

End Sub

{% endhighlight %}

{% endtabs %}

<table>
<tr>
<th>
Event</th><th>
Description</th></tr>
<tr>
<td>
ContextChoiceClose</td><td>
Occurs when the ContextChoice window has been closed</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceClose(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController controller, System.Windows.Forms.DialogResult result)
{
    // Clear the ContextChoice items. 
    this.editControl1.ContextChoiceController.Items.Clear();
}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceClose(ByVal controller As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController, ByVal result As System.Windows.Forms.DialogResult) Handles EditControl1.ContextChoiceClose

    ' Clear the ContextChoice items.
    Me.editControl1.ContextChoiceController.Items.Clear()

End Sub

{% endhighlight %}

{% endtabs %}

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
ContextChoiceItemSelected</td><td>
Occurs when a ContextChoice list item is selected</td></tr>
<tr>
<td>
ContextChoiceSelectedTextInsert</td><td>
Occurs when the editor is about to insert selected ContextChoice item to the text. Action can be canceled</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceItemSelected(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController sender, Syncfusion.Windows.Forms.Edit.ContextChoiceItemSelectedEventArgs e)
{
   // Gets the selected item.

   IContextChoiceController controller = sender as IContextChoiceController;

    string selectedItemText = e.SelectedItem.Text;
}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceItemSelected(ByVal sender As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController, ByVal e As Syncfusion.Windows.Forms.Edit.ContextChoiceItemSelectedEventArgs) Handles EditControl1.ContextChoiceItemSelected

   ' Gets the selected item.

   Dim controller As IContextChoiceController = sender

   Dim selectedItemText As String = e.SelectedItem.Text

End Sub

{% endhighlight %}

{% endtabs %}

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceSelectedTextInsert(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController sender, Syncfusion.Windows.Forms.Edit.ContextChoiceTextInsertEventArgs e)
{
     IContextChoiceController controller = sender as IContextChoiceController;

     // Gets the displayed text.
     string displayText = e.DisplayText;

     // Gets the text to be inserted.
     string insertText = e.InsertText;

     // Gets the item selected.
     string selectedItemText = e.SelectedItem.Text;
}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceSelectedTextInsert(ByVal sender As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController, ByVal e As Syncfusion.Windows.Forms.Edit.ContextChoiceTextInsertEventArgs) Handles EditControl1.ContextChoiceSelectedTextInsert

      Dim controller As IContextChoiceController = sender

      ' Gets the displayed text.
      Dim displayText As String = e.DisplayText

      ' Gets the text to be inserted.
      Dim insertText As String = e.InsertText

      ' Gets the item selected.
      Dim selectedItemText As String = e.SelectedItem.Text

End Sub 

{% endhighlight %}

{% endtabs %}

**Filtering AutoComplete items**

EditControl provides options to filter items in AutoComplete. This can be done by using the `FilterAutoCompleteItems` property.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
FilterAutoCompleteItems</td><td>
Gets / sets value indicating whether Context Choice items should be filtered while typing</td></tr>
</table>

FilterAutoCompleteItems property when set to `true`, filters the item in the AutoComplete Context Choice, and the filtered item alone will be visible. When set to `false`, all the items will be visible, and the selection will be navigated to the item.

![](Intellisense-images/Intellisense_img2.png)

**Showing or hiding ContextChoice pop-up**

You can also programmatically show / hide the Context Choice pop-up by calling the `ShowContextChoice` and `CloseContextChoice` methods.

{% tabs %}

{% highlight C# %}

// Shows the ContextChoice pop-up window.
this.editControl1.ShowContextChoice();

// Closes the ContextChoice pop-up window.
this.editControl1.CloseContextChoice();

{% endhighlight %}


{% highlight VB %}

' Shows the ContextChoice pop-up window.
Me.editControl1.ShowContextChoice()

' Closes the ContextChoice pop-up window.
Me.editControl1.CloseContextChoice()

End Sub

{% endhighlight %}

{% endtabs %}

## Display intellisense by custom key combination

You can use the KeyBinder and assign a new key to the `ContextChoice` string command.

{% tabs %}

{% highlight C# %}

// Displays the context choice when Ctrl+L keys are pressed.

this.editControl1.KeyBinder.BindToCommand(Keys.Control | Keys.L, "Editor.ContextChoice");

{% endhighlight %}


{% highlight VB %}

' Displays the context choice when Ctrl+L keys are pressed.

this.editControl1.KeyBinder.BindToCommand(Keys.Control | Keys.L, "Editor.ContextChoice")

{% endhighlight %}

{% endtabs %}

## Customize intellisense popup appearance

In EditControl, we can customize the size, border, background, font and foreground color of ContextChoice popup window. The following topic explains the same: 

### Border color

The border color of the ContextChoice form is set by using the `ContextChoiceBorderColor` property.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ContextChoiceBorderColor</td><td>
Specifies the color of the ContextChoice form border. Used when UseXPStyle property is set to `false`. Otherwise 3D border is drawn</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.ContextChoiceBorderColor = System.Drawing.Color.Red;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ContextChoiceBorderColor = System.Drawing.Color.Red

{% endhighlight %}

{% endtabs %}

![](Intellisense-images/Intellisense_img6.png)

### Size

The size of the ContextChoice form can be set by using the `ContextChoiceSize` property.

{% tabs %}

{% highlight C# %}

this.editControl1.ContextChoiceSize = new System.Drawing.Size(100, 100);

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ContextChoiceSize = New System.Drawing.Size(100, 100)

{% endhighlight %}

{% endtabs %}

![](Intellisense-images/Intellisense_img7.png)

### Background

We can customize the background color of ContextChoice by using the `ContextChoiceBackColor` property of EditControl. 

{% tabs %}

{% highlight C# %}

 // To set the ContextChoice back color.
 
 this.editControl1.ContextChoiceBackColor = Color.DodgerBlue;
 
{% endhighlight %}


{% highlight VB %}

 ' To set the ContextChoice back color.
 
 Me.editControl1.ContextChoiceBackColor = Color.DodgerBlue
 
{% endhighlight %}

{% endtabs %}

![](Intellisense-images/Intellisense_img8.png)

### Foreground

We can customize the foreground color of ContextChoice by using the `ContextChoiceForeColor` property of EditControl. 

{% tabs %}

{% highlight C# %}

 // To set the Context Choice fore color.
 
 this.editControl1.ContextChoiceForeColor = Color.Green;

{% endhighlight %}


{% highlight VB %}

 ' To set the ContextChoice fore color.
 
 Me.editControl1.ContextChoiceForeColor = Color.Green

{% endhighlight %}

{% endtabs %}

![](Intellisense-images/Intellisense_img9.png)

### Font

We can customize the font in ContextChoice popup window by using the `ContextChoiceFont` property of EditControl. 

{% tabs %}

{% highlight C# %}

// To set the context choice font.

 this.editControl1.ContextChoiceFont = new Font("Monotype Corsiva", 12F, FontStyle.Bold);
 
{% endhighlight %}


{% highlight VB %}

' To set the context choice font.

 Me.editControl1.ContextChoiceFont = New Font("Monotype Corsiva", 12F, FontStyle.Bold)
 
{% endhighlight %}

{% endtabs %}

![](Intellisense-images/Intellisense_img10.png)

A sample which demonstrates the above features is available in the below sample installation path.

Installation Location\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Intellisense Functions\Context Choices

## Configure context prompt popup

Display helpful pop-up hints about alternate syntax for invoking what is being typed and its parameters. User can choose their invocation overload with the Up Arrow and Down Arrow keys or by clicking the arrow buttons in the pop-up.

![](Intellisense-images/Intellisense_img4.png)

The following code snippets demonstrates context prompt displaying characters are specified in the configuration file by using the DropContextPrompt field in the lexem for the corresponding character. If you wish to display the ContextPrompt pop-up in response to the opening brace - "(" or opening curly brace -"{" being typed, use the following XML code.

{% highlight xaml %}

<lexem BeginBlock="(" Type="Operator" IsComplex="true" DropContextPrompt="true" />

<lexem BeginBlock="{" Type="Operator" IsComplex="true" DropContextPrompt="true"/>

{% endhighlight %}

The preceding code has to be placed within the <lexems> section of the configuration file. 

### Populate context prompt 

Context Prompt is populated by handling the `ContextPromptOpen` event of EditControl, and adding new prompts using the AddPrompt method.

<table>
<tr>
<th>
Event</th><th>
Description</th></tr>
<tr>
<td>
ContextPromptOpen</td><td>
This event occurs when the Context Prompt has been opened</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_ContextPromptOpen(object sender, Syncfusion.Windows.Forms.Edit.ContextPromptUpdateEventArgs e)
{

// Populate the Context Prompt.

e.AddPrompt( "Control.Items.Add(string text, string tooltipText, int imageIndex, int selectedImageIndex)", "Specify the text of the item, its tooltip text, image index and selected image index" );

e.AddPrompt( "Control.Items.Add(string text, string tooltipText, int imageIndex)", "Specify the text of the item, its tooltip text, and image index" );

e.AddPrompt( "Control.Items.Add(string text, string tooltipText)", "Specify the text of the item, and its tooltip text" );

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextPromptOpen(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.ContextPromptUpdateEventArgs) Handles EditControl1.ContextPromptOpen

' Populate the Context Prompt.

e.AddPrompt("Control.Items.Add(string text, string tooltipText, int imageIndex, int selectedImageIndex)", "Specify the text of the item, its tooltip text, image index and selected image index")

e.AddPrompt("Control.Items.Add(string text, string tooltipText, int imageIndex)", "Specify the text of the item, its tooltip text, and image index")

e.AddPrompt("Control.Items.Add(string text, string tooltipText)", "Specify the text of the item, and its tooltip text")

End Sub

{% endhighlight %}

{% endtabs %}

**ContextPrompt operations**

EditControl provides the following set of events for performing Context Prompt operations.

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
ContextPromptBeforeOpen</td><td>
This event occurs when the Context Prompt window is about to open. User can cancel it</td></tr>
<tr>
<td>
ContextPromptClose</td><td>
This event occurs when the Context Prompt window has been closed</td></tr>
<tr>
<td>
ContextPromptSelectionChanged</td><td>
This event occurs when a Context Prompt item has been selected</td></tr>
</table>


{% tabs %}

{% highlight C# %}

// Store the lexem name invoking the ContextPrompt popup.

string contextPromptLexem = "";

private void editControl1_ContextPromptBeforeOpen(object sender, System.ComponentModel.CancelEventArgs e)
{

ILexem lex;

ILexemLine lexemLine = this.editControl1.GetLine(this.editControl1.CurrentLine);

// Gets the index of the current word in that line.

int ind = GetContextPromptCharIndex(lexemLine);

if (ind<=0)
{

e.Cancel = true;

return;

}

lex = lexemLine.LineLexems[ind-1] as ILexem;

// If the count is less than '2', do not show the Context Prompt popup.

if (lexemLine.LineLexems.Count<2)

e.Cancel = true;

else

{

// Display Context Choice popup if the lexem used to invoke them is "this" or "me" only.

if ((lex.Text == "Chat") || (lex.Text == "Database") || (lex.Text == "NewFile") || (lex.Text == "Find") || (lex.Text == "Home") || (lex.Text == "PieChart") || (lex.Text == "Tools"))

{

this.contextPromptLexem = lex.Text;

e.Cancel = false;

}

else

e.Cancel = true;

}

}

{% endhighlight %}


{% highlight VB %}

' Store the lexem name invoking the Context Prompt popup.

Dim contextPromptLexem As String = ""

Private Sub editControl1_ContextPromptBeforeOpen(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles editControl1.ContextPromptBeforeOpen

Dim lex As ILexem

Dim lexemLine As ILexemLine = Me.editControl1.GetLine(Me.editControl1.CurrentLine)

' Gets the index of the current word in that line.

Dim ind As Integer = GetContextPromptCharIndex(lexemLine)


If ind <= 0 Then

e.Cancel = True

Return

End If


lex = lexemLine.LineLexems(ind - 1) 

' If the count is less than '2', do not show the Context Prompt popup.

If lexemLine.LineLexems.Count < 2 Then

e.Cancel = True

Else

' Display Context Choice popup if the lexem used to invoke them is "this" or "me" only.


If lex.Text = "Chat" OrElse lex.Text = "Database" OrElse lex.Text = "NewFile" OrElse lex.Text = "Find" OrElse lex.Text = "Home" OrElse lex.Text = "PieChart" OrElse lex.Text = "Tools" Then

Me.contextPromptLexem = lex.Text

e.Cancel = False

Else

e.Cancel = True

End If

End If

End Sub

{% endhighlight %}

{% endtabs %}


{% tabs %}

{% highlight C# %}

// Clear the Context Prompt lexem name on close.

private void editControl1_ContextPromptClose(object sender, Syncfusion.Windows.Forms.Edit.ContextPromptCloseEventArgs e)

{

this.contextPromptLexem = "";

}

{% endhighlight %}


{% highlight VB %}

' Clear the Context Prompt lexem name on close.

Private Sub editControl1_ContextPromptClose(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.ContextPromptCloseEventArgs)

Me.contextPromptLexem = ""

End Sub

{% endhighlight %}

{% endtabs %}


{% tabs %}

{% highlight C# %}

// Display the selected Context Prompt item's index.

private void editControl1_ContextPromptSelectionChanged(Syncfusion.Windows.Forms.Edit.Forms.Popup.ContextPrompt sender, Syncfusion.Windows.Forms.Edit.ContextPromptSelectionChangedEventArgs e)
{

Console.WriteLine("SelectedIndex : " + e.SelectedIndex.ToString());

Console.WriteLine("ContextPromptSelectionChanged");

}

{% endhighlight %}


{% highlight VB %}

' Display the selected Context Prompt item's index.

Private Sub editControl1_ContextPromptSelectionChanged(ByVal sender As Syncfusion.Windows.Forms.Edit.Forms.Popup.ContextPrompt, ByVal e As Syncfusion.Windows.Forms.Edit.ContextPromptSelectionChangedEventArgs)

Console.WriteLine("SelectedIndex : " + e.SelectedIndex.ToString())

Console.WriteLine("ContextPromptSelectionChanged")

End Sub

{% endhighlight %}

{% endtabs %}

**Showing or hiding ContextPrompt pop-up**

You can also programmatically show / hide the Context Prompt pop-up using the `ShowContextPrompt` and `CloseContextPrompt` methods.

{% tabs %}

{% highlight C# %}

// Shows the Context Prompt pop-up window.
this.editControl1.ShowContextPrompt();

// Closes the Context Prompt pop-up window.
this.editControl1.CloseContextPrompt();

{% endhighlight %}


{% highlight VB %}

' Shows the Context Prompt pop-up window.
Me.editControl1.ShowContextPrompt()

' Closes the Context Prompt pop-up window.
Me.editControl1.CloseContextPrompt();

{% endhighlight %}

{% endtabs %}

## Customize context prompt appearance

In EditControl, we can customize the size, background, font and border color of ContextPrompt popup window. The following topic explains the same: 

### Background

The brush for the Context Prompt background is set by using the ContextPromptBackgroundBrush property of the EditControl.

{% tabs %}

{% highlight C# %}

this.editControl1.ContextPromptBackgroundBrush = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.PapayaWhip, System.Drawing.Color.LemonChiffon);

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ContextPromptBackgroundBrush = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.PapayaWhip, System.Drawing.Color.LemonChiffon)

{% endhighlight %}

{% endtabs %}

### Border

The border color of the Context Prompt form is set by using the `ContextPromptBorderColor` property.

{% tabs %}

{% highlight C# %}

this.editControl1.ContextPromptBorderColor = System.Drawing.Color.Pink;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ContextPromptBorderColor = System.Drawing.Color.Pink

{% endhighlight %}

{% endtabs %}

### Size

The size of the Context Prompt form can be set by using the below given properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
ContextPromptSize</td><td>
Specifies the size of the Context Prompt form</td></tr>
<tr>
<td>
UseCustomSizeContextPrompt</td><td>
Specifies a value indicating whether custom Context Prompt size should be used</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.editControl1.ContextPromptCustomSize = new System.Drawing.Size(125, 75);

this.editControl1.UseCustomSizeContextPrompt = true;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ContextPromptCustomSize = New System.Drawing.Size(125, 75)

Me.editControl1.UseCustomSizeContextPrompt = True

{% endhighlight %}

{% endtabs %}

### Advanced customizations

If you wish to do some advanced customization in the Context Prompt feature, like highlighting the current parameter to be input in bold, you can use the ContextPromptOpen and ContextPromptUpdate events.

For example, add the bold items in the ContextPromptOpen event handler. The indices for the exact position of the text that needs to be bold has to be manually calculated and specified along with some text information associated with that particular argument. The following code snippet illustrates this.


{% tabs %}

{% highlight C# %}

// To display some text in bold within the prompt.

private void editControl1_ContextPromptOpen(object sender, Syncfusion.Windows.Forms.Edit.ContextPromptUpdateEventArgs e)
{

Console.WriteLine("ContextPromptOpen");

// Bolded Items should be added in this handler.

ContextPromptItem item = null;      

item = e.AddPrompt( "Control.Items.Add(string text, string tooltipText, int imageIndex, int selectedImageIndex)", "Specify the text of the item, its tooltip text, image index and selected image index" );

// Specify the text to be displayed in bold in the Context Prompt.

item.BoldedItems.Add( 18, 11, "Text to be added" );

item.BoldedItems.Add( 31, 18, "Text of the tooltip" );

item.BoldedItems.Add( 51, 14, "Zero-based index of the image or -1 if no image should be used." );

item.BoldedItems.Add( 67, 14, "Zero-based index of the image for selection or -1 if no image should be used." );



item = e.AddPrompt( "Control.Items.Add(string text, string tooltipText, int imageIndex)", "Specify the text of the item, its tooltip text, and image index" );

item.BoldedItems.Add( 18, 11, "Text to be added" );

item.BoldedItems.Add( 31, 18, "Text of the tooltip" );

item.BoldedItems.Add( 51, 14, "Zero-based index of the image or -1 if no image should be used." );



item = e.AddPrompt( "Control.Items.Add(string text, string tooltipText)", "Specify the text of the item, and its tooltip text" );

item.BoldedItems.Add( 18, 11, "Text to be added" );

item.BoldedItems.Add( 31, 18, "Text of the tooltip" );

}

{% endhighlight %}


{% highlight VB %}

' To display some text in bold within the prompt.

Private Sub editControl1_ContextPromptOpen(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.ContextPromptUpdateEventArgs) Handles EditControl1.ContextPromptOpen

Console.WriteLine("ContextPromptOpen")

' Bolded Items should be added in this handler.

Dim item As ContextPromptItem

item = e.AddPrompt("Control.Items.Add(string text, string tooltipText, int imageIndex, int selectedImageIndex)", "Specify the text of the item, its tooltip text, image index and selected image index")


' Specify the text to be displayed in bold in the Context Prompt.

item.BoldedItems.Add(18, 11, "Text to be added")

item.BoldedItems.Add(31, 18, "Text of the tooltip")

item.BoldedItems.Add(51, 14, "Zero-based index of the image or -1 if no image should be used.")

item.BoldedItems.Add(67, 14, "Zero-based index of the image for selection or -1 if no image should be used.")


item = e.AddPrompt("Control.Items.Add(string text, string tooltipText, int imageIndex)", "Specify the text of the item, its tooltip text, and image index")

item.BoldedItems.Add(18, 11, "Text to be added")

item.BoldedItems.Add(31, 18, "Text of the tooltip")

item.BoldedItems.Add(51, 14, "Zero-based index of the image or -1 if no image should be used.")



item = e.AddPrompt("Control.Items.Add(string text, string tooltipText)", "Specify the•_

{% endhighlight %}

{% endtabs %}


Select the items that should be bold in the `ContextPromptUpdate` event handler. The following code snippet illustrates this.

{% tabs %}

{% highlight C# %}

private void editControl1_ContextPromptUpdate(object sender, Syncfusion.Windows.Forms.Edit.ContextPromptUpdateEventArgs e)
{

// Select the items that should be bolded.

if( e.List.SelectedItem != null )
{

// Get list of the lexems that are inside the current stack.

IList list = editControl1.GetLexemsInsideCurrentStack( false );

if( list == null ) return;



int iBoldedIndex = 0;

foreach( ILexem lexem in list )

{

if( lexem.Text == "," )

iBoldedIndex++;

}

if( iBoldedIndex >= e.List.SelectedItem.BoldedItems.Count )

e.List.SelectedItem.BoldedItems.SelectedItem = null;

else

// Gets or sets selected item.

e.List.SelectedItem.BoldedItems.SelectedItem = e.List.SelectedItem.BoldedItems[iBoldedIndex];

}

}         

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextPromptUpdate(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.ContextPromptUpdateEventArgs) Handles EditControl1.ContextPromptUpdate

' Select the items that should be bolded.

If Not (e.List.SelectedItem Is Nothing) Then


' Get list of the lexems that are inside the current stack.

Dim list As IList = editControl1.GetLexemsInsideCurrentStack(False)

If list Is Nothing Then

Return

End If

Dim iBoldedIndex As Integer = 0

Dim lexem As ILexem

For Each lexem In list

If lexem.Text = "," Then

iBoldedIndex += 1

End If

Next lexem

If iBoldedIndex >= e.List.SelectedItem.BoldedItems.Count Then

e.List.SelectedItem.BoldedItems.SelectedItem = Nothing

Else

' Gets or sets selected item.

e.List.SelectedItem.BoldedItems.SelectedItem = e.List.SelectedItem.BoldedItems(iBoldedIndex)

End If

End If

End Sub

{% endhighlight %}

{% endtabs %}

A sample which demonstrates the above features is available in the below sample installation path.

Installation Location\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Intellisense Functions\Advanced Intellisense

## Configure context tooltip

EditControl provides built-in interactive tooltips that appear automatically when the pointer is placed over a collapsed block of text. Whenever the mouse hovers over a token, the `UpdateContextTooltip` event is fired for quick information on the lexem. If some text information is provided, it is displayed in a tooltip.

![](Intellisense-images/Intellisense_img5.png)

Context ToolTip can be populated with additional information on the corresponding lexem by handling the `UpdateContextTooltip` event of EditControl.

{% tabs %}

{% highlight C# %}

private void editControl1_UpdateContextToolTip(object sender, Syncfusion.Windows.Forms.Edit.Dialogs.UpdateTooltipEventArgs e)
{
   if( e.Text == string.Empty )
   {

     Point pointVirtual = editControl1.PointToVirtualPosition( new Point( e.X, e.Y ) );

     if( pointVirtual.Y > 0 )
     {
        // Get the current line
        ILexemLine line = editControl1.GetLine( pointVirtual.Y );

        if( line != null )
        {
            // Get tokens from the current line
            ILexem lexem = line.FindLexemByColumn( pointVirtual.X );
            if( lexem != null )
            {
                // Set the desired information tooltip
                e.Text = "This is additional information on " + lexem.Text;
            }
         }
      }

    }
}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_UpdateContextToolTip(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.Dialogs.UpdateTooltipEventArgs) Handles EditControl1.UpdateContextToolTip

   If e.Text = String.Empty Then

      Dim pointVirtual As Point = editControl1.PointToVirtualPosition(New Point(e.X, e.Y))

      If pointVirtual.Y > 0 Then

         ' Get the current line

          Dim line As ILexemLine = editControl1.GetLine(pointVirtual.Y)

          If Not (line Is Nothing) Then

             ' Get tokens from the current line

              Dim lexem As ILexem = line.FindLexemByColumn(pointVirtual.X)

              If Not (lexem Is Nothing) Then

                ' Set the desired information tooltip

                 e.Text = "This is additional information on " + lexem.Text;

              End If

          End If

        End If

   End If

End Sub

{% endhighlight %}

{% endtabs %}

### Customization

The brush for the Context ToolTip background can be set by using the `ContextTooltipBackgroundBrush` property. And also the border color of the Context ToolTip form can be customized by using the `ContextTooltipBorderColor` property. The Context ToolTip window can be shown or hidden by setting the `ShowContextTooltip` property to `true`.

{% tabs %}

{% highlight C# %}

this.editControl1.ShowContextTooltip = true;

this.editControl1.ContextTooltipBackgroundBrush = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.PatternStyle.Percent05, System.Drawing.Color.LavenderBlush, System.Drawing.Color.Khaki);

this.editControl1.ContextTooltipBorderColor = System.Drawing.Color.Orange;

{% endhighlight %}


{% highlight VB %}

Me.editControl1.ShowContextTooltip = True

Me.editControl1.ContextTooltipBackgroundBrush = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.PatternStyle.Percent05, System.Drawing.Color.LavenderBlush, System.Drawing.Color.Khaki)

Me.editControl1.ContextTooltipBorderColor = System.Drawing.Color.Orange

{% endhighlight %}

{% endtabs %}


It is also possible to specify the time delay after which the tooltip should be displayed by using the `ToolTipDelay` property.

{% tabs %}

{% highlight C# %}

// Displays the tooltip pop-up after 1000 milliseconds( 1 sec )

this.editControl1.ToolTipDelay = 1000;

{% endhighlight %}


{% highlight VB %}

' Displays the tooltip pop-up after 1000 milliseconds( 1 sec )

Me.edtiControl1.ToolTipDelay = 1000

{% endhighlight %}

{% endtabs %}

The Context ToolTip window is also closed by using the `CloseContextTooltip` method.

{% tabs %}

{% highlight C# %}

// Closes the Context ToolTip pop-up window.

this.editControl1.CloseContextTooltip();

{% endhighlight %}


{% highlight VB %}

' Closes the Context ToolTip pop-up window.

Me.editControl1.CloseContextTooltip();

{% endhighlight %}

{% endtabs %}

A sample which demonstrates the above features is available in the below sample installation path.

Installation Location\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Intellisense Functions\Context Tooltip

## Auto complete

Completes the rest of a word the user is typing by selecting from a list of choices displayed as a context menu. Type the first few letters of the member name, and then press ALT+RIGHT ARROW or <kbd>CTRL+SPACEBAR</kbd> keys to see this functionality.

### Example

When the following text is typed - "this.editControl1.", it displays a Context Choice list with members in the following order

* New
* Word
* WordLeft
* WordRight

**Case 1**

If you type "w" after "this.editControl1.", such that it looks like - "this.editControl1.w", and press the ALT+RIGHT ARROW (or CTRL+SPACEBAR) keys, it will auto complete it with the first matching member name. In this case, it will be auto completed as "this.editControl1.Word".

**Case 2**

If you type "word" after "this.editControl1.", such that it looks like - "this.editControl1.word", and press the ALT+RIGHT ARROW (or CTRL+SPACEBAR) keys, it will auto complete it with the first matching member name. In this case, it will be auto completed as "this.editControl1.WordRight".

**Case 3**

If you type "move" after "this.editControl1.", such that it looks like - "this.editControl1.move", and press the ALT+RIGHT ARROW (or CTRL+SPACEBAR) keys, it will auto complete it with the first matching member name. In this case, there is no matching member name to autocomplete, and hence nothing will happen.

**Case 4**

If you type nothing after "this.editControl1.", and press the ALT+RIGHT ARROW (or CTRL+SPACEBAR) keys, it will auto complete it with the first member name in the Context Choice list. In this case, it should be auto completed as "this.editControl1.New".

Note that the searching process for the first matching member is not case sensitive. For example, "word" and "Word" will be treated in the same way.

Set the `UseAutocomplete` property associated with the IContextChoiceController to `true`, to enable this functionality while using Context Choice.

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceOpen(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController controller)

{

   controller.UseAutocomplete = true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceOpen(ByVal controller As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController) Handles editControl1.ContextChoiceOpen

   controller.UseAutocomplete = True

End Sub

{% endhighlight %}

{% endtabs %}

## Auto correct

EditControl comes with the AutoReplace triggers feature which allows the control to automatically correct some of the known predefined typing errors. AutoReplace triggers are fired when certain keys are pressed. 

![](Intellisense-images/Intellisense_img6.jpeg)

![](Intellisense-images/Intellisense_img7.jpg)

Auto Replace Triggers can be enabled or disabled by using the `UseAutoreplaceTriggers` property as shown below.

{% tabs %}

{% highlight C# %}

// Enables AutoReplace Triggers.

this.editControl1.UseAutoreplaceTriggers = true;

{% endhighlight %}


{% highlight VB %}

' Enables AutoReplace Triggers.

Me.editControl1.UseAutoreplaceTriggers = True

{% endhighlight %}

{% endtabs %}

The keys used as AutoReplace Triggers are defined by using the TriggersActivators attribute of the language in the configuration file, as shown below.

<ConfigLanguage name ="C#" Known ="Csharp" StartComment ="//" TriggersActivators =" ;.=()">

Triggers can be flagged as valid only within the specific lexical states. For example, you can set a trigger not to fire, if it is in a comment within a language, by using the AllowTriggers attribute, as shown below.

{% highlight xaml %}

<lexem BeginBlock="/* EndBlock="*/" Type="Comment" OnlyLocalSublexems="true" IsComplex="true" IsCollapsable="true" CollapseName="/*...*/" AllowTriggers="false">

</lexem>

{% endhighlight %}

The words to be replaced when the AutoReplace Triggers key is pressed can be defined by using the code given below.

{% tabs %}

{% highlight C# %}

this.editControl1.Language.AutoReplaceTriggers.AddRange(new AutoReplaceTrigger[]{new AutoReplaceTrigger("tis","this"),new AutoReplaceTrigger("fro","for")});

{% endhighlight %}


{% highlight VB %}

Me.editControl1.Language.AutoReplaceTriggers.AddRange(New AutoReplaceTrigger(){New AutoReplaceTrigger("tis","this"),New AutoReplaceTrigger("fro","for")})

{% endhighlight %}

{% endtabs %}

The words to be replaced can also be defined within the language definition in the configuration file, as shown below.

{% highlight xaml %}

<AutoReplaceTriggers>

   <AutoReplaceTrigger From ="tis" To ="this" />

   <AutoReplaceTrigger From ="itn" To ="int" />

</AutoReplaceTriggers>
 
{% endhighlight %}
