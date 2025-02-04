---
layout: post
title: MHT Formats in Windows Forms Html Viewer control | Syncfusion®
description: Learn about MHT Formats support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# MHT Formats in Windows Forms Html Viewer (HTMLUI)

MHTML enables you to send and receive Web pages and other HTML documents by using e-mail programs. MHTML enables you to embed images directly into the body of your e-mail messages rather than attaching them to the message. MHTML uses MIME, which provides facilities to allow multiple objects in a single Internet e-mail message {comma removed} to represent formatted multi font text messages, non-textual materials such as images, and so on.

HTMLUI supports the usage of the simple MHTML files. The HTMLUI control allows the user to load the MHTML files from the user's drive with the help of the [LoadHTML](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_LoadHTML_System_IO_Stream_) method.

{% tabs %}

{% highlight C# %}



// LoadHTML() method for loading the mht files in HTMLUI is limited to use filenames only

// No overloads are supported.

this.htmluiControl.LoadHTML(@"C:\MyProjects\MHTSupport\sample.mht"); 


{% endhighlight %}


{% highlight VB %}



' LoadHTML() method for loading the mht files in HTMLUI is limited to use filenames only

' No overloads are supported.

Me.htmluiControl.LoadHTML("C:\MyProjects\MHTSupport\sample.mht")

{% endhighlight %}

{% endtabs %}
