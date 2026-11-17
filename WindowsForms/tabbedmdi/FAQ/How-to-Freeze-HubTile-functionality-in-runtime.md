---
layout: post
title: How to Freeze HubTile Functionality in TabbedMDI | Syncfusion®
description: Learn how to freeze the HubTile functionality at runtime in the Syncfusion Windows Forms TabbedMDI control using the IsFrozen property.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to Freeze HubTile Functionality in WinForms TabbedMDI

You can achieve it by setting HubTileFreeze property to `true`.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
IsFrozen</td><td>
This property disables HubTile notification functionality.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.HubTile1.IsFrozen = true;


{% endhighlight %}


{% highlight VB %}

Me.HubTile1.IsFrozen = True

{% endhighlight %}

{% endtabs %}


