---
layout: post
title: Save Grid Content in Memory in WinForms Grid Control | Syncfusion®
description: Save Grid Control content in memory instead of the file system in Syncfusion® Windows Forms Grid Control using SaveSoap or SaveBinary methods and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Save Grid Content in Memory in Windows Forms Grid Control

You can save the contents of a grid in memory rather than writing to a file system. This can be done using SaveSoap or SaveBinary method of GridControl. The below code snippet illustrates how this can be done.

{% tabs %}
{% highlight c# %}

MemoryStream s = new MemoryStream();
gridControl1.Model.SaveSoap(s); 
s.Position = 0;
gridControl1.Model = GridModel.LoadSoap(s);
gridControl2.Model = GridModel.LoadSoap(s);
{% endhighlight  %}

{% highlight vb %}

Dim s As MemoryStream = New MemoryStream()
gridControl1.Model.SaveSoap(s) 
s.Position = 0
gridControl1.Model = GridModel.LoadSoap(s)
gridControl2.Model = GridModel.LoadSoap(s)
{% endhighlight %}
{% endtabs %}