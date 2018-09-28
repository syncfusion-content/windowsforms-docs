---
layout: post
title: How to Freeze HubTile functionality in runtime | WindowsForms | Syncfusion
description: How to Freeze HubTile functionality in runtime
platform: WindowsForms
control: HubTile
documentation: ug
--- 

# How to freeze HubTile functionality in runtime?

You can achieve it by setting HubTile Freeze property to `true`.




<Table>
<tr>
<th>Property</th>
<th>Description</th>
</tr>
<tr>
<td>IsFrozen</td>
<td>This property disables HubTile notification functionality.</td>
</tr>
</Table>

{% tabs %}

{% highlight C# %}


this.HubTile1.IsFrozen = true;

{% endhighlight %}

{% highlight VB %} 
 
Me.HubTile1.IsFrozen = True

{% endhighlight %}

{% endtabs %}