---
layout: post
title: Frequently Asked Questions
description: Frequently Asked Questions
platform: windowsforms
control: HubTile
documentation: ug
--- 

 # How to Freeze HubTile functionality in runtime?

You can achieve it by setting HubTile Freeze property to ‘true’.

_Table 983: Property Table_


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


{% highlight C# %}  


this.HubTile1.IsFrozen = true;

 {% endhighlight %}

{% highlight vbnet %} 
 
Me.HubTile1.IsFrozen = True

{% endhighlight %}