---
layout: post
title: How-To-Load-HTML-Into-the-HTMLUI-Control | WindowsForms | Syncfusion®
description:  how to load html into the htmlui control?
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

#  How to load HTML into the HTMLUI control?

You can make use of the [GetControlByElement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.InputHTML.html#Syncfusion_Windows_Forms_HTMLUI_InputHTML_GetControlByElement_Syncfusion_Windows_Forms_HTMLUI_IHTMLElement_) method of the InputHTML Interface to get an object for the control present in an HTML element in the HTMLUI control. If the HTML element does not contain any control in it, it returns a null value, by default.

{% tabs %}

{% highlight HTML %}

<html>

<body> 

<input type="text" id="txt"/>

</body> 

</html>

{% endhighlight %}

{% highlight C# %}



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

{% highlight VB %}



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

{% endtabs %}

## Loading as startup document

An HTML document can be loaded at startup by two ways:

* Using the Properties window.
* Using coding.



Using the Properties window, involves specifying the location of the startup HTML file by using the StartupDocument property of the HTMLUI control. The link shown at the bottom of the Properties window can also be used for the same purpose.

![Startup document](FAQ_images/Frequently-Asked-Questions_img3.jpeg)





While using code for the Startup Document, it should be written in the Form_Load event that occurs before the form is displayed for the first time.

{% tabs %}

{% highlight C# %}



// Get or Set the path to the Startup Document for the control.

private void Form1_Load(object sender, System.EventArgs e)

{

this.htmluiControl1.StartupDocument = @"C:\MyProjects\Startup\startup_page.htm";

}

{% endhighlight %}

{% highlight VB %}



‘Get or Set the path to the Startup Document for the control.

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.htmluiControl1.StartupDocument = "C:\MyProjects\Startup\startup_page.htm"

End Sub

{% endhighlight %}

{% endtabs %}

## Loading at run time

HTML documents can also be loaded at run time. For example, in a file link where an HTML file may link to another file. In that case, a new file is loaded in the control after the one that was initially loaded.

The various ways of loading the document at run time from various resources are:

To load the file from disk into the HTMLUI, the following code snippet can be used.

{% tabs %}

{% highlight C# %}



// Load the specified HTML document from Disk at runtime.

string path = @"C:\MyProjects\LoadHTML\FromDisk.htm";

this.htmluiControl1.LoadHTML(path);

{% endhighlight %}

{% highlight VB %}



' Load the specified HTML document from Disk at runtime.

Private path As String = "C:\MyProjects\LoadHTML\FromDisk.htm"

Me.HtmluiControl1.LoadHTML(path)

{% endhighlight %}

{% endtabs %}

The above snippet can also be used to load HTML documents which are linked to the specified HTML documents, as links are easily invoked in HTMLUI.

To load a file from the URI, the following code snippet can be used.

{% tabs %}

{% highlight C# %}



using System.Net;



Uri uri = new Uri( "http://www.syncfusion.com");

htmluiControl1.LoadHTML( uri );

{% endhighlight %}

{% highlight VB %}



Imports System.Net



Private uri As Uri = New Uri("http://www.syncfusion.com")

HtmluiControl1.LoadHTML(uri)

{% endhighlight %}

{% endtabs %}

Loading HTML in the form of a string can be done as shown below.

{% tabs %}

{% highlight C# %}



string htmlCode ="<HTML><HEAD><TITLE>HI</TITLE></HEAD>

<BODY bgcolor='#ffffff'><INPUT type='button' id='btn'/></INPUT></BODY></HTML>";

this.htmluiControl1.LoadFromString(htmlCode);

{% endhighlight %}

{% highlight VB %}



Private htmlCode As String = "<HTML><HEAD><TITLE>HI</TITLE></HEAD>"

<BODY bgcolor="#ffffff'><INPUT type='button' id='btn'/></INPUT></BODY></HTML>"

Me.HtmluiControl1.LoadFromString(htmlCode)

{% endhighlight %}

{% endtabs %}

To load an HTML file as an embedded resource, follow the given steps:

1. Add an HTML file as an Embedded Resource to the application.
2. Set its BuildAction as Embedded Resource.
3. Include the following code snippet.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}



Stream htmlStream = (Stream)Assembly.GetExecutingAssembly().GetManifestResourceStream

("LoadingFileFromResource.report.htm");

this.htmluiControl1.LoadHTML(htmlStream);

{% endhighlight %}

{% highlight VB %}



Private htmlStream As Stream = CType(System.Reflection.Assembly.GetExecutingAssembly().GetManifestResourceStream("LoadingFileFromResource.report.htm"), Stream)

Me.HtmluiControl1.LoadHTML(htmlStream)

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

N> The string entered inside the GetManifestResourceStream method is in reference to the Default namespace found in the Properties window of the C# file in the Solution Explorer. This may vary for the users.


