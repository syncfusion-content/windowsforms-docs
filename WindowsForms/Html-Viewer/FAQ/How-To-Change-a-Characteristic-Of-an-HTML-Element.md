---
layout: post
title: Change-a-Characteristic-Of-an-HTML-Element | WindowsForms | Syncfusion®
description: how to change a characteristic of an html element before it is displayed?
platform: WindowsForms
control: HTMLUIControl
documentation: ug
---

# How to change a characteristic of an HTML element before it is displayed?

The characteristic of an element can be easily changed in the PreRenderDocument event of the HTMLUI control.

The [PreRenderDocument](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html) event is raised when the elements in the HTML document are created in the HTMLUI control, but their size and location are not calculated yet.

{% tabs %}

{% highlight HTML %}

<html>

<body bgcolor="#c4d6e9">

<h1>Syncfusion</h1>

<h4>.NET Essentials</h4>

<p>

<img id="image" src="files/oldImage.gif"/>

</p>

<p>

Essential Studio<sup>®</sup> includes ten component libraries in one great package. Each of these products has a unique and useful feature set. Syncfusion<sup>®</sup> aims to provide customers with the utmost satisfaction and value in using Syncfusion<sup>®</sup> and Microsoft technologies through our technical consulting and training services.

</p>

</body>

</html>

{% endhighlight %}

{% endtabs %}

The following snippet shows how an image reference is changed for a page in the HTMLUI at run time, by using the PrerenderDocument event. 

{% tabs %}

{% highlight C# %}



Hashtable tab = new Hashtable();



// Event Declaration.

this.htmluiControl1.PreRenderDocument += newSyncfusion.Windows.Forms.HTMLUI.PreRenderDocumentEventHandler(this.htmluiControl1_PreRenderDocument);



// Event that is to be raised when a tree of element has been created and their size and location have 

// not been calculated yet.

private void htmluiControl1_PreRenderDocument(object sender,PreRenderDocumentArgs e)

{

// Create and Return the Hash Table where key is Tag name(Element.Name) and Value is array of

// elements with Current name.

this.tab = e.Document.GetElementsByNameHash();

ArrayList image = this.tab["img"] as ArrayList;

foreach(BaseElement elem in image)

{

string oldValue = elem.Attributes["src"].Value;

string newValue = @"C:\MyProjects\ImageHandling\newImage.jpg";



// Replace or change the value of the attribute in the element at run time.

elem.Attributes["src"].Value = oldValue.Replace(elem.Attributes["src"].Value, newValue);

Console.WriteLine(elem.Attributes["src"].Value);

}

} 

{% endhighlight %}

{% highlight VB %}



Private tab As Hashtable = New Hashtable()



' Event Declaration.

Me.htmluiControl1.PreRenderDocument += New Syncfusion.Windows.Forms.HTMLUI.PreRenderDocumentEventHandler(Me.htmluiControl1 _PreRenderDocument)



' Event that is to be raised when a tree of element has been created and their size and location have 

' not been calculated yet.

Private Sub htmluiControl1_PreRenderDocument(ByVal sender As Object, ByVal e As PreRenderDocumentArgs)



' Create and Return the Hash Table where key is Tag name(Element.Name) and Value is array of

' elements with Current name.

Me.tab = e.Document.GetElementsByNameHash()

Dim image As ArrayList = CType(IIf(TypeOf Me.tab("img") Is ArrayList, Me.tab("img"), Nothing), ArrayList)

For Each elem As BaseElement In image

Dim oldValue As String = elem.Attributes("src").Value

Dim newValue As String =@"C:\MyProjects\ImageHandling\newImage.jpg";



' Replace or change the value of the attribute in the element at run time.

elem.Attributes("src").Value = oldValue.Replace(elem.Attributes("src").Value, newValue)

Console.WriteLine(elem.Attributes("src").Value)

Next elem

End Sub

{% endhighlight %}

{% endtabs %}

The following figure illustrates this behavior where the oldImage has been replaced by newImage.



![OldImage has been replaced by newImage](FAQ_images/Frequently-Asked-Questions_img1.jpeg)

