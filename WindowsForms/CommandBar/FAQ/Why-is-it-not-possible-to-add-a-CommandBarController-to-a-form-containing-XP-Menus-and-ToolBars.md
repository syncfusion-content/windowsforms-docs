---
layout: post
title: Why CommandBarController Cannot Be Added XP Menus in WinForms | Syncfusion
description: Learn why a CommandBarController cannot be added to a Windows Forms application that contains XP Menus and ToolBars, and understand the related limitation.
platform: windowsforms
control: CommandBars package
documentation: ug
---

# Why CommandBarController Cannot Be Added to XP Menus in Windows Forms

The CommandBars Framework should be used only with the standard .NET Menus/ToolBars and not with the Essential Tools XP Menus. This is because the XP Menus designer infrastructure will freeze the .NET environment.

![Menu with command bar](Frequently-Asked-Questions-Images/Getting-Started_img8.jpeg)

But it is possible to add a CommandBar to a form containing XP Menus through code as shown in the sample screenshot.