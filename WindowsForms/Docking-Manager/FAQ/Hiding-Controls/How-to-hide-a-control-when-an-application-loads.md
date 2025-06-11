---
layout: post
title: How to hide a control when an application loads | WindowsForms | Syncfusion®
description: How to hide a control when an application loads
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to hide a control when an application loads?

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




