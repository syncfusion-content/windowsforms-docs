---
layout: post
title: How to Freeze HubTile Functionality in TabbedMDI | Syncfusion®
description: Learn how to freeze HubTile functionality at runtime in Syncfusion Windows Forms TabbedMDI control, its elements and more details.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# How to Freeze HubTile Functionality in TabbedMDI

You can achieve it by setting HubTileFreeze property to `true`.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</td></tr>
<tr>
<td>
IsFrozen</td><td>
This property disables HubTile notification functionality.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.HubTile1.IsFrozen = true;


{% endhighlight %}


{% highlight VB %}

Me.HubTile1.IsFrozen = True

{% endhighlight %}

{% endtabs %}


