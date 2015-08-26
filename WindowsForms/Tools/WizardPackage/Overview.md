---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Wizard Package 
documentation: ug
---

# Wizard Package

Wizard Package enables to build a rich interactive and customizable interface that holds many pages together that helps to break up a complex task and guides the end user through a set of simple procedures to perform or to obtain data that are categorically divided in every page.

The Wizard Package is a collection of controls implementing the Wizard interface (with a layout of navigation buttons) to perform a variety of tasks.

It consists of two controls.

* Wizard Control - It provides a quick and easy way to create such applications.
* XPTaskPane - It provides a different view to wizards as seen in the Task Pane feature in Office XP.

## WizardControl


The WizardControl can display a set of wizard pages in the given order. It also provides the user, the ability to browse between these pages using the 'browsing' buttons. The WizardControl implements the classic Wizard interface used in many windows applications. It also contains inbuilt child controls like labels, picturebox and gradient panel to let the user customize it effectively.

![](Wizard-Package_images/Wizard-Package_img1.jpeg)



### Features

This section discusses the Features of Wizard control.

* User friendly design environment - The Wizard control allows the user to add/remove the pages at design-time very easily by using verbs or by WizardControl Page Collection editor. You can also easily add images, title and description for the wizard control. 
* Navigation - The Wizard control allows the user to navigate through different pages at design time by using verbs or by clicking on the Next and Back buttons.
* Customizable user interface properties - The Wizard control creates child controls representing the different portions of the wizard and also exposes them in the designer to let users customize it.
*  Automatic and programmatic page sequencing - The Wizard control allows the user to reorder the wizard pages or to reorder the buttons of the wizard control at design time or through code.
* Show / Hide Button state - The Wizard control allows the user to show / hide / enable / disable the different buttons when a wizard page is activated.
* Event handling - We can handle events at the general Wizard level or at the Wizard Page-specific level. Global renderer child controls that appears on all the different pages of the Wizard control.
* Page validation - WizardControl Pages can be validated when the browsing button is clicked or when the page is selected.

### Overview


Components of a Wizard Control

![](Wizard-Package_images/Wizard-Package_img2.jpeg)



* The Banner Panel is a GradientPanel control that is docked on top of the WizardControl and hosts the title, description and banner picture box. This control is selectable during design-time, where you can change its properties. This control will be hidden when a wizard control page's FullPage property is set to True. 
* The Page Title is a label control that displays the title of the current wizard page. This control is selectable in the designer. In code, you can access the label control directly or through the WizardControl.Title property. 
* The Description label, another child of the Banner Panel, is a label control that shows the title of the current wizard page. This control is selectable in the designer. In code, you can access the label control directly or through the WizardControl.Description property.
* The Banner control, a child of the Banner Panel, is a picture box control that lets you show a picture on the top-right corner. This picture remains the same on all the different pages of the Wizard control. This control is selectable in the designer. In code, you can access it directly or through the WizardControl.Banner property. 
* The WizardContainer is the control within which the selected WizardControl Page will be shown. This control is selectable in the designer. In code, you can access it directly or through the WizardControl.WizardPages property. 
* The Browsing Buttons lets you browse through the different wizard pages. 

See Also

Creating a Basic Wizard

Concepts and Features

