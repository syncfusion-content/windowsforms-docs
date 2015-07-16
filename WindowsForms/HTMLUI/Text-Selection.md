---
layout: post
title: Text-Selection
description: text selection
platform: WindowsForms
control: HTML UI
documentation: ug
---

# Text Selection

An interesting feature of the HTMLUI control is its ability to access the selected text. This feature helps the user to select required texts available in the HTMLUI control and use the selected text in the applications. The SelectedText property of the HTMLUI control is used for this purpose.



[C#]



// Return the selected text displayed in  the control

this.label1.Text = this.htmluiControl1.SelectedText;  



[VB.NET]



' Return the selected text displayed in the control

Me.label1.Text = Me.HtmluiControl1.SelectedText



CopyTextToClipBoard

The HTMLUI control allows the user to copy the text selected in the HTMLUI control to the Clipboard, and paste it in other applications. The following code snippet shows how this feature is implemented with the HTMLUI control.

[C#]



string text = this.htmluiControl.SelectedText.ToString();

if (text != "")

{

//Copying the selected text to the ClipBoard

Clipboard.SetDataObject(text);

}  



[VB.NET]



Private text As String = Me.htmluiControl.SelectedText.ToString()

If text &lt;&gt; "" Then



' Copying the selected text to the ClipBoard

Clipboard.SetDataObject(text)

End If



## HTMLUITextSelection Sample

This sample demonstrates the support for Text Selection in HTMLUI.



{ ![](Text-Selection_images/Text-Selection_img1.jpeg) | markdownify }
{:.image }




By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



