---
layout: post
title: Tooltip Settings in Windows Forms Navigation Pane control | Syncfusion
description: Learn about Tooltip Settings support in Syncfusion Windows Forms Navigation Pane (GroupBar) control and more details.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Tooltip Settings in Windows Forms Navigation Pane (GroupBar)

The tooltips for the buttons and the navigation pane are set through the below properties.

[ExpandButtonTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_ExpandButtonToolTip)
[MinimizeButtonTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_MinimizeButtonToolTip)
[NavigationPaneTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_NavigationPaneTooltip)

{% tabs %}

{% highlight C# %}  

this.groupBar1.ExpandButtonToolTip = "Expand Navigation Pane";

this.groupBar1.NavigationPaneTooltip = "Expand Navigation Pane";

this.groupBar1.MinimizeButtonToolTip = "Minimize Navigation Pane";

{% endhighlight %}


{% highlight VB %} 

Me.groupBar1.ExpandButtonToolTip = "Expand Navigation Pane"

Me.groupBar1.NavigationPaneTooltip = "Expand Navigation Pane"

Me.groupBar1.MinimizeButtonToolTip = "Minimize Navigation Pane"

{% endhighlight %}

{% endtabs %}
