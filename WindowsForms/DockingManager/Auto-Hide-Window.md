---
layout: post
title: Auto-Hide-Window | WindowsForms | Syncfusion
description: auto hide window
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Auto Hide Window

DockingManager provides auto hide facility to the docked control. When the auto hide button (looks like a bell) is clicked, the docked controls will be hidden, and will be placed along the side of the container control on which it was placed. 

When mouse is moved over it, the auto hidden control will be displayed. When the auto hide button is clicked again the control will restore its appearance.

## Configuring Window in Different Side

The side to which the Docked controls will collapse is based on the **DockingStyle** of the particular control. If the control is docked to the left, while clicking the auto hide button it will be hidden to the left side.

![](Images/AutoHideWindow_img1.jpeg)


## Enabling and disabling the Auto Hide Functionality

The Pin button that performs auto hide functionality can be visible by default. It can be invisible to disable the Auto Hide functionality through **AutoHideEnabled** property.

{% tabs %}

{% highlight C# %}

//To disable the auto hide functionality.

 this.dockingManager1.AutoHideEnabled = false;

{% endhighlight %}


{% highlight VB %}

'To disable the auto hide functionality.

 Me.dockingManager1.AutoHideEnabled = false
 
{% endhighlight %}

{% endtabs %}

![](Images/AutoHideWindow_img2.jpeg)


## ScrollButton Support

When the AutoHidden Tabs overflow onto the side panel, ScrollButton is added to the side panel.

![](Images/AutoHideWindow_img3.jpeg)


## Full Caption in AutoHide Mode

Create a docked window with two ListBoxes. Dock the controls. Tab the controls and set the **FullCaptionInAutoHideMode** property. Setting this property to true, will display the full caption text in the auto hidden tab's page. It displays full caption within the application if necessary with a scrollbar, so that end user can scroll and view the hidden tab’s full caption.

{% tabs %}

{% highlight C# %}

//To display full caption in AutoHide mode.

this.dockingManager1.FullCaptionsInAutoHideMode = true;

{% endhighlight %}


{% highlight VB %}

'To display full caption in AutoHide mode.

Me.dockingManager1.FullCaptionsInAutoHideMode = true

{% endhighlight %}

{% endtabs %}

![](Images/AutoHideWindow_img4.jpeg)

## Dragging Auto Hidden Tabs

The docked controls that are auto hidden, can be dragged with their tabs, and can be docked or set to floating by setting **EnableDragAutoHiddenTabs** property to true.

{% tabs %}

{% highlight C# %}

//To enable dragging for AutoHide mode.

this.dockingManager1.EnableDragAutoHiddenTabs = true;

{% endhighlight %}

{% highlight VB %}

'To enable dragging for AutoHide mode.

Me.dockingManager1.EnableDragAutoHiddenTabs = true

{% endhighlight %}

{% endtabs %}

## Auto Hide Selection Style

Auto hide animation can be initiated in two ways either by mouse hovering or clicking on the auto hidden tab. This behavior of DockingManager can be enabled by setting the **AutoHideSelectionStyle** property.

{% tabs %}

{% highlight C# %}

//To set auto hide selection style as Click.

this.dockingManager1.AutoHideSelectionStyle = Syncfusion.Windows.Forms.Tools.AutoHideSelectionStyle.Click;

{% endhighlight %}


{% highlight VB %}

'To set AutoHide selection style as Click.

Me.dockingManager1.AutoHideSelectionStyle = Syncfusion.Windows.Forms.Tools.AutoHideSelectionStyle.Click

{% endhighlight %}

{% endtabs %}

