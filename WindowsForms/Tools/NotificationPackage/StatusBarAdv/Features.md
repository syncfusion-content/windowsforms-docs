---
layout: post
title: Features
description: features
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Features

The features of the StatusBarAdv control which enhance the look and feel of the control have been listed below.

### Features

* Appearance Settings

  The background of the StatusBarAdv control can be displayed with an appealing gradient or pattern style provided by the various options in the BackgroundColor property.

  The backcolor and forecolor can be set for the background.

  In addition to the above settings, a sizing grip can also be displayed for the control.

* Behavior Settings

  The StatusBarAdv automatically resizes to fit it's contents.

  Also, the child controls or panels that are added to the StatusBarAdv control, will be automatically resized according to the height of the StatusBarAdv.

* Container Control

  The StatusBarAdv control acts as a panel to various user interface controls.

* StatusBarAdvPanel

  The StatusBarAdvPanel can be dragged and dropped from the toolbox onto the StatusBarAdv control or it can be added using thePanels property available in the control.

  The panel size can be changed as per the needs of the user and the spacing between the panels can be set accordingly.

* Alignment Settings

  The panels or child controls added to the StatusBarAdv can be aligned to Center, Near, Far and ChildConstraints using the Alignment property.

  When the alignment is set to 'ChildConstraints', the alignment of the panels or child controls is enabled by calling the SetHAlign() method of StatusBarAdv control.

* Border Settings

  The StatusBarAdv control can be displayed with a 2D or 3D border. Their styles are defined using the BorderSingle and Border3DStyle properties. 

  The color of the 2D border can be customized.

* Themes

  Themes can be enabled for the StatusBarAdv control. This automatically resets the BorderStyle property to 'None'.

  The IgnoreThemeBackground property when set to 'True', ignores the theme's background color and draws the StatusBarAdv with the backcolor instead.

A Sample which demonstrates the StatusBarAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

See Also

