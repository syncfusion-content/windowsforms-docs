---
layout: post
title: End-user Capability
description: This section explains about the various dialog boxes which are used in EditControl
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# End-User Capability

Supports various built-in dialog windows alike Microsoft Visual Studio text editor.

## Key binding

Provides built-in support for all necessary shortcut key combinations for text editing and navigation functionalities. It offers built-in dialog window to map the new shortcut key combinations.

This can be done in the designer using the Keys Binding dialog as illustrated in the given procedure:

   1. In the Editor Keys Binding dialog box, select the desired standard command. The default shortcuts assigned for a particular command are listed in the combobox under the Shortcut(s) for selected command: label.
   2. Set the focus to the Edit Box. Press TAB to navigate to the shortcuts drop-down list.
   3. Press the desired key or key combination.
   4. Now, click the Assign button to assign this keystroke combination as the shortcut for that particular standard command. Click OK.

The [KeyBinder](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~KeyBinder.html) property is used to get the key binder. The [KeyBindingProcessor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~KeyBindingProcessor.html) property is used to get or set the key binding processor. The Editor Keys Binding dialog is invoked by using the [ShowKeysBindingEditor](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowKeysBindingEditor.html) function in the EditControl.

![](End-user-Capability_images/End-user-Capability_img1.png)

## Find

Provides Microsoft Visual Studio text editor like `FindDialog` window with similar options for text search and highlighting.  

{% tabs %}

