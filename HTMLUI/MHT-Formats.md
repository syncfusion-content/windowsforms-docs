---
layout: post
title: MHT-Formats | WindowsForms | Syncfusion
description: mht formats
platform: WindowsForms
control: HTML UI
documentation: ug
---

# MHT Formats

MHTML enables you to send and receive Web pages and other HTML documents by using e-mail programs. MHTML enables you to embed images directly into the body of your e-mail messages rather than attaching them to the message. MHTML uses MIME, which provides facilities to allow multiple objects in a single Internet e-mail message {comma removed} to represent formatted multifont text messages, non-textual materials such as images, and so on. 

HTMLUI supports the usage of the simple MHTML files. The HTMLUI control allows the user to load the MHTML files from the user's drive with the help of the LoadHTML method.



{% highlight c# %}



// LoadHTML() method for loading the mht files in HTMLUI is limited to use filenames only

// No overloads are supported.

this.htmluiControl.LoadHTML(@"C:\MyProjects\MHTSupport\sample.mht"); 


{% endhighlight %}


{% highlight vbnet %}



' LoadHTML() method for loading the mht files in HTMLUI is limited to use filenames only

' No overloads are supported.

Me.htmluiControl.LoadHTML("C:\MyProjects\MHTSupport\sample.mht")

{% endhighlight %}

