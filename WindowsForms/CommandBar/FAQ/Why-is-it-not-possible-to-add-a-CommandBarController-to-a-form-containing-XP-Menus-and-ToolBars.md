---
layout: post
title: Why is it not possible to add a CommandBarController to a form containing XP Menus and ToolBars | WindowsForms | Syncfusion
description: Why is it not possible to add a CommandBarController to a form containing XP Menus and ToolBars
platform: windowsforms
control: CommandBars package
documentation: ug
---

# Why is it not possible to add a CommandBarController to a form containing XP Menus and ToolBars?

The CommandBars Framework should be used only with the standard .NET Menus/ToolBars and not with the Essential<sup>®</sup> Tools XP Menus. This is because the XP Menus designer infrastructure will freeze the .NET environment.

![Menu with command bar](Frequently-Asked-Questions-Images/Getting-Started_img8.jpeg)

But it is possible to add a CommandBar to a form containing XP Menus through code as shown in the sample screenshot.