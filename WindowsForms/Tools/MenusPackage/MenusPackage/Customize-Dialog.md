---
layout: post
title: Customize Dialog
description: customize dialog
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Customize Dialog

Bar items can be added to a BarManager using Customize dialog through Designer. See Adding Bar Items to a BarManager to know how to add bar items.

## Customize Dialog

The Customize Dialog can be accessed at design time and also at runtime. It lets the end users to add and customize menus, toolbars and layout items during design time. This can be invoked at design time, by right-clicking the mainFrameBarManager and selecting the Customize option in the designer.

![](Overview_images/Overview_img29.png) 



At run time, Customize dialog can be accessed by right-clicking on the Bar and clicking the Customize option. This dialog lets you control the layout of items in a toolbar.

![](Overview_images/Overview_img30.png) 



![](Overview_images/Overview_img31.png) 



(BarStyle=IsMainMenu Unchecked)

> Note: To avoid displaying the bar items in Customize dialog at run time, set BarManager.ShowItemsInCustomizationDialog property to false

![](Overview_images/Overview_img33.png) 



> Note: If you want to disable Customizing option for the users at run time, set BarManager.EnableCustomizing property to false. This will not provide option to open the Customize dialog at run time.

See Also

Bar Styles

Customize Dialog Appearance