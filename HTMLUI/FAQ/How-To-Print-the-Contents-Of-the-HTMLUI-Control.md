---
layout: post
title: How-To-Print-the-Contents-Of-the-HTMLUI-Control | WindowsForms | Syncfusion
description: how to print the contents of the htmlui control?
platform: WindowsForms
control: HTML UI
documentation: ug
---

# How To Print the Contents Of the HTMLUI Control?

The document available in the HTMLUI control can be printed with the help of the HTMLUIPrintDocument class. The Print method of this class is used to start the document printing process.



{% highlight c# %}



//represents printing support in the HTMLUI control

HTMLUIPrintDocument pd;

pd = new HTMLUIPrintDocument(this.htmluiControl1.Document);



// starts the printing process 

pd.Print();

{% endhighlight %}

{% highlight vbnet %}



'  represents printing support in the HTMLUI control

Private pd As HTMLUIPrintDocument

Private pd = New HTMLUIPrintDocument(Me.HtmluiControl1.Document)



'  Starts the printing process

pd.Print()

{% endhighlight %}



