---
layout: post
title: Overview | WindowsForms | Syncfusion
description: overview
platform: WindowsForms
control: CommandBars
documentation: ug
---

# Overview

The Essential Tools CommandBar implements a framework for creating and hosting ToolBars, ReBars and StatusBars similar to those that are found in the Visual Studio .NET and Office XP user interfaces.

The three main classes of the CommandBar framework are CommandBarController, CommandBar and ControlBar.

* The CommandBarController component serves as a form scope controller for the CommandBar and ControlBar hosted on a form and provides the required design time support and API for creating and working with the CommandBars and ControlBars.
* A CommandBar, similar to the Win32 / MFC ControlBars, is purely a container control that is responsible only for it's layout state.
* A ControlBar enables application developers to add dockable / floatable controls to their form's toolbar layout. A common example of a ControlBar is the task pane window found in the Microsoft Office 2003 product suite. Refer to the 'Detached ControlBars' topic under the Menus Package which has explained the ControlBar in detail.


N> The CommandBar framework should be used directly in an application only when there is no requirement for XP style menus and toolbars. Refer to the Essential Tools Menus Package for implementing XP style menus and toolbars.

ReBar controls act as containers for child controls. They contain one or more bands, and each band can have any combination of a gripper bar, a bitmap, a text label, and many more controls. ReBar control is also called as CoolBar. This control is not included in the .NET framework. It is available only in the VB 6.0 and MFC framework.

This section lists the features that are available in the CommandBar control.

## Key Features

* CommandBar States

The CommandBar can be floated by setting the DisableFloating property to 'False'.

The CommandBar can be docked to the form by setting the DisableDocking property to 'False'.

The CommandBar can be docked to the Bottom, Left, Right and Top of the form using the AllowedDockBorders property of the CommandBar. The EnableDockBorders property of the CommandBarController must be set to 'True' for the above property to take effect.

* Button Settings

The CommandBar is usually displayed with the close button and dropdown button which can be enabled or disabled according to the needs of the user.

* Interactive Features

All toolbar icons that do not fit in the space available in the toolbar are displayed by the chevron provided by the CommandBar.

* Adding Popup Menu

Popup Menus can be easily associated with the CommandBar which can be displayed on clicking the dropdown button of the CommandBar or on right clicking the CommandBar control itself.

* Adding Custom Child Controls

CommandBars allows the user to add custom controls. Single or Multiple controls can be added onto the control.

* Appearance Settings

CommandBars allows you to create a professional, rich appearance and also enables to achieve the popular look and feel.

The back color of the CommandBar and CommandBarController can be changed. The font of the text displayed, length and height of the CommandBar can also be set as per the needs of the user.

The gripper that is provided enables floating / docking the CommandBar at run time.

* Behavior Settings

The Cursor property allows to set the cursor to be displayed when the mouse is moved over the control.

The CommandBar can be hidden by setting the Visible property to 'False'. It's contents can be aligned from right to left or vice versa using the RightToLeft property of the CommandBarController.

* Themes and Visual Styles

The appearance of the CommandBar control is enhanced by applying wide range of visual styles such as Office XP, Office 2003, VS 2005 and Office 2007. It also comes with the new Office 20007 themes in the blue, silver and black colors.

* Serialization

It allows the user to save and load the state of the CommandBar objects using different storage techniques.



