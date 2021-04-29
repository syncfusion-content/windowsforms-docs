---
layout: post
title: StackedGroupBar in Windows Forms Navigation Pane control | Syncfusion
description: Learn about StackedGroupBar support in Syncfusion Windows Forms Navigation Pane (GroupBar) control and more details.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# StackedGroupBar in Windows Forms Navigation Pane (GroupBar)

When the GroupBar is in StackedMode, its header height can be controlled by [HeaderHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_HeaderHeight) property.

{% tabs %}

{% highlight C# %}

// Setting HeaderHeight to zero hides the groupbar header
this.groupBar1.StackedMode = true;
this.groupBar1.HeaderHeight = 0;

{% endhighlight %}

{% highlight VB %}

'Setting HeaderHeight to zero hides the groupbar header
Me.groupBar1.StackedMode = True
Me.groupBar1.HeaderHeight = 0

{% endhighlight %}

{% endtabs %}

