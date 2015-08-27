---
layout: post
title: Tooltip Settings 
description: Tooltip Settings 
platform: windowsforms
control: GroupBar
documentation: ug
---
# Tooltip Settings 

The tooltips for the buttons and the navigation pane are set through the below properties.

_Table_ _551__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
ExpandButtonTooltip</td><td>
Gets or sets the tooltip text for the collapse button when the control is collapsed.</td></tr>
<tr>
<td>
MinimizeButtonTooltip</td><td>
Gets or sets the tooltip text for the collapse button when the control is expanded.</td></tr>
<tr>
<td>
NavigationPaneTooltip</td><td>
Gets or sets the navigation pane tooltip.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.ExpandButtonToolTip = "Expand Navigation Pane";

this.groupBar1.NavigationPaneTooltip = "Expand Navigation Pane";

this.groupBar1.MinimizeButtonToolTip = "Minimize Navigation Pane";

{% endhighlight %}


{% highlight vbnet %} 

Me.groupBar1.ExpandButtonToolTip = "Expand Navigation Pane"

Me.groupBar1.NavigationPaneTooltip = "Expand Navigation Pane"

Me.groupBar1.MinimizeButtonToolTip = "Minimize Navigation Pane"

{% endhighlight %}