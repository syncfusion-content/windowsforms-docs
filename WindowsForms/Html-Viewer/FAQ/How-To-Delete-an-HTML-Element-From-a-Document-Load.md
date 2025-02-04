---
layout: post
title: How-to-delete-an-HTML-Element | WindowsForms | Syncfusion®
description: how to delete an html element from a document loaded into the htmlui control at run-time?
platform: WindowsForms
control: HTMLUIControl
documentation: ug
---

# How to delete an HTML element from a document loaded into the HTMLUI control at run-time?

The HTML elements loaded in the HTMLUI control are collected in the IHTMLElementsCollection. You can make use of the Remove method of the [IHTMLElementsCollection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.IHTMLElementsCollection.html) Interface to remove an element from the current collection, and the Refresh method to redraw the HTMLUI control with changes updated in the current document.

The following HTML document contains a textbox and a button element. The following code snippet shows how the textbox and the button are removed from the HTMLUI control's display at run time.

{% tabs %}

{% highlight HTML %}

<!-- HTML document -->

<html>

<body>

<p>

<input type="text" id="txt1"></input>

</p>

<p>

<input type="button" id="btn1" value="Button1"></input>

</p>

</body>

</html>

{% endhighlight %}

{% highlight C# %}



IHTMLElement text1;

IHTMLElement btn1;



private System.Windows.Forms.Button button1;

button1.Click += new System.EventHandler(this.button1_Click);

htmluiControl1.LoadFinished += new System.EventHandler(this.htmluiControl1_LoadFinished);



private void htmluiControl1_LoadFinished(object sender, System.EventArgs e)

{

this.text1 = this.htmluiControl1.Document.GetElementByUserId("txt1");

this.btn1 = this.htmluiControl1.Document.GetElementByUserId("btn1");

}



private void button1_Click(object sender, System.EventArgs e)

{

this.text1.Parent.Children.Remove(this.text1); 

this.btn1.Parent.Children.Remove(this.btn1);

this.htmluiControl1.Refresh();

}

{% endhighlight %}

{% highlight VB %}



Private text1 As IHTMLElement

Private btn1 As IHTMLElement



Private button1 As System.Windows.Forms.Button

Private button1.Click += New System.EventHandler(Me.button1_Click)

Private htmluiControl1.LoadFinished += New System.EventHandler(Me.htmluiControl1_LoadFinished)



Private Sub htmluiControl1_LoadFinished(ByVal sender As Object, ByVal e As System.EventArgs)

Me.text1 = Me.htmluiControl1.Document.GetElementByUserId("txt1")

Me.btn1 = Me.htmluiControl1.Document.GetElementByUserId("btn1")

End Sub



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

Me.text1.Parent.Children.Remove(Me.text1)

Me.btn1.Parent.Children.Remove(Me.btn1)

Me.htmluiControl1.Refresh()

End Sub

{% endhighlight %}

{% endtabs %}
