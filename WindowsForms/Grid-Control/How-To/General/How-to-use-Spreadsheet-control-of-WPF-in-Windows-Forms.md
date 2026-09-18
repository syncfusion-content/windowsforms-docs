---
layout: post
title: Use WPF Spreadsheet Control in WinForms Grid Control | Syncfusion®
description: Use the Syncfusion® WPF Spreadsheet control in a Windows Forms application by hosting it in an ElementHost container and integrating WPF features.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Use WPF Spreadsheet in Windows Forms Grid Control

You can host that WPF component in Windows Forms through ElementHost container. This support is provided by Microsoft for hosting WPF controls in Windows Forms application. Refer to the following code and sample for more information

{% tabs %}
{% highlight c# %}

ElementHost elementHost = new ElementHost();
elementHost.Size = new System.Drawing.Size(1000, 600);
Spreadsheet control = new Spreadsheet();
elementHost.Child = control;
this.Controls.Add(elementHost);

{% endhighlight  %}

{% highlight vb %}
Dim elementHost As New ElementHost()
elementHost.Size = New System.Drawing.Size(1000, 600)
Dim control As New Spreadsheet()
elementHost.Child = control
Me.Controls.Add(elementHost)

{% endhighlight  %}
{% endtabs %}

## Sample

[https://files2.syncfusion.com/login?ReturnUrl=%2Fdtsupport%2Fdirecttrac%2F123689%2FUCSpreadsheet-2033317448.zip](https://files2.syncfusion.com/login?ReturnUrl=%2Fdtsupport%2Fdirecttrac%2F123689%2FUCSpreadsheet-2033317448.zip)

