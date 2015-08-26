---
layout: post
title: Why is it not possible to add a CommandBarController to a form containing XP Menus and ToolBars
description: Why is it not possible to add a CommandBarController to a form containing XP Menus and ToolBars
platform: windowsforms
control: CommandBars package
documentation: ug
---


# Why is it not possible to add a CommandBarController to a form containing XP Menus and ToolBars?

The CommandBars framework should be used only with the standard .NET Menus / ToolBars and not with the Essential Tools XP Menus. This is because the XP Menus designer infrastructure will freeze the .Net environment.

![](Frequently-Asked-Questions-Images/Getting-Started_img8.jpeg)

But it is possible to add a CommandBar to a form containing XP Menus through code as shown in the sample screen shot.


