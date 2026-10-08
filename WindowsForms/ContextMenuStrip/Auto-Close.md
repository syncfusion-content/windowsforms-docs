---
layout: post
title: Auto Close in Windows Forms ContextMenuStrip Control | Syncfusion®
description: Use the Auto Close property to control whether the context menu closes on user actions in Syncfusion Windows Forms ContextMenuStrip control.
platform: windowsforms
control: ContextMenuStripEx
documentation: ug
---

# Auto Close in WinForms Context Menu Strip

When the [`AutoClose`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.autoclose?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_AutoClose) property of the WinForms Context Menu Strip is set to `true`, the context menu will close when the user clicks on any menu item or anywhere on the form. If this is set to `false`, the menu will not be closed after any user action, allowing multiple items to be selected in sequence. By default, it is set to `true`.
 

Below code snippet will explain how to set [`AutoClose`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.autoclose?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_AutoClose) property.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.AutoClose = true;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.AutoClose = True

{% endhighlight %}
{% endtabs %}
