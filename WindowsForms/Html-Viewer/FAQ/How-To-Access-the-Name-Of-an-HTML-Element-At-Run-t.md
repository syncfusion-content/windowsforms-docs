---
layout: post
title: How-To-Access-the-Name-Of-an-HTML-Element-At-Run-t | WindowsForms | Syncfusion®
description: how to access the name of an html element at run-time?
platform: windowsforms
control: HTML UI
documentation: ug
---

# How to access the name of an HTML element at run-time?

The element.Name property gets the name of the tag that defines the element as an attribute, and not the name of the element defined by the user. You can access the name of the element with the help of the element.Attributes property.

The following HTML document illustrates how an input element with a name is declared and accessed in HTMLUI.

{% tabs %}

{% highlight HTML %}



<html>

<body>

<p>

<input type="text" id="txt1" name="textboxOne" size="20"></input>

</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



INPUTElementImpl textBox1;

Hashtable tab = this.htmluiControl1.Document.GetElementsByUserIdHash();



//accessing the input element

textBox1 = tab["txt1"] as INPUTElementImpl;



//accessing the tag name of the element

Console.WriteLine("Tag Name of TextBox1:\n"+ textBox1.Name.ToString());



//accessing the attribute name of the element

Console.WriteLine("Name given for TextBox1:\n"+ textBox1.Attributes["name"].Value);

{% endhighlight %}

{% highlight VB %}



Private textBox1 As INPUTElementImpl

Private tab As Hashtable = Me.htmluiControl1.Document.GetElementsByUserIdHash()



'accessing the input element

Private textBox1 = CType(IIf(TypeOf tab("txt1") Is INPUTElementImpl, 

tab("txt1"), Nothing), INPUTElementImpl)



'accessing the tag name of the element

Console.WriteLine("Tag Name of TextBox1:" & Constants.vbLf+ textBox1.Name.ToString())



'accessing the attribute name of the element

Console.WriteLine("Name given for TextBox1:" & Constants.vbLf+ textBox1.Attributes("name").Value)


{% endhighlight %}

{% endtabs %}