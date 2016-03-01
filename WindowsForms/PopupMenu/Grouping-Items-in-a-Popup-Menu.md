---
layout: post
title: Grouping-Items-in-a-Popup-Menu | Windows Forms | Syncfusion
description: grouping items in a popup menu
platform: windowsforms
control: Popup-Menu
documentation: ug
---

# Grouping Items in a Popup Menu

This topic will guide on how to group the menu items by inserting separator(s), in a popup menu with and without BarManager.

If the ParentBarItem associated with the popup menu is contained within a BarManager, drop-down the popup menu from the Popup Form, right click on an item and select Begin A Group from the context menu.

![](Grouping-Items-in-a-Popup-Menu_images/Grouping-Items-in-a-Popup-Menu_img1.jpeg)



If the ParentBarItem is not contained within a BarManager, edit the SeparatorIndices property of the ParentBarItem indicating the item indices in the items list where you want the separators to be introduced. 

![](Grouping-Items-in-a-Popup-Menu_images/Grouping-Items-in-a-Popup-Menu_img2.jpeg)



![](Grouping-Items-in-a-Popup-Menu_images/Grouping-Items-in-a-Popup-Menu_img3.jpeg)



We can also group the items using BeginGroupAt and RemoveGroupAt methods. Click here to know more.

{% seealso %}

* [Associating Popup Menu To a Control](http://help.syncfusion.com/windowsforms/popupmenu/associating-popup-menu-to-a-control)
* [Adding and filling a popup menu](http://help.syncfusion.com/windowsforms/popupmenu/adding-and-filling-a-popupmenu)
* [How to programmatically begin a group or remove an existing group in a popup menu]
* [How to programmatically show a Popup Menu]

{% endseealso %}