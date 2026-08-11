---
layout: post
title: How to hide on load in Windows Forms Docking Manager | Syncfusion®
description: Learn how to hide a control when an application loads in Syncfusion Windows Forms Docking Manager control with examples.
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to hide on load in Windows Forms Docking Manager

This is done programmatically, by calling `SetHiddenOnLoad` method or through Designer, by setting `HiddenOnLoad` property to `true`.


<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
SetHiddenOnLoad</td><td>
Hides the docked control when the application loads. The parameters are,{{ 'Ctrl' | markdownify }} - Indicates the docked control.{{ 'bhidden' | markdownify }} - Value indicating `true` or `false`.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.dockingManager1.SetHiddenOnLoad(this.listBox1, true);

{% endhighlight %}


{% highlight VB %}


Me.dockingManager1.SetHiddenOnLoad(Me.listBox1, True)

{% endhighlight %}

{% endtabs %}




