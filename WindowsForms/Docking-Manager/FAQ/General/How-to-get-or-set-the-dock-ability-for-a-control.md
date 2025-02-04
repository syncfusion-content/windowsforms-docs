---
layout: post
title: How to get or set the dock ability for a control | WindowsForms | Syncfusion®
description: How to get or set the dock ability for a control
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to get or set the dock ability for a control?

The current dock ability for the controls can be retrieved or set using the below methods.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetDockAbility</td><td>
Retrieves the dock ability of the control. The parameter is,{{ 'Ctrl' | markdownify }} - Indicates the docked control for which DockAbility has to be obtained.</td></tr>
<tr>
<td>
SetDockAbility</td><td>
Sets the dock ability of the control.{{ 'Ctrl' | markdownify }} - Indicates the docked control for which DockAbility need to be set.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


//Getting the Dock Ability

this.dockingManager1.GetDockAbility(this.panel2);


//Setting the Dock Ability

this.dockingManager1.SetDockAbility(this.panel2, "Bottom, Horizontal");

{% endhighlight %}


{% highlight VB %}


'Getting the Dock Ability

Me.dockingManager1.GetDockAbility(Me.panel2)


'Setting the Dock Ability

Me.dockingManager1.SetDockAbility(Me.panel2, "Bottom, Horizontal")


{% endhighlight %}

{% endtabs %}



