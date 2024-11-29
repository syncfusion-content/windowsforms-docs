---
layout: post
title: Clipboard commands in Diagram | Windows Forms| Syncfusion®
description: This section explains how to use the clipboard commands (cut, copy, and paste) to the selected nodes in Essential Diagram
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Copy / Paste Nodes In Essential Diagram

The following code snippet illustrates how you can copy / paste nodes (symbol, shape, or link) in Essential Diagram.

{% tabs %}

{% highlight c# %}

//Copy Code

this.diagram1.Controller.Copy();

//Paste Code

//If the data in the clipboard is of the type ClipboardNodeCollection, paste it onto the Diagram.

IDataObject clipboardData = Clipboard.GetDataObject();

if (clipboardData.GetDataPresent(typeof(ClipboardNodeCollection)))

{

this.diagram1.Controller.Paste();

}

{% endhighlight %}

{% highlight vbnet %}

'Copy Code

Me.diagram1.Controller.Copy()

'Paste Code

'If the data in the clipboard is of the type ClipboardNodeCollection, paste it onto the Diagram.

Dim clipboardData As IDataObject = Clipboard.GetDataObject()

If clipboardData.GetDataPresent(Type.GetType(ClipboardNodeCollection)) Then

Me.diagram1.Controller.Paste()

End If

{% endhighlight %}

{% endtabs %}
