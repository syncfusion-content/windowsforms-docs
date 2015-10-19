---
layout: post
title: How To Copy  Paste Nodes In Essential Diagram | Diagram | WindowsForms | Syncfusion
description: how to copy / paste nodes in essential diagram
platform: WindowsForms
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
