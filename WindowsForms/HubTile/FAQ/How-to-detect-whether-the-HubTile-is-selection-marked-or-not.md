---
layout: post
title: Frequently Asked Questions
description: Frequently Asked Questions
platform: WindowsForms
control: HubTile
documentation: ug
--- 

# How to detect whether the HubTile is selection marked or not?

You can achieve it by using HubTile IsSelectionMarked property.

_Table 985: Property Table_

<Table>
<tr>
<th>Property</th>
<th>Description
</th>
</tr>
<tr>
<td>IsSelectionMarked</td>
<td>This property decides whether selection marked over HubTile or not.</td>
</tr>
</Table>


{% highlight C# %} 
 

/// Sets whether selection is marked over HubTile

this.HubTile1.IsSelectionMarked = true;

  {% endhighlight %}


{% highlight vbnet %} 

 

‘Sets whether selection is marked over HubTile

Me.HubTile1.IsSelectionMarked = true

{% endhighlight %}