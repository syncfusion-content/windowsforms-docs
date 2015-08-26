---
layout: post
title: BarItem Context Menu
description: baritem context menu
platform: windowsforms
control: Menus Package 
documentation: ug
---
# BarItem Context Menu

On right clicking any of the bar items at design time or at run time, displays a context menu. The below image illustrates the various options in the context menu.

> Note: At runtime, the context menu will be invoked, only with the customize dialog open.

![](Overview_images/Overview_img86.jpeg)



* Deleting a Bar item.
* It lets you edit the text of a bar item using the text area against Name option. 
* Select Paint Styles.
* Begin a Group.

> Note: The editing option for the bar item text at run time can be disabled by setting BarManager.AllowUserRenaming property to false.

![](Overview_images/Overview_img88.jpeg)



## Image Icon Option of a Baritem for CustomizingPopupMenu

ChangeImage option is added in CustomizingPopupMenu. Baritem’s image can be changed using ChangeImage option.

1. Right click at the baritem during runtime customization.
    > Note:  CustomizingPopupMenu appears.

   ![](Overview_images/Overview_img90.jpeg) 


2. Click ChangeImage 
   > Note: File Dialog Opens.

3. You can select any image for the baritem using this dialog.
   
   {:.prettyprint}