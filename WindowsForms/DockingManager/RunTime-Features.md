---
layout: post
title: RunTime-Features | WindowsForms | Syncfusion
description: runtime features
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# RunTime Features

The following runtime features are discussed in this section.

## Browsing Key

DockingManager lets you specify the keyboard key combinations, to tab through the docked controls. The property BrowsingKey of the docking manager, provides modifiers like CTRL, SHIFT, ALT Keys and keys like A, B, C, 0, 1 etc., User can also provide a combination of modifiers and the keys. Example "CTRL + 0", as shown in the image below.

 ![](RunTime-Features_images/RunTime-Features_img1.jpeg) 



N> Before we set this property for docking manager, we have to set TabStop property to true and TabIndex property with the appropriate value. Otherwise its BrowsingKey property will not work.

<table>
<tr>
<th>
DockingManager Property</th><th>
Description</th></tr>
<tr>
<td>
Browsing Key</td><td>
Determines the value of the key which can be used to tab through the docked controls.</td></tr>
</table>

<table>
<tr>
<th>
DockedControl Property</th><th>
Description</th></tr>
<tr>
<td>
TabStop</td><td>
Indicates whether TAB key can be used to focus the control.</td></tr>
<tr>
<td>
TabIndex</td><td>
Determines the index in the tab order that this control will occupy.</td></tr>
</table>


These properties can be set through code by using the below code.

{% highlight C# %}





this.dockingManager1.BrowsingKey = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.D0)));

this.treeViewAdv1.TabStop = true;

this.treeViewAdv1.TabIndex = 0;

{% endhighlight %}



{% highlight vbnet %}


Me.DockingManager1.BrowsingKey = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.D0), System.Windows.Forms.Keys)

Me.TreeViewAdv1.TabStop = True

Me.TreeViewAdv1.TabIndex = 0
{% endhighlight %}

## ToolTip

By default, tooltips will be displayed for the caption buttons in a docked control when the mouse is moved over it.

![](RunTime-Features_images/RunTime-Features_img3.jpeg)




N> EnableSuperTooltip property which is discussed below, should be set to false to effect the above default tooltip.

### SuperTooltip Support

Docking manager can display a super tooltip by enabling the DockingManager.EnableSuperTooltip property. For this a SuperTooltip control should be dragged and dropped on to the form and it should be selected in the DockingManager.SuperTooltip property.


<table>
<tr>
<th>
DockingManager Property</th><th>
Description</th></tr>
<tr>
<td>
EnableSuperTooltip</td><td>
Gets/Sets whether to enable SuperToolTip using the dock caption buttons.</td></tr>
<tr>
<td>
SuperToolTip</td><td>
Indicates the SuperToolTip associated with the docking manager.</td></tr>
</table>


A SuperToolip can be added to the docking manager programmatically using the below code snippet.


{% highlight C# %}



this.dockingManager1.EnableSuperToolTip = true;

this.dockingManager1.SuperToolTip = this.superToolTip1;
{% endhighlight %}


{% highlight vbnet %}





Me.dockingManager1.EnableSuperToolTip = True

Me.dockingManager1.SuperToolTip = Me.superToolTip1
{% endhighlight %}


 ![](RunTime-Features_images/RunTime-Features_img5.jpeg) 


Text for the supertooltip and other customizing options can be specified for a particular button by using the CaptionButton Collection Editor.

 ![](RunTime-Features_images/RunTime-Features_img6.jpeg) 


## Context Menu

A context menu will be displayed whenever the user right clicks the caption bar or clicks the menu button in the caption bar. EnableContextMenu property should be true for displaying the context menu. By default it is true.

When the docked control is in autohide mode and when the auto hide tab is right-clicked, an unique context menu will be displayed, similar to Visual Studio. EnableAutoHideTabContextMenu property should be true for this. By default this value is true.



{% highlight C# %}


this.dockingManager1.EnableContextMenu = true;

this.dockingManager1.EnableAutoHideTabContextMenu = true;
{% endhighlight %}





{% highlight vbnet %}


Me.dockingManager1.EnableContextMenu = True

Me.dockingManager1.EnableAutoHideTabContextMenu = True
{% endhighlight %}


The below images illustrates context menu features.

 ![](RunTime-Features_images/RunTime-Features_img7.jpeg) 



N> If MDIContainer property of the form is set to true, then the context menu will include MDI child option. You can observe that the MDI Child option is disabled for the above image. This is because MDIContainer property is false for this case.

 ![](RunTime-Features_images/RunTime-Features_img9.jpeg) 



### Context Menu for TabbedControls

Context menu for the tabbed controls is similar to the default context menu like the above image. When TabbedMDIManager component is used, context menu will include TabbedDocument instead of MDI child.

 ![](RunTime-Features_images/RunTime-Features_img10.jpeg) 



{% seealso %}

[Dock Context Menu Event](/windowsforms/dockingmanager/Docking-Events.html#dockcontextmenu-event), [How to display context menu of a docked control at a specified point?](/windowsforms/dockingmanager/faq/contextmenu/how-to-display-context-menu-of-a-docked-control-at-a-specified-point)

{% endseealso %}