---
layout: post
title: How-To-Specify-a-CSS-File-For-HTML-Content | WindowsForms | Syncfusion®
description: how to specify a css file for html content?
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# How to specify a CSS file for HTML content?

Style sheets contain the styles to be applied for the elements in the HTML document. HTMLUI supports the use of styles in three modes:



* Inline style sheet (inside an HTML element).
* Internal style sheet (inside the tag).
* External style sheet (as a separate file).



The HTMLUI control supports formatting the HTML document with style sheets at run time. The [LoadCSS](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_LoadCSS_System_IO_Stream_) method of the HTMLUI control loads the styles from the specified CSS and refreshes the current document on the HTMLUI control with the applied styles.

{% tabs %}

{% highlight C# %}



// Loads styles from the specified CSS document from a System.IO.Stream and refresh the current

// document using the styles

this.htmluiControl1.LoadCSS(@"C:\MyProjects\LoadCSS\style.css");

{% endhighlight %}

{% highlight VB %}



'  Loads styles from the specified CSS document from a System.IO.Stream and refresh the current

' document using the styles 

Me.HtmluiControl1.LoadCSS("C:\MyProjects\LoadCSS\style.css")

{% endhighlight %}

{% endtabs %}
