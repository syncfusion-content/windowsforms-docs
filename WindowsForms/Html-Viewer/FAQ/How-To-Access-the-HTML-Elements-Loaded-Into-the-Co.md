---
layout: post
title: How-To-Access-the-HTML-Elements-Loaded-Into-the-Co | WindowsForms | Syncfusion®
description: how to access the html elements loaded into the control?
platform: windowsforms
control: HTML UI
documentation: ug
---

# How to access the HTML elements loaded into the control?

The HTML elements are accessed in HTMLUI for developing advanced UIs. The HTML elements are collected in a collection class. When the Hashtable is used as a collection class, it stores the HTML elements with a key, specific for each element.

These elements are then assigned to the code variables. The Code Variables are the objects of the classes that are responsible for the functionality of the tag elements. These classes contain the definitions for the properties, methods and events for the tag elements. These variables will be used in accessing the HTML elements inside the code.

The following HTML document shows an input tag textbox element with an id as the key for accessing it in the Hashtable.

{% tabs %}

{% highlight HTML %} 



<html>

<body> 

<input type="text" id="txt"/>

</body> 

</html>

{% endhighlight %}

{% endtabs %}

The following code snippet illustrates accessing the HTML elements from the above document.

{% tabs %}

{% highlight C# %}



//declaring the code variable of the tag element 

//INPUTElementImpl is responsible for the INPUT tag in HTMLUI 

INPUTElementImpl text;



//Collection class accessing the HTML document with the userID as the key

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();



//Code variable assigned to the html element with the help of the element's id as //the key 

this.text = tab["txt"] as INPUTElementImpl;



//usage of the code variable inside the project 

this.text.UserControl.CustomControl.Text = "HTML Elements in HTMLUI";


{% endhighlight %}

{% highlight VB %}



'declaring the code variable of the tag element 

'INPUTElementImpl is responsible for the INPUT tag in HTMLUI 

Private text As INPUTElementImpl



'Collection class accessing the HTML document with the userID as the key 

Private tab As Hashtable = Me.HtmluiControl1.Document.GetElementsByUserIdHash()



'Code variable assigned to the html element with the help of the element's id as 'the key 

Me.Text = CType(IIf(TypeOf tab("txt") Is INPUTElementImpl, tab("txt"), Nothing), INPUTElementImpl)



'usage of the code variable inside the project 

Me.Text.UserControl.CustomControl.Text = "HTML Elements in HTMLUI"

{% endhighlight %}

{% endtabs %}


