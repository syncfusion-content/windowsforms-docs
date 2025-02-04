---
layout: post
title: How To Enable User Interaction With the HTML Elements | Syncfusion®
description: how to enable user interaction with the html elements in Syncfusion® Windows Forms HTML UI control and more details.
platform: WindowsForms
control: HTML UI
documentation: ug
---

# How To Enable User Interaction With the HTML

This page explains How To Enable User Interaction With the HTML Elements and more details.

## How to enable user interaction with the HTML elements

The HTMLUI control supports a rich set of interactivity with the elements displayed. The HTML elements in the HTML document are accessed with the object variables of the respective classes.

HTMLUI control gives a free hand to the user in deciding each and every factor of the element's display. Some include selecting the position of the control, attaching the attributes at run time, attaching events with the element, changing the text inside it at run time, and so on.

The following snippet shows how the elements interact with each other on the execution of their respective events.

{% tabs %}

{% highlight HTML %}



<html>

<head>

<title>HTMLUI Element Interactivity</title>

</head>

<body bgcolor="#DBE2F2">

<p><input type="button" id="btn" value="HTMLButton"/></p>

<p><div id="div">HTMLUI supports a wide variety of HTML tags that can be used to display very rich HTML documents.</div></p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



// Class that is responsible for <input> tag

INPUTElementImpl button; 



// Class that is responsible for <div> tag

DIVElementImpl div;



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{



 Hashtable html = this.htmluiControl1.Document.GetElementsByUserIdHash();

 this.button = html["btn"] as INPUTElementImpl;

 this.div = html["div"] as DIVElementImpl;

 this.button.Click += new EventHandler(button_Click);



 // Event raised when InnerHtml property changed

 this.div.InnerHTMLChanged += new ValueChangedEventHandler(div_InnerHTMLChanged);

}



private void button_Click(object sender, EventArgs e)

{



    // Gets or sets text, the inner part of the element. Inner part includes children of the current element.

this.div.InnerHTML = "HTMLUI is very easy to use with complete designer integration. The control is very powerful and rich interfaces can be created with minimal coding.";

}



private void div_InnerHTMLChanged(object sender, ValueChangedEventArgs e)

{



    // Returns the HTML text including inner and current element text; also current element is added in to 

   // the output.

this.div.Children.Parent.Parent.InnerHTML = this.div.OuterHTML + "<p/><img src='HTMLUI.gif'/>";

}

{% endhighlight %}

{% highlight VB %}



'  Class that is responsible for <input> tag

Private button As INPUTElementImpl



' Class that is responsible for <div> tag    

Private div As DIVElementImpl



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)



Dim html As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Me.button = CType(IIf(TypeOf html("btn") Is INPUTElementImpl, html("btn"), Nothing), INPUTElementImpl)

Me.div = CType(IIf(TypeOf html("div") Is DIVElementImpl, html("div"), Nothing), DIVElementImpl)

AddHandler button.Click, AddressOf button_Click



// Event raised when InnerHtml property changed

AddHandler div.InnerHTMLChanged, AddressOf div_InnerHTMLChanged

End Sub



Private Sub button_Click(ByVal sender As Object, ByVal e As EventArgs)



' Gets or sets text, the inner part of the element. Inner part includes children of the current element.

Me.div.InnerHTML = "HTMLUI is very easy to use with complete designer integration. The control is very powerful and rich interfaces can be created with " & ControlChars.CrLf & "minimal coding."

End Sub



Private Sub div_InnerHTMLChanged(ByVal sender As Object, ByVal e As ValueChangedEventArgs)



'  Returns the HTML text including inner and current element text; also current element is added in to 

'   the output

Me.div.Children.Parent.Parent.InnerHTML = Me.div.OuterHTML & "<p/><img src='HTMLUI.gif'/>"

End Sub

{% endhighlight %}

{% endtabs %}

The button and the div elements are obtained. Events are declared for both the elements, and on clicking the button, the text inside the div element changes. When the text inside the div element is changed, an image element is appended to the div element. This shows how interactivity can be handled in HTMLUI.



![Frequently-Asked-Questions_img2](FAQ_images/Frequently-Asked-Questions_img2.jpeg)




