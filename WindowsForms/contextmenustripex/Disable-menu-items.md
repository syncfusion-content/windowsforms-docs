---
layout: post
title: Disable menu items | Windows Forms | Syncfusion
description: Menu items can be enabled or disabled based on user requirement.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Disable menu items

We can disable the unused or unsupportive menu items by using this feature. ToolStripItems are enabled by default when they are created, but this can be changed based on user requirement through the [`Enabled`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripmenuitem.enabled?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripMenuItem_Enabled) property.

The below code snippet will explain how to disable the ToolStripItems.

{% tabs %}
{% highlight c# %}

this.toolStripMenuItem1.Enabled = false;
this.toolStripTextBox1.Enabled = false;
this.toolStripComboBox1.Enabled = false;

{% endhighlight %}

{% highlight vb %}

Me.toolStripMenuItem1.Enabled = False
Me.toolStripTextBox1.Enabled = False
Me.toolStripComboBox1.Enabled = False

{% endhighlight %}
{% endtabs %}

![Disable menu items](DisableMenuitems_Images/Disable.png)
