---
layout: post
title: Overview
description: overview
platform: windowsforms
control: TreeView 
documentation: ug
---

# Overview

The Essential Tools' TreeViewAdv control implements a classical tree structure with support for left, right and state images, check box and option buttons, tooltips and help text capabilities. It has special features to give the TreeViewAdv control a neat look, like Gutter space, Indent Space, changing color of the lines connecting the nodes, color options for the check boxes. It provides advanced drag-and-drop UI support, context-menu association, gradient backgrounds and multiple border styles, unlimited number of controls for each nodes. The control comes with complete design-time support.

* The TreeViewAdv control contains a hierarchical collection of TreeNodeAdv objects which gets rendered in a classical tree structure.
* The top level nodes and the children nodes of the TreeNodeAdv can be accessed through the node's properties.
* While the TreeViewAdv exposes some global styles that are to be applied for all the nodes, the TreeNodeAdv lets the users to specify styles for a specific node. The Styles Architecture which will be discussed later in this section, lets the users to define styles for nodes at different levels of the tree. This allows the users to specify styles for a class of nodes.

![](Overview_images/Overview_img1.jpeg)



The TreeView package provides an advanced TreeViewAdv control with numerous styles and extensive customization capabilities. The features of the control are  listed below.

### Features

Look and Feel - The control can be applied with impressive look and feel by providing different options for the users to customize the appearance of the control. 

### Enhanced performance 

TreeViewAdv control can be populated with large number of nodes on node expand / collapse. The performance while populating the TreeViewAdv with large number of nodes can be improved by the SuspendExpandRecalculate property.

### CheckBox support 

Interactive check boxes that could be checked or unchecked, which will indicate the check state of the child node's check boxes. 

### Node Images

Tree nodes can hold left images, right images and images for different state of the nodes like expand and collapse.

### Load on demand 

Enhances the performance by reducing the loading time of the nodes by displaying the nodes only on demand by the user. This provides the user to delay the loading of nodes in Trees, until the user initiates the nodes to expand.

### Customizing nodes

Allows you to edit and customize the nodes at all levels.

* LabelEdit - property that helps users to easily edit the node text at run time.
* Nodes selection - allows to select a single node or select all the nodes or only the specified nodes.
* OwnerDrawNodes - property that allows user to paint the background of the node. 
* Text Color - option to customize node text color.
* Font - option to change the node's font.
* HelpText - can be enabled for each and every nodes. Each nodes can display its own information.

### Scroll support 

Provides automatic scrolling support for the treeview controls as well as hidden nodes when the mouse is near the borders. 

### Sorting

Different types of sorting can be performed for the tree nodes like ascending, descending.

### Office2007ScrollBars

TreeViewAdv provides support for Office2007Scrollbars with all the three color schemes.

![](Overview_images/Overview_img2.jpeg)



### ToolTip 

Allows us to show and hide tooltips for the nodes wherever necessary.

### Drag and Drop 

Provides support for advanced drag and drop of the nodes.

### Context Menus

TreeViewAdv has the ability to associate context menus with the option to show and hide wherever necessary. This pops up when right mouse button is clicked on a tree node.

### Styles Architecture 

Supports a flexible style architecture to let users define the styles for nodes at different levels of the Tree. It helps the users to specify the styles for a specific node or for a class of nodes.

### Custom Control

Support for custom control feature allows to add custom controls to the tree structure that can be embedded to the required tree node. See custom control for details.

See Also

Concepts and Features

