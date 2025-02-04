---
layout: post
title: Element Format in Windows Forms Html Viewer control | Syncfusion®
description: Learn about Element Format support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTML UI
documentation: ug
---

#  Element format  in Windows Forms Html Viewer control

Essential<sup>®</sup> HTMLUI supports formatting of not only the entire HTML document as a whole, but also the individual elements. With HTMLUI, the user can replace any HTML element into some other format before displaying, in a view to develop advanced user interactivity.


The following snippet shows how a text content can be replaced with an image in a text sequence.

{% tabs %}

{% highlight C# %}



private const string DEF_IMG_TAG = "<img src='..\\..\\clock.jpg'>";

private const string DEF_TIME = "time";



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

// Returns the html element by its ID, defined in HTML document.

IHTMLElement p = this.htmluiControl1.Document.GetElementByUserId("p");



// Replace the  HTML inner text of current element. 

p.InnerHTML = p.InnerHTML.Replace(DEF_TIME, DEF_IMG_TAG);

this.htmluiControl1.Refresh();

}

{% endhighlight %}


{% highlight VB %}



Private Const DEF_IMG_TAG As String = "<img src='..\..\clock.jpg'>"

Private Const DEF_TIME As String = "time"



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)



'  Returns the html element by its ID, defined in HTML document. 

Dim p As IHTMLElement = Me.htmluiControl1.Document.GetElementByUserId("p")



' Replace the  HTML inner text of current element 

p.InnerHTML = p.InnerHTML.Replace(DEF_TIME, DEF_IMG_TAG)

Me.htmluiControl1.Refresh()

End Sub

{% endhighlight %}

{% endtabs %}

The following image shows the text element Time replaced by an image when displayed using HTMLUI.

![Element-Format_img1](Element-Format_images/Element-Format_img1.png)



## ElementFormat sample

This sample illustrates Element Formatting in HTMLUI.



![Element-Format_img2](Element-Format_images/Element-Format_img2.jpeg)



