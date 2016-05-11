---
layout: post
title: File-Sharing-and-Stream-Handling | WindowsForms | Syncfusion
description: file sharing and stream handling
platform: WindowsForms
control: Edit
documentation: ug
---

# File Sharing and Stream Handling

Edit Control provides extensive support for File and Stream Handling operations through the APIs discussed in this section.

## Creating, Loading, Saving And Dropping Files

This section discusses the file operations supported in Edit Control. 

### Creating Files

The New and NewFile methods are used to create a new stream or file, and optionally allows you to set the language to be used by specifying the appropriate configuration settings.

<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
New</td><td>
Creates an empty stream and allows the editor for editing.</td></tr>
<tr>
<td>
NewFile</td><td>
Creates new empty file with specified coloring.</td></tr>
</table>


{% highlight c# %}



// Creates a new stream with default configuration settings.

this.editControl.New();



// Creates a new file with default configuration settings.

this.editControl.NewFile();



// Creates a new stream with specified configuration settings.

this.editControl.New(ConfigLanguage lang);



// Creates a new file with specified configuration settings.

this.editControl.NewFile(IConfigLanguage lang);

{% endhighlight %}

{% highlight vbnet %}



' Creates a new file.

Me.editControl1.NewFile()



Me.editControl1.[New]()



' "config" is Configuration Settings file of type IConfigLanguage.

Me.editControl1.NewFile(config)



Me.editControl1.[New](config)

{% endhighlight %}

### Loading Files

The LoadFile method loads the content of any desired file into the Edit Control.

<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
LoadFile</td><td>
Shows open file dialog to the user and opens the selected file.</td></tr>
</table>


N> The character encoding for the text can also be specified while loading the file.



{% highlight c# %}



// Displays the Open File dialog.

this.editControl1.LoadFile();



// Loads the content of the specified file.

this.editControl1.LoadFile("Temp.txt", Encoding.ASCII);

{% endhighlight %}

{% highlight vbnet %}



' Displays the Open File dialog.

Me.editControl1.LoadFile()



' Loads the content of the specified file. 

Me.editControl1.LoadFile("Temp.txt", Encoding.ASCII)

{% endhighlight %}

### Saving Files

The following methods are used to save a file in the Edit Control.

<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
SaveFile</td><td>
Saves the contents of the Edit Control to a specified file.</td></tr>
<tr>
<td>
Save</td><td>
Invokes the save file dialog box and lets you save the contents of the Edit Control to the specified file.</td></tr>
<tr>
<td>
SaveAs</td><td>
Opens SaveAs dialog and prompts you to enter the name of the file.</td></tr>
<tr>
<td>
SaveModified</td><td>
Saves the file only if it was modified and prompts for filename if needed. This is especially useful when the application is about to be closed or a new file is being loaded into the Edit Control.</td></tr>
</table>


{% highlight c# %}



// Saves the contents of the file.

this.editControl1.SaveFile("Temp.txt", Encoding.Unicode, Syncfusion.IO.NewLineStyle.Control);



// Displays the Save File dialog.

this.editControl1.Save();



// Displays the SaveAs dialog. 

this.editControl1.SaveAs();



// Saves the contents of the file after modification, when a new file is loaded, or when a file is closed.

this.editControl1.SaveModified();

{% endhighlight %}

{% highlight vbnet %}



' Saves the contents of the file.

Me.editControl1.SaveFile("Temp.txt", Encoding.Unicode, Syncfusion.IO.NewLineStyle.Control)



' Displays the Save File dialog.

Me.editControl1.Save()



' Displays the SaveAs dialog. 

Me.editControl1.SaveAs()



' Saves the contents of the file after modification, when a new file is loaded, or when a file is closed.

Me.editControl1.SaveModified()

{% endhighlight %}

### Inserting Files

The following methods are used to insert a file in the Edit Control.

<table>
<tr>
<th>
Edit Control Method</th><th>
Parameters</th><th>
Description</th></tr>
<tr>
<td>
InsertFile</td><td>
-</td><td>
Shows Insert file dialog and inserts the selected file.</td></tr>
<tr>
<td>
InsertFile</td><td>
 public void InsertFile(string filePath)</td><td>
Inserts a file by using file path.</td></tr>
</table>


{% highlight c# %}

//Displays the Insert dialog box

this.editControl1.InsertFile();



//Insert a file using file path

this.editControl1.InsertFile(@"..\\..\\Form2.cs");


{% endhighlight %}


{% highlight vbnet %}

'Displays the Insert dialog box
Me.editControl1.InsertFile


'Insert a file using file path
Me.editControl1.InsertFile(@"..\\..\\Form2.cs")

{% endhighlight %}

### Dropping Files

Files can be dropped onto the Edit Control by using the properties given below.



<table>
<tr>
<th>
Edit Control Property</th><th>
Description</th></tr>
<tr>
<td>
DropAllFiles</td><td>
Gets / sets value indicating whether all files can be dropped onto Edit Control. If set to False, only files with extensions contained in FileExtensions can be dropped.</td></tr>
<tr>
<td>
FileExtensions</td><td>
Gets / sets extensions of files that can be dropped to Edit Control.</td></tr>
</table>


{% highlight c# %}



// Drops all files onto Edit Control.

this.editControl1.DropAllFiles = true;



// Specifies the file extensions of files that can be dropped onto Edit Control. 

this.editControl1.FileExtensions = new string[] {".cs", ".sql", ".vb", ".xml"};

{% endhighlight %}

{% highlight vbnet %}



' Drops all files onto Edit Control.

Me.editControl1.DropAllFiles = True



' Specifies the file extensions of files that can be dropped onto Edit Control.

Me.editControl1.FileExtensions = New String() {".cs", ".sql", ".vb", ".xml"} 

{% endhighlight %}

## Loading And Saving Contents

The contents of the Edit Control can be loaded and saved to a particular stream. This can be achieved by using the methods given below.



<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
LoadStream</td><td>
Loads the stream and the corresponding configuration.</td></tr>
<tr>
<td>
FlushChanges</td><td>
Flushes changes to the current stream.</td></tr>
<tr>
<td>
SaveStream</td><td>
Saves content to the specified stream using specified encoding and line end style.</td></tr>
</table>


{% highlight c# %}



// Loads the content of the specified stream into the Edit Control.

this.editControl1.LoadStream(streamName);



// Loads the specified stream and configuration.

this.editControl1.LoadStream(streamName, config);



// Saves changes made to the contents of the Edit Control into the current stream.

this.editControl1.FlushChanges();



// Saves content to the specified stream using specified encoding and line end style.

this.editControl1.SaveStream(System.IO.Stream.Null , Encoding.BigEndianUnicode, Syncfusion.IO.NewLineStyle.Mac);

{% endhighlight %}

{% highlight vbnet %}



' Loads the content of the specified stream into the edit control.

Me.editControl1.LoadStream(streamName)



' Loads the specified stream and configuration.

Me.editControl1.LoadStream(streamName, config)



' Saves changes made to the contents of the Edit Control into the current stream.

Me.editControl1.FlushChanges()



' Saves content to the specified stream using specified encoding and line end style.

Me.editControl1.SaveStream(System.IO.Stream.Null , Encoding.BigEndianUnicode, Syncfusion.IO.NewLineStyle.Mac)

{% endhighlight %}

### Getting Details of Currently Loaded File

The name of the file that is currently loaded can be set by using the FileName property.



<table>
<tr>
<th>
Edit Control Property</th><th>
Description</th></tr>
<tr>
<td>
FileName</td><td>
Gets / sets the name of the currently opened file.</td></tr>
</table>


{% highlight c# %}



// Gets or sets the name of the file loaded in the Edit Control.

this.editControl1.FileName = "Temp.txt";

{% endhighlight %}

{% highlight vbnet %}



' Gets or sets the name of the file loaded in the Edit Control.

Me.editControl1.FileName = "Temp.txt"

{% endhighlight %}

### Getting Details of Currently Loaded Stream

The name of the stream that is currently loaded in the Edit Control can be set by using the FileOpened property.

<table>
<tr>
<th>
Edit Control Property</th><th>
Description</th></tr>
<tr>
<td>
FileOpened</td><td>
Gets / sets the file stream that is used as an input.</td></tr>
</table>


{% highlight c# %}



// Gets or sets the name of the stream that is currently loaded in the Edit Control.

this.editControl1.FileOpened = new FileStream("Temp.txt", FileMode.Create);

{% endhighlight %}

{% highlight vbnet %}



' Gets or sets the name of the stream that is currently loaded in the Edit Control.

Me.editControl1.FileOpened = New FileStream("Temp.txt", FileMode.Create)

{% endhighlight %}

{% seealso %}

[Creating, Loading and Saving a File](/windowsforms/edit/file-sharing-and-stream-handling#creating-loading-saving-and-dropping-files), [Saving and Canceling Changes](/windowsforms/edit/file-sharing-and-stream-handling#saving-and-cancelling-changes)

{% endseealso %}

### Discard Changes

In the Edit control, all unsaved changes from the current stream can be discarded. This is done to make sure that the changes on the content and recently performed actions be undone.



{% highlight c# %}

/// Discards all unsaved changes from current stream.

Me.editControl1.DiscardChanges();


{% endhighlight %}


{% highlight vbnet %}

‘ Discards all unsaved changes from current stream.

Me.editControl1.DiscardChanges();  

{% endhighlight %}

## Saving And Canceling Changes

This section demonstrates how changes made to the contents of the Edit Control can be saved or discarded.



### SaveOnClose Property

This property specifies whether the default Save Changes prompt should be displayed on closing the Edit Control.



{% highlight c# %}



// Disables the default Save Changes prompt that appears when the form hosting Edit Control containing unsaved contents is closed.

this.editControl1.SaveOnClose = false; 

{% endhighlight %}

{% highlight vbnet %}



' Disables the default Save Changes prompt that appears when the form hosting Edit Control containing unsaved contents is closed.

Me.editControl1.SaveOnClose = False 

{% endhighlight %}

![](File-Sharing-and-Stream-Handling_images/File-Sharing-and-Stream-Handling_img2.jpeg)




### Saving Changes without displaying the Save Changes Prompt

When the SaveOnClose property is set to False, the default Save Changes prompt does not appear. The user should perform some custom Save routine in the Closing event handler of the host form, to save the unsaved contents in the Edit Control; If not they will be lost.



{% highlight c# %}



private void Form1_Closing(object sender, System.ComponentModel.CancelEventArgs e)

{

if (this.editControl1.SaveOnClose == false)

{

if (this.editControl1.SaveModified() == true)

// Perform custom Save routine or show custom Save Changes dialog or set Cancel to False.                       

          e.Cancel = false;

          else

          e.Cancel = true;

}

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub Form1_Closing(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.Closing

If Me.editControl1.SaveOnClose = False Then

If Me.editControl1.SaveModified() = True Then

       ' Perform custom Save routine or show custom Save Changes dialog or set Cancel to False.

       e.Cancel = False

       Else

       e.Cancel = True

       End If

End If

End Sub 'Form1_Closing

{% endhighlight %}

Saving Changes using the Save Changes Prompt

When the SaveOnClose property is set to True, the default Save Changes prompt appears on closing the Edit Control without saving the contents. Click Yes to save the changes, No to discard the changes, or Cancel to close the Save Changes prompt.

The above task can be further customized by handling the Closing event of Edit Control. The Closing event is triggered just before a file or stream is closed in the Edit Control.



{% highlight c# %}



private void editControl1_Closing(object sender, Syncfusion.Windows.Forms.Edit.StreamCloseEventArgs e)

{

// Cancel the file or stream closing action.

e.Action = SaveChangesAction.Cancel;



// Close the file or stream without saving the unsaved contents, the changes will be lost forever.

e.Action = SaveChangesAction.Discard;



// Silently saves the unsaved contents to the currently open file or stream.

// If the contents have not been saved to a file or stream as yet, the Save Changes prompt is displayed.

e.Action = SaveChangesAction.Save;



// Displays the default Save Changes prompt if there are unsaved contents when the file or stream is closed.

e.Action = SaveChangesAction.ShowDialog;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_Closing(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.StreamCloseEventArgs) Handles EditControl1.StreamClose

' Cancel the file or stream closing action.

e.Action = SaveChangesAction.Cancel



' Close the file or stream without saving the unsaved contents, the changes will be lost forever.

e.Action = SaveChangesAction.Discard



' Silently saves the unsaved contents to the currently open file or stream.

' If the contents have not been saved to a file or stream as yet, the Save Changes prompt is displayed

e.Action = SaveChangesAction.Save



' Displays the default Save Changes prompt if there are unsaved contents when the file or stream is closed.

e.Action = SaveChangesAction.ShowDialog

End Sub

{% endhighlight %}


N> The default value of e.Action is SaveChangesAction.ShowDialog.



#### Close Method

This method closes the currently open file or stream and displays the Edit Control in the read-only mode, until a new file or stream is opened.



<table>
<tr>
<th>
Edit Control Method</th><th>
Description</th></tr>
<tr>
<td>
Close</td><td>
Closes stream, makes control readonly.</td></tr>
</table>


{% highlight c# %}



// Closes the currently open file or stream in the Edit Control. 

this.editControl1.Close(); 

{% endhighlight %}

{% highlight vbnet %}



' Closes the currently open file or stream in the Edit Control. 

Me.editControl1.Close()

{% endhighlight %}

{% seealso %}

[Creating, Loading and Saving a File](/windowsforms/edit/file-sharing-and-stream-handling#creating-loading-saving-and-dropping-files), [Loading and Saving Contents](/windowsforms/edit/file-sharing-and-stream-handling#loading-and-saving-contents)

{% endseealso %}

## File Sharing

By default, Edit Control locks the file currently loaded into it, and does not allow access to the same by any external application. To enable file sharing, set the SharedFileMode property of the Edit Control to True.



<table>
<tr>
<th>
Edit Control Property</th><th>
Description</th></tr>
<tr>
<td>
SharedFileMode</td><td>
Gets / sets value indicating whether file should be opened in shared mode.</td></tr>
</table>


{% highlight c# %}



// Enable file sharing.

this.editControl1.SharedFileMode = true;

{% endhighlight %}

{% highlight vbnet %}



' Enable file sharing.

Me.editControl1.SharedFileMode = True

{% endhighlight %}


## Lexical Analysis And Semantic Parsing

Text parsing occurs when a new document is loaded or when modifications occur in an already loaded document. In case of modifications, the Edit Control intelligently combine only what is necessary to ensure that the text model is up to date with the contents of the editor. Ideally, parsing the Edit Control occurs in a two-phase approach. The first phase is lexical analysis and the second one is semantic parsing.

Lexical Analysis breaks up text into tokens, while semantic parsing goes a step further and assigns extra contextual meaning to the tokens. Semantic relations recognized by the semantic parser are based on how human beings represent knowledge of the world. Semantic parsing allows tokens to be accessed and processed in a more meaningful way than lexical analysis, moving the automation of understanding the tokens to a higher level. A semantic parser consumes the output of the lexical analyzer, and operates by analyzing the sequence of tokens returned. The parser matches these sequences to an end state which may be one of the possible end states. The end states define the goals of the parser. When an end state is reached, the program using the parser implements some action-specific code.

Additionally, parsers can detect the situation when no legal end state can be reached, from the sequence of tokens that have been processed.



#### Lexical Analysis

Lexical Analysis is the process of scanning text in a document and breaking it up into meaningful tokens. The purpose of lexical analyzers is to take a stream of input characters, and decode them into higher level tokens that a semantic parser can understand. In this stage, the text is split into tokens with the help of some special rules specified by the user. For instance, the user can specify "=+" or "end if " expressions as single tokens using the Split tag in the configuration file. Tokens are plain text, and have no additional information or meaning associated with them.



#### Semantic Parsing

In this stage, the syntax highlighting rules are applied. These rules can be as simple as identifying the format name of the token, and applying the appropriate font or color settings. But this simple two-phase procedure was not very flexible in complex scenarios involving embedded scripts. Hence the entire process has been enhanced from the very beginning, by merging the lexical analysis and semantic parsing.

The Parser property indicates the parser used for parsing the currently loaded document in the Edit Control. The parsing process could be performed for any (or all) of the following purposes - syntax highlighting, intellisense, outlining and so on. The rules for the parsing process are specified in the XML based configuration file used.



{% highlight c# %}



// Indicates the parser used for parsing the currently loaded document in the Edit Control. 

RenderableLexemParser lexemParser = this.editControl1.Parser;

{% endhighlight %}

{% highlight vbnet %}



' Indicates the parser used for parsing the currently loaded document in the Edit Control. 

Dim lexemParser As RenderableLexemParser = Me.editControl1.Parser

{% endhighlight %}

#### Parsing Modes

Edit Control supports several modes of text parsing which can be specified to the ParsingMode property by using the TextParsingMode enumerator. The default value of the ParsingMode property is set to PartialParsingNoFall back.



<table>
<tr>
<th>
Edit Control Property</th><th>
Description</th></tr>
<tr>
<td>
ParsingMode</td><td>
Gets / sets text parsing mode. User can select between high parsing speed or high syntax highlighting accuracy. The options provided are* FullParsing* PartialParsingNoFall back* PartialParsingWithFall back</td></tr>
</table>



When ParsingMode is set to FullParsing, the text in the Edit Control is parsed completely and accurately, and then features like syntax highlighting, outlining, bracket highlighting, indentation guidelines, and so on are applied. FullParsing is time consuming, and can potentially cause performance issues as Edit Control stays frozen till this process is completed. Ideally, it should be undertaken for small files only.

When ParsingMode is set to PartialParsingNoFall back, text parsing is done on a need basis, i.e., only those regions of the text in the Edit Control that have to be displayed get parsed. The text parsing is not always accurate in such scenarios, and hence features like syntax highlighting, outlining, bracket highlighting, indentation guidelines, and so on, maybe incorrectly applied. This is the fastest ParsingMode in the Edit Control, and hence should be used in large file handling scenarios.

When ParsingMode is set to PartialParsingWithFall back, text parsing is once again done on a need basis like in PartialParsingNoFall back mode. The only difference is that if the text gets incorrectly parsed, the incorrectly parsed text is treated as of type regular "Text" format, and features like syntax highlighting, outlining, bracket highlighting, indentation guidelines, and so on, get applied as per Text format specifications in the associated configuration settings.



{% highlight c# %}



// ParsingMode is set to FullParsing.

this.editControl1.ParsingMode = Syncfusion.Windows.Forms.Edit.Enums.TextParsingMode.FullParsing;

{% endhighlight %}

{% highlight vbnet %}



' ParsingMode is set to FullParsing.

Me.editControl1.ParsingMode = Syncfusion.Windows.Forms.Edit.Enums.TextParsingMode.FullParsing

{% endhighlight %}

## Clearing/Flushing Saved Changes

When the MarkChangedLines property is used in the Edit control, the lines that are changed will be denoted by a yellow color indicator, and the saved lines will be indicated by a green color indicator. 

When the FlushChanges() method is called, the changes performed in the editor after the last save will be removed from the editor, but the saved lines will remain. 

If the FlushSavedLines property is enabled, the FlushChanges() method will remove the previously saved lines along with the recent changes.



<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
FlushSavedLines</td><td>
Gets \ Sets whether to reset the saved lines changes.</td></tr>
</table>


{% highlight c# %}

//Gets or sets a value to reset the saved line changes.

this.editControl1.FlushSavedLines = true;

{% endhighlight %}

{% highlight vbnet %}

//Gets or sets a value to reset the saved line changes.

 Me.editControl1.FlushSavedLines = True

{% endhighlight %}

