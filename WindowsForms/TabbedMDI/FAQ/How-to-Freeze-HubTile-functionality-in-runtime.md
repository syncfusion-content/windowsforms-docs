---
layout: post
title: How-to-Freeze-HubTile-functionality-in-runtime | WindowsForms | Syncfusion
description:  how to freeze hubtile functionality in runtime?
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

#  How to Freeze HubTile functionality in runtime?

You can achieve it by setting HubTileFreeze property to ‘true’.

Property Table

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


{% highlight c# %}

this.HubTile1.IsFrozen = true;


{% endhighlight %}


{% highlight vbnet %}

Me.HubTile1.IsFrozen = True

{% endhighlight %}



