---
layout: post
title: Text Selection in Windows Forms Html Viewer control | Syncfusion®
description: Learn about Text Selection support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# Text Selection in Windows Forms Html Viewer (HTMLUI)

An interesting feature of the HTMLUI control is its ability to access the selected text. This feature helps the user to select required texts available in the HTMLUI control and use the selected text in the applications. The [SelectedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_SelectedText) property of the HTMLUI control is used for this purpose.


{% tabs %}

{% highlight C# %}



// Return the selected text displayed in  the control

this.label1.Text = this.htmluiControl1.SelectedText;  

{% endhighlight %}

{% highlight VB %}



' Return the selected text displayed in the control

Me.label1.Text = Me.HtmluiControl1.SelectedText

{% endhighlight %}

{% endtabs %}

### CopyTextToClipBoard

The HTMLUI control allows the user to copy the text selected in the HTMLUI control to the Clipboard, and paste it in other applications. The following code snippet shows how this feature is implemented with the HTMLUI control.

{% tabs %}

{% highlight C# %}



string text = this.htmluiControl.SelectedText.ToString();

if (text != "")

{

//Copying the selected text to the ClipBoard

Clipboard.SetDataObject(text);

}  

{% endhighlight %}

{% highlight VB %}



Private text As String = Me.htmluiControl.SelectedText.ToString()

If text <> "" Then



' Copying the selected text to the ClipBoard

Clipboard.SetDataObject(text)

End If

{% endhighlight %}

{% endtabs %}

## HTMLUITextSelection sample

This sample demonstrates the support for Text Selection in HTMLUI.



![HTMLUIControl supports text selection](Text-Selection_images/Text-Selection_img1.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



