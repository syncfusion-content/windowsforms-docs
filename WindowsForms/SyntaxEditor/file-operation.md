---
layout: post
title: File Operation 
description: This section explains about the file operation functionalities in EditControl
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# File Operation

Supports all file operations like create new, open or save files.

## Load file

[LoadFile](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~LoadFile.html) function loads the content of any desired file into the EditControl.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
LoadFile</td><td>
Shows open file dialog to the user and opens the selected file</td></tr>
</table>

N> The character encoding for the text can also be specified while loading the file.

{% tabs %}

{% highlight C# %}

// Displays the Open File dialog.

this.editControl1.LoadFile();

// Loads the content of the specified file.

this.editControl1.LoadFile("Temp.txt", Encoding.ASCII);

{% endhighlight %}


{% highlight VB %}

' Displays the Open File dialog.

Me.editControl1.LoadFile()

' Loads the content of the specified file. 

Me.editControl1.LoadFile("Temp.txt", Encoding.ASCII)

{% endhighlight %}

{% endtabs %}

### Retrieve loaded file path

The name of the stream that is currently loaded in the Edit Control can be get or set by using the [FileOpened](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FileOpened.html) property.

{% tabs %}

{% highlight C# %}

// Gets or sets the name of the stream that is currently loaded in the EditControl.

this.editControl1.FileOpened = new FileStream("Temp.txt", FileMode.Create);

{% endhighlight %}


{% highlight VB %}

' Gets or sets the name of the stream that is currently loaded in the EditControl.

Me.editControl1.FileOpened = New FileStream("Temp.txt", FileMode.Create)

{% endhighlight %}

{% endtabs %}

### Retrieve loaded file name

By using the [FileName](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FileName.html) property, we can get or set the name of the file that is currently loaded in EditControl.

{% tabs %}

{% highlight C# %}

// Specifies the name of the file loaded in the EditControl.

this.editControl1.FileName = "Temp.txt";

{% endhighlight %}


{% highlight VB %}

' Specifies the name of the file loaded in the EditControl.

Me.editControl1.FileName = "Temp.txt"

{% endhighlight %}

{% endtabs %}

## Load from stream

The contents of the EditControl can also be loaded to a particular stream using specified encoding and line end style using [LoadStream](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~LoadStream.html) function.

{% tabs %}

{% highlight C# %}

// Loads the content of the specified stream into the EditControl.

this.editControl1.LoadStream(streamName);

// Loads the specified stream and configuration.

this.editControl1.LoadStream(streamName, config);

{% endhighlight %}


{% highlight VB %}

' Loads the content of the specified stream into the EditControl.

Me.editControl1.LoadStream(streamName)

' Loads the specified stream and configuration.

Me.editControl1.LoadStream(streamName, config)

{% endhighlight %}

{% endtabs %}

## Drop file to load contents

EditControl provides a complete support for dropping the dragged files into it by using the `DropAllFiles` properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[DropAllFiles](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~DropAllFiles.html)' | markdownify }}
</td><td>
Specifies whether all files can be dropped onto EditControl. If set to `false`, only files with extensions contained in FileExtensions can be dropped</td></tr>
<tr>
<td>
{{ '[FileExtensions](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FileExtensions.html)' | markdownify }}</td><td>
Specifies the extensions of files that can be dropped to EditControl</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Drops all files onto EditControl.

this.editControl1.DropAllFiles = true;

// Specifies the file extensions of files that can be dropped onto EditControl. 

this.editControl1.FileExtensions = new string[] {".cs", ".sql", ".vb", ".xml"};

{% endhighlight %}


{% highlight VB %}

' Drops all files onto EditControl.

Me.editControl1.DropAllFiles = True

' Specifies the file extensions of files that can be dropped onto EditControl.

Me.editControl1.FileExtensions = New String() {".cs", ".sql", ".vb", ".xml"} 

{% endhighlight %}

{% endtabs %}

The following properties can be used to insert text based on conditions that are described as follows.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
{{ '[AllowDrop](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~AllowDrop.html)' | markdownify }}</td><td>
Specifies whether drag and drop operations are allowed for control</td></tr>
<tr>
<td>
{{ '[InsertDroppedFileIntoText](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~InsertDroppedFileIntoText.html)' | markdownify }}</td><td>
Specifies whether the outer file dragged and dropped onto the EditControl should be inserted into the current content. When this property is set to `false`, the current file is closed, and the dropped outer file is opened.</td></tr>
<tr>
<td>
{{ '[ShowFileDropNotification](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ShowFileDropNotification.html)' | markdownify }}</td><td>
Specifies whether the Notification message is to be displayed when the outer file is dragged and dropped onto the EditControl</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//To set the EditControl that allows to Drag and Dropping files

this.editControl1.AllowDrop = true; 

// Specifies whether the outer file dragged and dropped onto the EditControl should be inserted into the current content.

this.editControl1.InsertDroppedFileIntoText = true;

// To hide the notification message displayed when the outer file is dragged and dropped onto the EditControl.

this.editControl1.ShowFileDropNotification = false;

{% endhighlight %}


{% highlight VB %}

'To set the EditControl that allows to Drag and Dropping files

Me.editControl1.AllowDrop = True

‘Specifies whether the outer file dragged and dropped onto the EditControl should be inserted into the current content.

Me.editControl1.InsertDroppedFileIntoText = True

' To hide the notification message displayed when the outer file is dragged and dropped onto the EditControl.

Me.editControl1.ShowFileDropNotification = False

{% endhighlight %}

{% endtabs %}

## File modification

By using [FileModified](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FileModified.html) and [IsModified](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~IsModified.html) property of EditControl we can ensure whether the content of the file was modified or not.

{% tabs %}

{% highlight C# %}

Console.WriteLine(this.editControl1.IsModified);

{% endhighlight %}


{% highlight VB %}

Console.WriteLine(Me.editControl1.IsModified)

{% endhighlight %}

{% endtabs %}

## Create file

[New](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~New.html) and [NewFile](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~NewFile.html) functions helps to create a new stream or file and optionally allows you to set the language to be used by specifying the appropriate configuration settings.

{% tabs %}

{% highlight C# %}

// Creates a new stream with default configuration settings.

this.editControl.New();

// Creates a new file with default configuration settings.

this.editControl.NewFile();

// Creates a new stream with specified configuration settings.

this.editControl.New(ConfigLanguage language);


// Creates a new file with specified configuration settings.

this.editControl.NewFile(IConfigLanguage language);

{% endhighlight %}


{% highlight VB %}

' Creates a new file.

Me.editControl1.NewFile()

Me.editControl1.[New]()

' **config** is Configuration Settings file of type IConfigLanguage.

Me.editControl1.NewFile(config)

Me.editControl1.[New](config)

{% endhighlight %}

{% endtabs %}

![](File-Sharing-and-Stream-Handling_images/File-Sharing-and-Stream-Handling_img4.jpg)

## Discard changes

The changes made to the contents of the EditControl can be discarded by using the [FlushChanges](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~FlushChanges.html) function.

{% tabs %}

{% highlight C# %}

// Saves changes made to the contents of the EditControl into the current stream.

this.editControl1.FlushChanges();

{% endhighlight %}


{% highlight VB %}

' Saves changes made to the contents of the EditControl into the current stream.

Me.editControl1.FlushChanges()

{% endhighlight %}

{% endtabs %}

## Save file

The following functions helps to save a file in EditControl.

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[SaveFile](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SaveFile.html)' | markdownify }}
</td><td>
Saves the contents of the EditControl to a specified file</td></tr>
<tr>
<td>
{{ '[Save](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~Save.html)' | markdownify }}</td><td>
Invokes the save file dialog box and lets you save the contents of the EditControl to the specified file</td></tr>
<tr>
<td>
{{ '[SaveAs](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SaveAs.html)' | markdownify }}</td><td>
Opens SaveAs dialog and prompts you to enter the name of the file</td></tr>
<tr>
<td>
{{ '[SaveModified](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SaveModified.html)' | markdownify }}</td><td>
Saves the file only if it was modified and prompts for filename if needed. This is especially useful when the application is about to be closed or a new file is being loaded into the EditControl</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Saves the contents of the file.

this.editControl1.SaveFile("Temp.txt", Encoding.Unicode, Syncfusion.IO.NewLineStyle.Control);

// Displays the Save File dialog.

this.editControl1.Save();

// Displays the SaveAs dialog. 

this.editControl1.SaveAs();

// Saves the contents of the file after modification, when a new file is loaded, or when a file is closed.

this.editControl1.SaveModified();

{% endhighlight %}


{% highlight VB %}

' Saves the contents of the file.

Me.editControl1.SaveFile("Temp.txt", Encoding.Unicode, Syncfusion.IO.NewLineStyle.Control)

' Displays the Save File dialog.

Me.editControl1.Save()

' Displays the SaveAs dialog. 

Me.editControl1.SaveAs()

' Saves the contents of the file after modification, when a new file is loaded, or when a file is closed.

Me.editControl1.SaveModified()

{% endhighlight %}

{% endtabs %}

### Save as stream

The contents of the EditControl can also be saved to a particular stream using specified encoding and line end style using  [SaveStream](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SaveStream.html) function.

{% tabs %}

{% highlight C# %}

// Saves content to the specified stream using specified encoding and line end style.

this.editControl1.SaveStream(System.IO.Stream.Null , Encoding.BigEndianUnicode, Syncfusion.IO.NewLineStyle.Mac);

{% endhighlight %}


{% highlight VB %}

' Saves content to the specified stream using specified encoding and line end style.

Me.editControl1.SaveStream(System.IO.Stream.Null , Encoding.BigEndianUnicode, Syncfusion.IO.NewLineStyle.Mac)

{% endhighlight %}

{% endtabs %}

The changes made to the contents of the EditControl can be saved or discarded. [SaveOnClose](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~SaveOnClose.html) property specifies whether the default Save Changes prompt should be displayed on closing the EditControl.

{% tabs %}

{% highlight C# %}

// Disables the default Save Changes prompt that appears when the form hosting EditControl containing unsaved contents is closed.

this.editControl1.SaveOnClose = false; 

{% endhighlight %}


{% highlight VB %}

' Disables the default Save Changes prompt that appears when the form hosting EditControl containing unsaved contents is closed.

Me.editControl1.SaveOnClose = False 

{% endhighlight %}

{% endtabs %}

![](File-Sharing-and-Stream-Handling_images/File-Sharing-and-Stream-Handling_img2.jpeg)

### Auto Save file on close

When the `SaveOnClose` property is set to `false`, the default Save Changes prompt does not appear. The user should perform some custom Save routine in the Closing event handler of the host form, to save the unsaved contents in the EditControl. If not, they will be lost.

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

Private Sub Form1_Closing(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.Closing

If Me.editControl1.SaveOnClose = False Then

If Me.editControl1.SaveModified() = True Then

       ' Perform custom Save routine or show custom Save Changes dialog or set Cancel to False.

       e.Cancel = False

       Else

       e.Cancel = True

       End If

End If

End Sub

{% endhighlight %}

{% endtabs %}

When the SaveOnClose property is set to `true`, the default Save Changes prompt appears on closing the EditControl without saving the contents. Click Yes to save the changes, No to discard the changes, or Cancel to close the Save Changes prompt.

The above task can be further customized by handling the Closing event of EditControl. The Closing event is triggered just before a file or stream is closed in the EditControl.

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

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

{% endtabs %}

N> The default value of e.Action is SaveChangesAction.ShowDialog.

## Insert file

The following functions helps to insert a file in EditControl.

<table>
<tr>
<th>
Functions</th><th>
Parameters</th><th>
Description</th></tr>
<tr>
<td>
{{ '[InsertFile](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~InsertFile.html)' | markdownify }}</td><td>
-</td><td>
Shows Insert file dialog and inserts the selected file</td></tr>
<tr>
<td>
{{ '[InsertFile](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~InsertFile.html)' | markdownify }}</td><td>
 public void InsertFile(string filePath)</td><td>
Inserts a file by using file path</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//Displays the Insert dialog box

this.editControl1.InsertFile();

//Insert a file using file path

this.editControl1.InsertFile(@"..\\..\\Form2.cs");

{% endhighlight %}


{% highlight VB %}

'Displays the Insert dialog box

Me.editControl1.InsertFile

'Insert a file using file path

Me.editControl1.InsertFile(@"..\\..\\Form2.cs")

{% endhighlight %}

{% endtabs %}

## Close file

[Close](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~Close.html) function helps to closes the currently open file or stream and displays the EditControl in the read-only mode, until a new file or stream is opened.

<table>
<tr>
<th>
Function</th><th>
Description</th></tr>
<tr>
<td>
Close</td><td>
Closes stream, makes control readonly</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Closes the currently open file or stream in the EditControl. 

this.editControl1.Close(); 

{% endhighlight %}


{% highlight VB %}

' Closes the currently open file or stream in the EditControl. 

Me.editControl1.Close()

{% endhighlight %}

{% endtabs %}
