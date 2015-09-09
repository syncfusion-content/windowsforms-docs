---
layout: post
title: How-To-Add-an-Attribute-To-an-HTML-Element-And-Cha
description: how to add an attribute to an html element and change its value at run-time?
platform: WindowsForms
control: HTML UI
documentation: ug
---

# How To Add an Attribute To an HTML Element And Change Its Value At Run-time?

You can add an attribute to an HTML element using the Add method of the Attributes property, as shown in the following code snippet.



{% highlight c# %}



// textBox is an INPUT element of type 'text' in the HTML document

if(this.textBox.Attributes.Contains("style") == false)

this.textBox.Attributes.Add("style");

{% endhighlight %}

{% highlight vbnet %}



' textBox is an INPUT element of type 'text' in the HTML document

If Me.textBox.Attributes.Contains("style") = False Then

Me.textBox.Attributes.Add("style")

End If

{% endhighlight %}

You can change the value of an element's attribute at run time by using the Value property of that particular attribute, as shown in the below code snippet.



{% highlight c# %}



// textBox is an INPUT element of type 'text' in the HTML document

this.textBox.Attributes["style"].Value = "background-color:red";

{% endhighlight %}

{% highlight vbnet %}



' textBox is an INPUT element of type 'text' in the HTML document

Private Me.textBox.Attributes("style").Value = "background-color:red"

{% endhighlight %}


