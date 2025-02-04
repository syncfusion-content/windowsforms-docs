---
layout: post
title: How-to-Freeze-HubTile-functionality-in-runtime | WindowsForms | Syncfusion®
description:  how to freeze hubtile functionality in runtime?
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

#  How to freeze HubTile functionality in runtime?

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


