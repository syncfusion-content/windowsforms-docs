---
layout: post
title: Tooltip Settings  | WindowsForms | Syncfusion
description: Tooltip Settings 
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Tooltip settings

The tooltips for the buttons and the navigation pane are set through the below properties.

[ExpandButtonTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~ExpandButtonToolTip.html)
[MinimizeButtonTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~MinimizeButtonToolTip.html)
[NavigationPaneTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupBar~NavigationPaneTooltip.html)

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