---
layout: post
title: Configuring Child Controls
description: configuring child controls
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Configuring Child Controls

The following settings can be used to configure the Child controls of the GridLayout Manager.

## ParticipateInLayout

To prevent a Child control from being laid out using the GridLayout Manager, the below given property can be used.

_Table456: Property Table_

<table>
<tr>
<th>
Child Control Property</th><th>
Description</th></tr>
<tr>
<td>
ParticipateInLayout</td><td>
Specifies whether the Child control should participate in the GridLayout. The default value is set to 'True'.</td></tr>
</table>


The methods associated with the above property are given below.

_Table457: Methods Table_

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetParticipateInLayout</td><td>
Indicates whether the component is in the layout list.</td></tr>
<tr>
<td>
SetParticipateInLayout</td><td>
Adds or removes the specified control from the layout list.</td></tr>
</table>


The following code can be used to add or remove the control from the GridLayout list programmatically.



{% highlight c# %}

this.gridLayout1.SetParticipateInLayout(this.button1,false);







Me.gridLayout1.SetParticipateInLayout(Me.button1,False)
{% endhighlight  %}
See Also

Configuring GridLayout, Rearranging the Controls laid out by GridLayout, GridLayout - Configuring Child Controls
