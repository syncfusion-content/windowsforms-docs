---
layout: post
title: Creating-ListControl-Derived-Controls
description: creating listcontrol - derived controls
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Creating ListControl - Derived Controls

When you create custom ListControl - derived controls for use with the ComboBoxBase class, it is essential that you provide certain properties and methods to avail all the capabilities of the ComboBoxBase class.

The ListBox control enables you to display a list of items, it can be selected by clicking. A ListBox control can provide single or multiple selections using the SelectionMode property. The ListBox also provides the MultiColumn property to enable the display of items in columns instead of a straight vertical list of items. This allows the control to display more visible items and prevents the need for the user to scroll to an item.

In addition to display and selection functionality, the ListBox also provides features that enable you to efficiently add items to the ListBox and to find text within the items of the list.

The BeginUpdate and EndUpdate methods enable you to add a large number of items to the ListBox without the control being repainted each time an item is added to the list.

The Items, SelectedItem and SelectedIndices properties provide access to the three collections that are used by the ListBox.

Table 226: Class Table

<table>
<tr>
<td>
Collection Class</td><td>
Use Within the List Box</td></tr>
<tr>
<td>
ListBox.ObjectCollection</td><td>
Collection of all items contained in the ListBox control.</td></tr>
<tr>
<td>
ListBox.SelectedObjectCollection</td><td>
Contains a collection of the selected items which is a subset of the items contained in the ListBox control.</td></tr>
<tr>
<td>
ListBoxSelectedIndexCollection</td><td>
Contains a collection of the selected indexes, which is a subset of the indexes of the ListBox.ObjectCollection. These indexes specify items that are selected.</td></tr>
</table>


You should always implement an Items property and optionally implement an IndexFromPoint method and a TopIndex property. Implementing IndexFromPoint and TopIndex will enable QuickSelection capability for the combo box, wherein the user can click on the drop down button and start selecting items in the list, all this without releasing the mouse. You can find more information regarding these requirements in the class reference.
