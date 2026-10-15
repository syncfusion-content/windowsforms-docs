---
layout: post
title: How to Print Contents of HTMLUI Control in Html Viewer | Syncfusion®
description: Learn how to printing the contents of the WinForms HTML Viewer control with the print preview dialog.
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# How to Print Contents of WinForms HTML Viewer Control in Html Viewer

The document available in the WinForms HTML Viewer control can be printed with the help of the [HTMLUIPrintDocument](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIPrintDocument.html) class. The Print method of this class is used to start the document printing process.

{% tabs %}

{% highlight c# %}



//represents printing support in the HTMLUI control

HTMLUIPrintDocument pd;

pd = new HTMLUIPrintDocument(this.htmluiControl1.Document);



// starts the printing process 

pd.Print();

{% endhighlight %}

{% highlight VB %}



'  represents printing support in the HTMLUI control

Private pd As HTMLUIPrintDocument

Private pd = New HTMLUIPrintDocument(Me.HtmluiControl1.Document)



'  Starts the printing process

pd.Print()

{% endhighlight %}

{% endtabs %}

