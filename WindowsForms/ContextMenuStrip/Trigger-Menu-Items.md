---
layout: post
title: Trigger Menu Items in WinForms ContextMenuStrip Control | Syncfusion
description: Learn here all about trigger menu items feature of Syncfusion Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Trigger Menu Item in WinForms ContextMenuStrip (ContextMenuStripEx)

On selection, the context menu item functionality is handled through the [`Click`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripitem.click?view=netframework-4.7.2) event for further operations.

> **NOTE**     
> Menu items can also be operated through keyboard shortcuts. The [`Click`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripitem.click?view=netframework-4.7.2) event will be invoked when pressing the shortcut keys.


The below code snippet shows how to append click event for menu items through code behind.

{% tabs %}
{% highlight c# %}

this.toolStripMenuItem1.Click += new System.EventHandler(this.toolStripMenuItem1_Click);
this.toolStripTextBox1.Click += new System.EventHandler(this.toolStripTextBox1_Click);
this.toolStripComboBox1.Click += new System.EventHandler(this.toolStripComboBox1_Click);

{% endhighlight %}

{% highlight vb %}

AddHandler toolStripMenuItem1.Click, AddressOf toolStripMenuItem1_Click
AddHandler toolStripTextBox1.Click, AddressOf toolStripTextBox1_Click
AddHandler toolStripComboBox1.Click, AddressOf toolStripComboBox1_Click

{% endhighlight %}
{% endtabs %}

![Trigger Menu Item](Trigger_Images/Trigger.png)