{% highlight C# %}

// Invoke the Find Dialog.

this.editControl1.ShowFindDialog();

{% endhighlight %}


{% highlight VB %}

' Invoke the Find Dialog.

Me.editControl1.ShowFindDialog()

{% endhighlight %}

{% endtabs %}

![](End-user-Capability_images/End-user-Capability_img2.png)

The EditControl now enables you to create a new Find Dialog by inheriting the Find Dialog by changing the properties. It triggers the events of the buttons such as Find, Mark All, and Close. You can also easily localize the captions of the controls in the Find Dialog.

**Enhanced Find Dialog**

The EditControl Find Dialog is enhanced with an alert message box when find reaches the starting point of the search again. In search option, select Current Selection, click OK in the alert message box, then the search area is selected again automatically as in VS editor.

![](End-user-Capability_images/End-user-Capability_img3.jpeg)

**Creating a class for own find dialog**

Create a class for own Find Dialog that inherits the [frmFindDialog](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Dialogs.FrmFindDialog.html) class.

{% tabs %}

{% highlight C# %}

//Inherits the frmFindDialog

public class FindDialogExt : Syncfusion.Windows.Forms.Edit.Dialogs.frmFindDialog

{% endhighlight %}


{% highlight VB %}

‘Inherits the frmFindDialog.

Public Class FindDialogExt

Inherits Syncfusion.Windows.Forms.Edit.Dialogs.frmFindDialog

End Class

{% endhighlight %}

{% endtabs %}

This event occurs in FindNext() option when search reaches the starting point of the search before the message box displays.

The event handler receives an argument of `FindCompleteEventArgs` . This argument class sets the text for message box. User can localize this text.

{% tabs %}

{% highlight C# %}

// Handle the FindComplete event.

 this.FindComplete += new EventHandler<FindCompleteEventArgs>(FindDialogExt_FindComplete);

//Set the value for message box for when search reaches the starting point of search

Private void FindDialogExt_FindComplete(object sender, frmFindDialog.FindCompleteEventArgs e)
{
     //Arabic text as message(localize)

     if (messageString != string.Empty)

         e.Message = "انتهى";

     else

          e.Message = "Find reached the starting point of the search.";

}

{% endhighlight %}


{% highlight VB %}

' Handle the FindComplete event.

Private Me.editControl1.FindComplete += New EventHandler(Of FindCompleteEventArgs)(AddressOf FindDialogExt_FindComplete)

'Set the value for message box for when search reaches the starting point of search

Private Sub FindDialogExt_FindComplete(ByVal sender As Object, ByVal e As frmFindDialog.FindCompleteEventArgs)

     'Arabic text as message (localize)

     If messageString <> String.Empty Then

        e.Message = "انتهى"

     Else

        e.Message = "Find reached the starting point of the search."

     End If

End Sub

{% endhighlight %}

{% endtabs %}

The default key bindings to these dialogs can be changed as explained in the Keystroke - Action Combinations Binding topic.

### Find by programmatic

Programmatically supports many useful functions for text search and highlight like `FindText`, `FindCurrentText`, and `FindNext`. These functions are explained as follows:

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[FindText](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FindText.html)' | markdownify }}
</td><td>
Finds the first occurrence of the specified text as per the conditions specified like match case, match whole word, search hidden text, and search up.</td></tr>
<tr>
<td>
{{ '[FindRange](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FindRange.html)' | markdownify }}</td><td>
Searches for given string in the text of control and returns text range of the first found occurrence.</td></tr>
<tr>
<td>
{{ '[FindRegex](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FindRegex(Int32,Int32,String,Boolean,Boolean).html)' | markdownify }}</td><td>
Looks for a specified expression in the text.</td></tr>
<tr>
<td>
{{ '[FindCurrentText](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FindCurrentText.html)' | markdownify }}</td><td>
Finds the next occurrence of the word on which the cursor is presently on.</td></tr>
<tr>
<td>
{{ '[FindNext](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FindNext.html)' | markdownify }}</td><td>
Finds the next occurrence of the current search text.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Finds the first occurrence of the specified text as per the conditions specified.

this.editControl1.FindText("Essential Edit", true, true, true, true, null);

// Searches for given string in the text of control and returns text range of first found occurrence.

this.editControl1.FindRange(searchString, startLocation, endLocation, matchWholeWord, searchHiddenText, searchUp, useRegex);

// Looks for specified expression in text.

this.editControl1.FindRegex(startLine, startColumn, expression, bSearchInCollapsed, searchUp);

// Finds the next occurrence of the word on which the cursor is presently on.

this.editControl1.FindCurrentText();

// Finds the next occurrence of the current search text.

this.editControl1.FindNext();

{% endhighlight %}


{% highlight VB %}

' Finds the first occurrence of the specified text as per the conditions specified.

Me.editControl1.FindText("Essential Edit", True, True, True, True, Nothing)

' Searches for given string in the text of control and returns text range of first found occurrence.

Me.editControl1.FindRange(searchString, startLocation, endLocation, matchWholeWord, searchHiddenText, searchUp, useRegex)

' Looks for specified expression in text.

Me.editControl1.FindRegex(startLine, startColumn, expression, bSearchInCollapsed, searchUp)

' Finds the next occurrence of the word on which the cursor is presently on.

Me.editControl1.FindCurrentText()

' Finds the next occurrence of the current search text.

Me.editControl1.FindNext()

{% endhighlight %}

{% endtabs %}

![](End-user-Capability_images/End-user-Capability_img4.png)

**History properties**

The [FindHistory](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FindHistory.html) property is used to add or remove the items from find history in the `FindDialog` box. 

The functions associated with the FindHistory property are used to perform the following operations.

<table>
<tr>
<th>
FindHistory functions</th><th>
Description</th></tr>
<tr>
<td>
Insert</td><td>
Inserts an element into the System.Collections.ArrayList at a specified index.</td></tr>
<tr>
<td>
Remove</td><td>
Removes an element or the first occurrence from the System.Collections.ArrayList of a specified index.</td></tr>
<tr>
<td>
Sort</td><td>
Sorts all the elements in the System.Collections.ArrayList.</td></tr>
<tr>
<td>
Clear</td><td>
Clears all the items in the FindHistory.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.editControl1.FindHistory.Insert(0,(object)ATH.addedItem);

this.editControl1.FindHistory.Remove(o);

this.editControl1.FindHistory.Sort();

this.editControl1.FindHistory.Clear();

{% endhighlight %}


{% highlight VB %}

Me.editControl1.FindHistory.Insert(0,CType(ATH.addedItem, Object))

Me.editControl1.FindHistory.Remove(o)

Me.editControl1.FindHistory.Sort()

Me.editControl1.FindHistory.Clear()

{% endhighlight %}

{% endtabs %}

## Find and replace 

Provides Microsoft Visual Studio text editor like Find and Replace dialog window with similar options for text search, highlighting, and replace.

![](End-user-Capability_images/End-user-Capability_img5.png)

{% tabs %}

{% highlight C# %}

// Invoke the Replace Dialog.

this.editControl1.ShowReplaceDialog();

{% endhighlight %}


{% highlight VB %}

' Invoke the Replace Dialog.

Me.editControl1.ShowReplaceDialog()

{% endhighlight %}

{% endtabs %}

### Replace by programmatic

Programmatically supports many useful functions for text search and replace like `ReplaceText` and `ReplaceAll`. These functions are explained as follows:

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ReplaceText](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ReplaceText.html)' | markdownify }}</td><td>
Replaces the first occurrence of a specified text with the replacement text as per the conditions specified like match case, match whole word, search hidden text, and search up.</td></tr>
<tr>
<td>
{{ '[ReplaceAll](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ReplaceAll.html)' | markdownify }}</td><td>
Replaces all occurrences of the search text with the replacement text as per the conditions specified like match case, match whole word, search hidden text, and search up.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Replaces the first occurrence of the specified text with the replacement text as per the conditions specified.

this.editControl1.ReplaceText("ShowVerticalScrollbar", "ShowVerticalScroller");

// Replaces all occurrences of the search text with the replacement text as per the conditions specified.

this.editControl1.ReplaceAll(" Drag-and-drop", "Drag and drop");

{% endhighlight %}


{% highlight VB %}

' Replaces the first occurrence of the specified text with the replacement text as per the conditions specified.

Me.editControl1.ReplaceText("ShowVerticalScrollbar", "ShowVerticalScroller") 

' Replaces all occurrences of the search text with the replacement text as per the conditions specified.

Me.editControl1.ReplaceAll(" Drag-and-drop", "Drag and drop")

{% endhighlight %}

{% endtabs %}

The [ReplaceHistory](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ReplaceHistory.html) property is used to add or remove items from the replace history in the Replace dialog box. Similarly, the [ReplaceSearchHistory](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ReplaceSearchHistory.html) property is used to add or remove items from the find history in the Replace dialog box.

N> Refer to the following sample link that demonstrates the Find and Replace functionalities of EditControl:
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Interactive Features\Find and Replace

## GoTo line

Provides `GoToLine` dialog window that helps navigating to the required line number.

{% tabs %}

{% highlight C# %}

// Invoke the GoTo Dialog.

this.editControl1.ShowGoToDialog();

{% endhighlight %}


{% highlight VB %}

' Invoke the GoTo Dialog.

Me.editControl1.ShowGoToDialog()

{% endhighlight %}

{% endtabs %}

![](End-user-Capability_images/End-user-Capability_img6.png)

### GoTo line by programmatic

Programmatically offers function named [GoTo](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~GoTo.html) to navigate to any line.

The `linesAbove` argument can be used to specify the number of lines to be displayed above the pointer.

{% tabs %}

{% highlight C# %}

// Places the cursor at the beginning of the given line number.

this.editControl1.GoTo(lineNumber);

this.editControl1.GoTo(lineNumber, linesAbove);

{% endhighlight %}


{% highlight VB %}

' Places the cursor at the beginning of the given line number.

Me.editControl1.GoTo(lineNumber)

Me.editControl1.GoTo(lineNumber, linesAbove);

{% endhighlight %}

{% endtabs %}

## Font configuration

Supports customization of fonts through the configuration file and `FormatsCustomization` dialog. 

{% highlight xaml %}

<format name="Text" Font="Courier New, 10pt" FontColor="Black" />

<format name="SelectedText" Font="Courier New, 10pt" BackColor="Highlight" FontColor="HighlightText" />

<format name="String" Font="Courier New, 10pt, style=Bold" FontColor="Red" />

<format name="Whitespace" Font="Courier New, 10pt" FontColor="Black" />

<format name="Operator" Font="Courier New, 10pt" FontColor="DarkCyan" />

<format name="Number" Font="Courier New, 10pt, style=Bold" FontColor="Navy" /> 

{% endhighlight %} 

The EditControl supports font customization at runtime through the use of [frmFormatsConfig](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Dialogs.frmFormatsConfig.html) dialog box which consists of three smaller controls like ControlFormatSettings, ControlFormatsList, and ControlLanguageSelector.

* `ControlFormatSettings`: Contains the actual controls to customize all the rendering settings of the selected format including font settings. 
* `ControlFormatsList`: Consists of the list of currently existing formats in the configuration file. It also provides support to create new formats or delete the existing ones. 
* `ControlLanguageSelector`: Contains a ComboBox that has the list of configuration languages supported by the EditControl. The list gets updated when a new configuration language is added or an existing one is removed. 

{% tabs %}

{% highlight C# %}

this.controlLanguageSelector1.EditControl = this.editControl1;

this.controlFormatsList1.EditControl = this.editControl1;

this.controlFormatsList1.LanguageSelector = this.controlLanguageSelector1;

this.controlFormatsSettings1.FormatsSelector = this.controlFormatsList1;

// Shows the font customization dialog.

this.editControl1.ShowFormatsCustomizationDialog();

{% endhighlight %}


{% highlight VB %}

Me.controlLanguageSelector1.EditControl = Me.editControl1

Me.controlFormatsList1.EditControl = Me.editControl1

Me.controlFormatsList1.LanguageSelector = Me.controlLanguageSelector1

Me.controlFormatsSettings1.FormatsSelector = Me.controlFormatsList1

// Shows the font customization dialog.

this.editControl1.ShowFormatsCustomizationDialog();

{% endhighlight %}

{% endtabs %}

![](End-user-Capability_images/End-user-Capability_img7.jpg)

N> Refer to the following sample link that demonstrates the customization of font in EditControl:
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Interactive Features\Font Customization
