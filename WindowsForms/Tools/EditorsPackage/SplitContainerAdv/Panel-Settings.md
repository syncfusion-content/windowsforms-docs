---
layout: post
title: Panel Settings
description: Panel Settings
platform: windowsforms
control: Editors Package
documentation: ug
---


# Panel Settings

This section discusses about various properties available for the SplitContainerAdv to control the behavior of the panels. The panels has properties and events similar to Window's Panel control, to change its appearance.

## Panel Orientation

The SplitContainerAdv Panels can be oriented horizontally or vertically using the Orientation property. Default value is horizontal.



{% highlight C# %}





this.splitContainerAdv1.Orientation = System.Windows.Forms.Orientation.Vertical;
{% endhighlight %}


{% highlight vbnet %}



Me.splitContainerAdv1.Orientation = System.Windows.Forms.Orientation.Vertical
{% endhighlight %}


 ![](SplitContainerAdv-Images/Overview_img396.jpeg) 



## Resizing the Panels

While resizing the control at design time or at run time, we can make one panel as fixed and resize the other panel alone. Select the panel which needs to be fixed, in FixedPanel property. 


{% highlight C# %}



this.SplitContainerAdv1.FixedPanel = Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1
{% endhighlight %}



{% highlight vbnet %}




Me.SplitContainerAdv1.FixedPanel = Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1
{% endhighlight %}

## Collapsing a Panel

We can make any of the panels to be collapsed at run time. The below properties helps you to do that.

Table 243: Property Table

<table>
<tr>
<td>
SplitContainerAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
Panel1</td><td>
Gives properties of the panel1 which represents the first panel to the left of the Splitter.</td></tr>
<tr>
<td>
Panel1Collapsed</td><td>
Indicates if the Panel1 is collapsed or not.</td></tr>
<tr>
<td>
Panel2</td><td>
Gives properties of the panel2 which represents the last or the second panel to the right of the Splitter.</td></tr>
<tr>
<td>
Panel2Collapsed</td><td>
Indicates if the Panel2 is collapsed or not.</td></tr>
<tr>
<td>
PanelToBeCollapsed</td><td>
Sets the panel to be collapsed when a predefined event occurs on it.</td></tr>
<tr>
<td>
TogglePanelOn</td><td>
A predefined event, which leads to collapsing of the panel specified in PanelToBeCollapsed property. Using TogglePanelOn property, we can decide whether, the panel needs to be collapsed on a single click or a double click.</td></tr>
</table>



{% highlight C# %}



this.splitContainerAdv1.Panel1Collapsed = true;

this.splitContainerAdv1.Panel2Collapsed = false;

this.splitContainerAdv1.PanelToBeCollapsed = Syncfusion.Windows.Forms.Tools.CollapsedPanel.Panel1;

this.splitContainerAdv1.TogglePanelOn = Syncfusion.Windows.Forms.Tools.TogglePanelOn.DoubleClick;

{% endhighlight %}


{% highlight vbnet %}




Me.SplitContainerAdv1.Panel1Collapsed = True

Me.SplitContainerAdv1.Panel2Collapsed = False

Me.splitContainerAdv1.PanelToBeCollapsed = Syncfusion.Windows.Forms.Tools.CollapsedPanel.Panel1

Me.splitContainerAdv1.TogglePanelOn = Syncfusion.Windows.Forms.Tools.TogglePanelOn.DoubleClick
{% endhighlight %}

## Panel Size 

We can specify the minimum size for the Panel1 and Panel2 in Panel1MinSize and Panel2MinSize properties. Default value for both the properties is 25.



{% highlight C# %}


this.splitContainerAdv1.Panel1MinSize = 50;

this.splitContainerAdv1.Panel2MinSize = 50;

{% endhighlight %}



{% highlight vbnet %}


Me.splitContainerAdv1.Panel1MinSize = 50

Me.splitContainerAdv1.Panel2MinSize = 50
{% endhighlight %}