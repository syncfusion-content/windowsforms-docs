---
layout: post
title: Freeze HubTile functionality in Windows Forms runtime | Syncfusion®
description: Learn how to freeze HubTile functionality at runtime in Syncfusion Windows Forms by setting the HubTileFreeze property to true.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# Freeze HubTile functionality in Windows Forms runtime

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


