---
layout: post
title: Run Time Interactive Features
description: run time interactive features
platform: WindowsForms
control: Menus Package 
documentation: ug
---
# Run Time Interactive Features

This section discusses the following interactive features at run time.

## SuperToolTip support

The BarItems in XPMenus provides SuperToolTip support. Other than the usual tooltip, XPMenus now allows users to associate a SuperToolTip to the BarItems.

To associate a SuperTooltip to the BarItem (Menu Items), Drag and drop a SuperToolTip control on to the form in which the Menus are placed. Select the BarItem to which the SuperTooltip is to be added. 

In the properties window, of the BarItem, we can see an extender property ToolTip on superToolTip. Click this to open the Tooltip Editor.

![](Overview_images/Overview_img151.jpeg) 



Customize the Tooltip using the Tooltip Editor.

![](Overview_images/Overview_img152.jpeg) 






{% highlight c# %}
toolTipInfo1.Body.Text = "Save";

this.superToolTip1.SetToolTip(this.barItem2, toolTipInfo1);

{% endhighlight  %}
{% highlight vbnet %}





toolTipInfo1.Body.Text = "Save"

Me.superToolTip1.SetToolTip(Me.barItem2, toolTipInfo1)

{% endhighlight  %}

![](Overview_images/Overview_img153.jpeg) 



A sample illustrating the supertooltip feature is available in the below sample installation location.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_


## Context Menu for XPMenus

See 

PopUp Menu
