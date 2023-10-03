---
layout: post
title: Auto Close in Windows Forms ContextMenuStrip Control | Syncfusion
description: Learn here all about Auto Close feature of Syncfusion Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Auto Close in Windows Forms ContextMenuStrip (ContextMenuStripEx)

When [`AutoClose`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.autoclose?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_AutoClose) property of the ContextMenuStrip control is set to `true`, context menu will get closed when user clicks on any menu item or form. If this is not enabled, the menu items will not be closed even after any user action. By default it is set to `true`.
 

Below code snippet will explain how to set [`AutoClose`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.autoclose?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_AutoClose) property.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.AutoClose = true;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.AutoClose = True

{% endhighlight %}
{% endtabs %}
