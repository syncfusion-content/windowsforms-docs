---
layout: post
title: How-To-Specify-a-CSS-File-For-HTML-Content | Windows Forms | Syncfusion
description: how to specify a css file for html content?
platform: windowsforms
control: HTML UI
documentation: ug
---

# How To Specify a CSS File For HTML Content?

Style sheets contain the styles to be applied for the elements in the HTML document. HTMLUI supports the use of styles in three modes:



* Inline style sheet (inside an HTML element)
* Internal style sheet (inside the tag) 
* External style sheet (as a separate file)



The HTMLUI control supports formatting the HTML document with style sheets at run time. The LoadCSS method of the HTMLUI control loads the styles from the specified CSS and refreshes the current document on the HTMLUI control with the applied styles.



{% highlight c# %}



// Loads styles from the specified CSS document from a System.IO.Stream and refresh the current

// document using the styles

this.htmluiControl1.LoadCSS(@"C:\MyProjects\LoadCSS\style.css");

{% endhighlight %}

{% highlight vbnet %}



'  Loads styles from the specified CSS document from a System.IO.Stream and refresh the current

' document using the styles 

Me.HtmluiControl1.LoadCSS("C:\MyProjects\LoadCSS\style.css")

{% endhighlight %}

