---
layout: post
title: How to auto hide a control when an application loads | WindowsForms | Syncfusion®
description: How to auto hide a control when an application loads
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to auto hide a control when an application loads

A control can be auto hidden on loading, by enabling the `AutoHideOnLoad` property through designer or by calling `SetAutoHideOnLoad` method programmatically.

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
SetAutoHideOnLoad</td><td>
AutoHides the docked control when the application loads. The parameters are,{{ 'Ctrl' | markdownify }} - Indicates the docked control.{{ 'bautohide' | markdownify }} - Value indicating `true` or `false`.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.dockingManager1.SetAutoHideOnLoad(this.listBox1, true);

{% endhighlight %}

{% highlight VB %}

Me.DockingManager1.SetAutoHideOnLoad(Me.ListBox1, True)

{% endhighlight %}

{% endtabs %}


