---
layout: post
title: Overview of Syncfusion ComboDropDown for WindowsForms
description: Overview of Syncfusion ComboDropDown that can host any control in the drop down area with the Themes support
platform: WindowsForms
control: ComboDropDown
documentation: ug
---

# Windows Forms ComboBox DropDown (ComboDropDown) Overview

The ComboDropDown control is a lightweight, combo box-like control that can host any control in the dropdown area. This control can be used to create a combo box that shows, for example, a TreeView or a ListView with multiple columns or any other control that helps in displaying the data appropriately. The control is used to host any control where ComboBoxBase hosts only ListBox derived controls. This flexible combo box control provides a standard combo box look-and-feel with the ability to host any control in the dropdown.

Once a control is associated with the ComboDropDown to be displayed in the drop-down area, the developer is responsible for handling the data interaction between the combo's edit portion and the control in the drop-down. For example, if the ComboDropDown is used with a TreeView control in a dropdown, the developer has to provide the code to transfer the selected item from the TreeView control to the combo box and also from the combo box to the TreeView. You should also determine when the dropdown should close. In this case, the dropdown could close when the user double-clicks on a node.

![Overview of ComboDropDown](Overview_images/Overview_img277.jpeg) 