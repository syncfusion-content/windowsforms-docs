---
layout: post
title: Overview
description: Overview
platform: WindowsForms
control: AutoComplete
documentation: ug
---

# Overview

The AutoComplete control is an extender control that provides AutoCompletion services to any edit control on the same form as the AutoComplete control.

AutoCompletion can be defined as prompting the user with probable matches during data entry. This feature is similar to the AutoCompletion of the web addresses in the Internet Explorer address box.

![](AutoComplete-Controls-Images/Overview_img4.png) 



AutoCompletion is a feature enhancement for edit controls. It expands strings that have been partially entered in an edit control into complete strings based on a list of previously specified strings.

![](AutoComplete-Controls-Images/Overview_img5.png)


For example, when a user starts to enter an URL in theAddress edit control that is embedded in the Microsoft Internet Explorer navigation toolbar, autocompletion expands the string into one or more complete URLs that are consistent with the existing partial string. A partial URL string such as "sync" might be expanded to "http://www.syncfusion.com" or "http://www.syncfusion.com/faq/winforms". This feature will be useful in windows applications that require collecting frequently repeated input from the user. 

The .NET framework does not provide any built-in support for providing autocompletion in the System.Windows.Forms.Textbox or System.Windows.Forms.Combobox classes. The Essential Tools AutoComplete class provides an easy way of adding autocompletion to edit controls in an application. Autocompletion is typically used with edit controls (text box controls) or with controls that have an embedded edit control (such as combo box controls). 

The AutoComplete class is implemented as an Extender Provider similar to the ToolTip control in the Windows Forms package. 

 See Also
 ComboBoxAutoComplete, Auto Append