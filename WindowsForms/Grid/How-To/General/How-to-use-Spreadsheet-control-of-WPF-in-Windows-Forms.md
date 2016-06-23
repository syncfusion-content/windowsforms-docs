---
layout: post
title: How-to-use-Spreadsheet-control-of-WPF-in-Windows-F | Windows Forms | Syncfusion
description: how to use spreadsheet control of wpf in windows forms?
platform: windowsforms
control: Grid
documentation: ug
---

# How to use Spreadsheet control of WPF in Windows Forms?

You can host that WPF component in Windows Forms through ElementHost container. This support is provided by Microsoft for hosting WPF controls in Windows Forms application. Refer to the following code and sample for more information

{% highlight c# %}

ElementHost elhost = new ElementHost();

elhost.Size = new System.Drawing.Size(1000, 600);

Spreadsheet wpfctl = new Spreadsheet();

elhost.Child = wpfctl;

this.Controls.Add(elhost);


{% endhighlight  %}


{% highlight vb %}

Dim elhost As New ElementHost()

elhost.Size = New System.Drawing.Size(1000, 600)

Dim wpfctl As New Spreadsheet()

elhost.Child = wpfctl

Me.Controls.Add(elhost)

{% endhighlight  %}



## Sample:

[http://www.syncfusion.com/downloads/support/directtrac/123689/UCSpreadsheet-2033317448.zip](http://www.syncfusion.com/downloads/support/directtrac/123689/UCSpreadsheet-2033317448.zip)

