---
layout: post
title: How To Access the Inner HTML Text Of the Current H | Syncfusion®
description: Learn how to how To Access the Inner HTML Text Of the Current H in Syncfusion Windows Forms Html Viewer (HTMLUI) control.
platform: windowsforms
control: HTML UI
documentation: ug
---

# How To Access the Inner HTML Text Of the Current H

You can access the inner HTML text of the current HTML element in the WinForms HTML Viewer control by using the InnerHTML property of the control. This property also allows access to the child elements of the HTML elements.

The following HTML document contains a div element. The code snippet shows how the inner text of the element is accessed and displayed in the output at run time.

{% tabs %}

{% highlight HTML %}


<!-- HTML Document -->

<html>

<body>

<div id="div1">

Have an issue you need to contact Syncfusion<sup>®</sup> about? Use our state of the art incident management

system - Direct-Trac.

</div>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();

DIVElementImpl div1 = this.tab["div1"] as DIVElementImpl;

MessageBox.Show(div1.InnerHTML.ToString());

{% endhighlight %}

{% highlight VB %}



Private tab As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Private div1 As DIVElementImpl = CType(IIf(TypeOf Me.tab("div1") Is DIVElementImpl, 

Me.tab("div1"), Nothing), DIVElementImpl)

MessageBox.Show(div1.InnerHTML.ToString())

{% endhighlight %}

{% endtabs %}

