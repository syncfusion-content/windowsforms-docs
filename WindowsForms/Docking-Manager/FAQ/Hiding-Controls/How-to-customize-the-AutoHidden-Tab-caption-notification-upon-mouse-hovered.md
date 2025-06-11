---
layout: post
title: How to customize the AutoHidden Tab caption notification upon mouse hovered | WindowsForms | Syncfusion®
description: How to customize the AutoHidden Tab caption notification upon mouse hovered
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to customize the AutoHidden Tab caption notification upon mouse hovered?

In DockingManager, by default the width of the AutoHidden Tab can be adjusted for notification purpose upon mouse hovered on it.

This can be achieved by using the `EnableAutoAdjustCaption` property.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
EnableAutoAdjustCaption</td><td>
Gets or sets whether to Auto adjust the AutoHiddenTab width upon Mouse hover and selection.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

// Gets or sets whether to Auto adjust the AutoHiddenTab width upon mouse hover and selection

this.dockingManager1.EnableAutoAdjustCaption = false;

{% endhighlight %}


{% highlight VB %}

'Gets or sets whether to Auto adjust the AutoHiddenTab width upon mouse hover and selection

Me.dockingManager1.EnableAutoAdjustCaption = false

{% endhighlight %}

{% endtabs %}

