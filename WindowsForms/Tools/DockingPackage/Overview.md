---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Docking Package 
documentation: ug
---

# Overview

The Docking Package comprises of the Essential Tools docking windows architecture that allows users to add Visual Studio .NET type dockable controls to Windows Forms applications. Any control can be set as a docking window and docking layouts can be hosted within Forms, UserControls or any derivative of the ContainerControl type. The framework supports the complete range of docking behaviors such as docking/floating, nested levels, tabbed groups, state transitions, autohide, MDIChild transitions, non-dockable/non-floatable options, a unique fill mode and full state persistence. An advanced designer allows users to harness full WYSIWYG configuration of the dock layout.

The Essential Tools docking framework implements the core docking interactions and additionally implements certain other complex features such as multiple docking levels, nested docking, tabbed docking, tear-off tabs, auto-hide mode and full state persistence.

Docking Manager is the component that supports Visual Studio .NET style docking / floating windows with full design-time support. The Office 2007 visual styles in blue, black and silver color schemes can also be applied to the docking windows.



![](Overview_images/Overview_img1.png) 



Docking window may be defined as a control that attaches itself to a host control's border, and is capable of being dragged and docked to different edges within the control and also be dragged off the host control and floated as an individual top-level window.

## Features

* Office 2007 style look and feel for [MDIChild Forms](/windowsforms/Tools/DockingPackage/Advanced-Features.html#mdi-child-transition).
* New VS 2008 DragProvider style for Docking manager. See [Dock Arrow Settings](/windowsforms/Tools/DockingPackage/Special-Features.html#dock-arrow-settings) for details.
* Visual styles

Docking manager renders various styles that adds standard look and feel to your application. The [Visual Styles](/windowsforms/Tools/DockingPackage/Appearance-Settings.html#visual-styles) includes VS2005, Office 2003, Office2007, Office2007 Outlook. It supports blue, silver and black themes in Office2007 visual style.

* Dockingwindow

Docking window wraps the host control that is docked and enables the control to be dragged to the required position.

* Dock arrows 

[Dock arrow](/windowsforms/Tools/DockingPackage/Special-Features.html#dock-arrow-settings) guides where the control is to be docked and docks the control in the specified side.

* WYSIWYG Designer Engine

To ease the process of designing layouts, the docking windows framework provides a very powerful WYSIWYG designer that allows you to design your application's docking layout merely by dragging and re-docking or floating the controls at the desired docking state during the design process. The layout is automatically serialized by the designer and can be restored during application start up or at any other time. 

* Tabbed docking

Docking manager allows controls to be [tabbed](/windowsforms/Tools/DockingPackage/Docking-Styles.html#tabbed-docking) along with the docking capability.

* Auto Hide

Docking manager provides an auto hide facility to the docked control. Docked controls can be hidden and will be tabbed along the side of the container control on which it was placed. The control will restore its appearance when the tab is clicked. Click [here](/windowsforms/Tools/DockingPackage/Docking-Styles.html#oncaptiondoubleclick-event) to know more.

* Toggle docking

The docked conrol can toggle its docking capability to floating and vice versa by double clicking on the caption or the title bar of the docking window. See [Floating](/windowsforms/Tools/DockingPackage/Docking-Styles.html#floating) topic.

* State Persistence

The docking manager has the ability to load and store dock state information into default storage medium, XML files and also in other storage medium such as database. See [Dock State Persistence](/windowsforms/Tools/DockingPackage/Advanced-Features.html#dock-state-persistence).

* Nested Docking

The docking windows framework provides a full fledged support for nested docking layouts.

* Design time drag drop and Floating

The docking manager architecture enables dragging, dropping and floating of the user controls in the design time, similar to that at run time.

* Docking - MDIChild Transitions 

The Syncfusion dockable controls can be seamlessly transformed to and from [MDIChild](/windowsforms/Tools/DockingPackage/Advanced-Features.html#mdi-child-transition) forms using the pre-wired context menu or the programmatic API. Combining this behavior with the Essential Tools TabbedMDI framework allows docking and MDIChild window states to be switched around like in the Visual Studio .NET IDE.

* DockToFill Option

The [DockToFill](/windowsforms/Tools/DockingPackage/Special-Features.html#docktofill-freeze-resizing) feature allows users to implement a very unique docking layout where a non-MDIContainer form or container control's entire client region is composed of dockable controls. The DockToFill mode capability of the docking manager creates forms comprising entirely of dockable windows.

* Caption Buttons

The docking manager allows the users to set the visibility of the close button, Maximize button, Minimize button and Menu button on the title bar of the docked control. See [Caption Buttons](/windowsforms/Tools/DockingPackage/Caption-Bar.html#caption-buttons).

* Custom Caption Button

[Custom Caption Buttons](/windowsforms/Tools/DockingPackage/Caption-Bar.html#custom-caption-buttons) is a newly added feature in Docking Manager. This allows user to customize the existing caption buttons like menu button, close button, autohide button and maximize button and also to create a new caption button and customize it.

* Container control support

The Syncfusion docking windows architecture features full support for hosting docking windows within container controls. Dockable controls hosted within child controls will automatically be bound to the visibility state of the parent control hierarchy and floating windows are shown / hidden in synchronization with the host container's visibility. 

* Extender provider architecture

The central component of the docking windows framework is the DockingManager class. The DockingManager is implemented as a .NET Extender Provider component that extends the SetEnableDocking property to any control instance on the form or ContainerControl hosting the DockingManager. This makes the addition of docking windows to applications an extremely simple one-step process of just setting the extended property on the control without need for complex initialization. 

* Context menu

The docked controls can display context menu on right clicking the caption bar. An unique context menu is available for auto hide tabs also.

* Docking Ability

Previously, the diamond docking indicators did not have the ability to hide certain docking arrows, and hence it could be docked to certain sides only and we have to handle events to achieve this.

Now, DockAbility / OuterDockAbility features allow to hide docking arrows so that we can dock a window only to certain sides of a form / usercontrol.

>See Also
>
>[Getting Started](/windowsforms/Tools/DockingPackage/Getting-Started)

