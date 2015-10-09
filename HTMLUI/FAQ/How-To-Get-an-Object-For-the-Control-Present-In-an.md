---
layout: post
title: How-To-Get-an-Object-For-the-Control-Present-In-an | WindowsForms | Syncfusion
description: how to get an object for the control present in an html element in the htmlui control?
platform: WindowsForms
control: HTML UI
documentation: ug
---

# How To Get an Object For the Control Present In an HTML Element In the HTMLUI Control?

You can make use of the GetControlByElement() method of the InputHTML Interface to get an object for the control present in an HTML element in the HTMLUI control. If the HTML element does not contain any control in it, it returns a null value, by default.



{% highlight html %}



<html>

<body> 

<input type="text" id="txt"/>

</body> 

</html>

{% endhighlight %}

{% highlight c# %}



//Initializing the respective control's object

private System.Windows.Forms.RadioButton htmlRadioButton;



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

//Collecting the html elements in a hashtable with their key as id

Hashtable elements = this.htmluiControl1.Document.GetElementsByUserIdHash();

BaseElement radioElem = (BaseElement)elements["radio1"];



//Getting the Control from the html element and assigning it to the required object

//The html element hereafter can be accessed with the help of the htmlRadioButton object

htmlRadioButton = (RadioButton) this.htmluiControl1.Document.GetControlByElement(radioElem);

}

{% endhighlight %}

{% highlight vbnet %}



'Initializing the respective control's object

Private htmlRadioButton As System.Windows.Forms.RadioButton



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)

'Collecting the html elements in a hashtable with their key as id

Dim elements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()

Dim radioElem As BaseElement = CType(elements("radio1"), BaseElement)



'Getting the Control from the html element and assigning it to the required object

'The html element hereafter can be accessed with the help of the htmlRadioButton object

htmlRadioButton = CType(Me.htmluiControl1.Document.GetControlByElement(radioElem), RadioButton)

End Sub

{% endhighlight %}