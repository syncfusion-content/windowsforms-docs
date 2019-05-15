---
layout: post
title: Overview of Syncfusion MultiColumnTreeView for Windows Forms
description: An overview about the MultiColumnTreeView and its key features like Styles Architecture, adding Columns and sub items, LabelEdit etc.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Overview

MultiColumnTreeView is an advanced treeview control with multiple columns. This control displays the contents in the form of tree with additional columns displaying related data for the tree nodes and with its robust features, it gives a visually appealing tree structure. The Styles Architecture for the control lets the users to define styles for nodes at different levels of the tree and columns style for individual columns.


![Overview of MultiColumnTreeView](Overview/overview.png)

## Components of MultiColumnTreeView

*	TreeColumnAdv
*	TreeNodeAdv
*	TreeNodeAdvSubItem
*	Custom Control

## Key Features

**Style Architecture** - Supports a flexible style architecture to let users define the styles for nodes at different levels of the Tree. It helps the users to specify the styles for a specific node.

**CheckBox and OptionButton support** - Interactive check boxes that could be checked or unchecked, which will indicate the check state of the child node’s check boxes. Node can also hold option buttons.

**States** - Tree nodes can hold left images, right images and images for different state of the nodes like expand and collapse.

**Appearance** - Provides the background and foreground properties for customizing the appearance of the control.

**Customization** - We can customize the Text, Font, Nodes and etc..

**ToolTip** - Allows us to show and hide tooltips for the nodes in the first column wherever necessary.

**Custom Control** - Support for custom control feature allows to add custom controls to the tree node of the first column alone.

**Multiline Support** - TreeNodeAdv has now provided option to enable multiline text for each node by using the Multiline property which is available for individual nodes. This can be set through NodeCollection Editor and it has to be set for individual nodes.

**Enhanced performance** - MultiColumnTreeView control can be populated with large number of nodes on node expand / collapse. The performance while populating the MultiColumnTreeView with large number of nodes can be improved by the SuspendExpandRecalculate property.
