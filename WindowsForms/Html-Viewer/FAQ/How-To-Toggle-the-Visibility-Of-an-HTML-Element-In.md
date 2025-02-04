---
layout: post
title: How-To-Toggle-the-Visibility-Of-an-HTML-Element-In | WindowsForms | Syncfusion®
description: how to toggle the visibility of an html element in the htmlui control at run-time?
platform: windowsforms
control: HTML UI
documentation: ug
---

# How to toggle the visibility of an HTML element in the HTMLUI control at run-time?

Each HTML element in the HTMLUI has an xVisible attribute by default that helps the user to toggle the visibility of a particular element. Since the xVisible is a bool property, the value to be set is either `true` or `false`, as string.

The following code snippet shows how the visibility of an element is toggled on the execution of an event.

{% tabs %}

{% highlight HTML %}

<html>

<body>

<table>

<tr>

<td id="popup">Cell Toggle</td>

<td id="popup">Cell Toggle</td>

</tr>

<tr>

<td colspan="2">

<img src="sync.gif" id="img"/>

</td>

</tr>

</table>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



IHTMLElement image = Global.Document.GetElementByUserId("img");

image.Click += new EventHandler(image_Click);

IHTMLElement[] elem = this.htmluiControl1.Document.GetElementsByName("td");



public void image_Click(object sender, EventArgs e)

{

string visibleString = "";

htmluiControl1.BeginUpdate();

if(this.bDescriptionHidden == false)

visibleString = "false";

else

visibleString = "true";

this.bDescriptionHidden = !this.bDescriptionHidden;

foreach (IHTMLElement description in elem)

{

if(description.ID == "popup")

description.Attributes["xVisible"].Value = visibleString;

}

htmluiControl1.EndUpdate();

this.htmluiControl1.Refresh();

}

{% endhighlight %}

{% highlight VB %}



Private image As IHTMLElement = Global.Document.GetElementByUserId("img")

Private image.Click += New EventHandler(image_Click)

Private elem As IHTMLElement() = Me.htmluiControl1.Document.GetElementsByName("td")



Public Sub image_Click(ByVal sender As Object, ByVal e As EventArgs)

Dim visibleString As String = ""

htmluiControl1.BeginUpdate()

If Me.bDescriptionHidden = False Then

visibleString = "false"

Else

visibleString = "true"

End If

Me.bDescriptionHidden = Not Me.bDescriptionHidden

For Each description As IHTMLElement In elem

If description.ID = "popup" Then

description.Attributes("xVisible").Value = visibleString

End If

Next description

htmluiControl1.EndUpdate()

Me.htmluiControl1.Refresh()

End Sub

{% endhighlight %}

{% endtabs %}