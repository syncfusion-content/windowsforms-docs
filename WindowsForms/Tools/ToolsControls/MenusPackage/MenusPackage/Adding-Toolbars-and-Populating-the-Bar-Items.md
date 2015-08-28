---
layout: post
title: Adding Toolbars and Populating the Bar Items
description: adding toolbars and populating the bar items
platform: windowsforms
control: Menus Package 
documentation: ug
---

## Adding Toolbars and Populating the Bar Items

To add a toolbar and populate it with the bar items follow the below steps.

* To create a new toolbar, go to the Toolbars tab in the Customize dialog, select New and specify a name (Ex: MainMenu) for the toolbar.

![](Overview_images/Overview_img16.jpeg)



* This will create a new bar component in the designer as shown in the image below. Name this component as 'MainMenu'. This will also make a corresponding entry in the Toolbars list.

![](Overview_images/Overview_img17.jpeg) 



* Set the toolbar as a main menu, by selecting the IsMainMenu option in the BarStyle property of the mainMenuBar component.

![](Overview_images/Overview_img18.png) 



* Fill your toolbars with items by simply dragging-and-dropping the items from the Command tab into the toolbars and submenus. To fill the sub menu of the parent bar items, again drag the required bar items inside it.

![](Overview_images/Overview_img19.jpeg) 



* You can drag and dock the toolbars on all four sides of the designer by dragging through the gripper on the left of the toolbar and moving them to any desired position. The toolbars can also be floated. See Toolbar Properties for more details.
> Note: If a toolbar from the mainFrameBarManager and one (or more) from the child forms gets merged (the rules for merging are discussed in the_ MDI Merging _topic), the BarItems in the toolbar will be ordered based on their MergeOrder property

If this is a ChildFrameBarManager, all the toolbars (including the main menu) will be floating at design-time. This is because the child toolbars will be docked to the main form rather than to your child form during run-time, and hence, floating avoids polluting your child forms during design-time.

![](Overview_images/Overview_img21.jpeg) 



See Also

Concepts and Features
