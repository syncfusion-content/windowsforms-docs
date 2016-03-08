---
layout: post
title: How-To-Access-the-Name-Of-an-HTML-Element-At-Run-t | Windows Forms | Syncfusion
description: how to access the name of an html element at run-time?
platform: windowsforms
control: HTML UI
documentation: ug
---

# How To Access the Name Of an HTML Element At Run-time?

The element.Name property gets the name of the tag that defines the element as an attribute, and not the name of the element defined by the user. You can access the name of the element with the help of the element.Attributes property.

The following HTML document illustrates how an input element with a name is declared and accessed in HTMLUI.



{% highlight html %}



<html>

<body>

<p>

<input type="text" id="txt1" name="textboxOne" size="20"></input>

</p>

</body>

</html>

{% endhighlight %}

{% highlight c# %}



INPUTElementImpl textBox1;

Hashtable htmlelements = this.htmluiControl1.Document.GetElementsByUserIdHash();



//accessing the input element

textBox1 = htmlelements["txt1"] as INPUTElementImpl;



//accessing the tag name of the element

Console.WriteLine("Tag Name of TextBox1:\n"+ textBox1.Name.ToString());



//accessing the attribute name of the element

Console.WriteLine("Name given for TextBox1:\n"+ textBox1.Attributes["name"].Value);

{% endhighlight %}

{% highlight vbnet %}



Private textBox1 As INPUTElementImpl

Private htmlelements As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()



'accessing the input element

Private textBox1 = CType(IIf(TypeOf htmlelements("txt1") Is INPUTElementImpl, 

htmlelements("txt1"), Nothing), INPUTElementImpl)



'accessing the tag name of the element

Console.WriteLine("Tag Name of TextBox1:" & Constants.vbLf+ textBox1.Name.ToString())



'accessing the attribute name of the element

Console.WriteLine("Name given for TextBox1:" & Constants.vbLf+ textBox1.Attributes("name").Value)


{% endhighlight %}