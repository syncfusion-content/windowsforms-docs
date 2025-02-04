---
layout: post
title: How-To-Access-All-the-Child-Elements | WindowsForms | Syncfusion®
description: how to access all the child elements of an html element in the htmlui control?
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# How to access all the child elements of an HTML element in the HTMLUI control?

The [IHTMLElement.Children](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.IHTMLElement.html#Syncfusion_Windows_Forms_HTMLUI_IHTMLElement_Children) property of any IHTMLElement, collects all the child elements of a specified HTML element inside an IHTMLElementsCollection. You can access the elements needed for your conditions from this collection.

The following code snippet illustrates how the child elements of the Body element in the given HTML document are searched to access elements containing the OnClick attribute and how a Click event is attached to those elements.

{% tabs %}

{% highlight HTML %}

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

{% endhighlight %}

{% highlight C# %}



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

BubblingEventArgs argument = HTMLUIControl.GetBublingEventArgs(e);

//Accessing the element that is sending the event

BaseElement elem = argument.RootSender as BaseElement;

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

{% endhighlight %}

{% highlight VB %}



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

Dim argument As BubblingEventArgs = HTMLUIControl.GetBublingEventArgs(e)

'Accessing the element that is sending the event

Dim elem As BaseElement = CType(IIf(TypeOf argument.RootSender Is BaseElement, argument.RootSender, Nothing), BaseElement)



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

{% endhighlight %}

{% endtabs %}


