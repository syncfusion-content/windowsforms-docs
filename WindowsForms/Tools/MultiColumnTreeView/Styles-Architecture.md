---
layout: post
title: Styles-Architecture
description: Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---

# Styles Architecture

The tree control employs an extensive Styles Architecture, that let users specify node styles globally, specifically for a class of nodes. This is possible by using a style information instance for each class of nodes, represented by a MultiColumnTreeView.TreeNodeAdvStyleInfo. Users will notice that for some of these classes of nodes, the style needs to be declared with a name at the tree level and stored in the tree's BaseStyles hatch table.

As illustrated below, implicit style inheritance is enforced by the framework while explicit style inheritance can be setup by the programmer. For all styles, explicit inheritance precedes implicit inheritance.

Implicit Style Inheritance

When a style is not set in a style info object, it inherits the style from the previous level and so on until it reaches the default global style on top of the hierarchy. This is called implicit style inheritance and is illustrated below.

* Node Specific Style: At the bottom of the hierarchy is the node specific style which lets users specify a style directly on a TreeNodeAdv. Refer Node specific Style.
* Node's Child Style: Each node also exposes a ChildStyle property where you can specify the style for the immediate children of that node. Refer Child Style for setting style of children nodes.
* Node Level Styles: The framework also lets you specify a style for all nodes at a particular level in the tree hierarchy, the top-most level being 1. Refer Node Level Style for setting node level style settings.
* Standard Style or Global Style: A standard, global style is exposed by the MultiColumnTreeViewAdv control to be applied on all the nodes in the tree. Refer Standard Style for setting style in a Tree level.
* Column Style : This lets you specify the styles for the columns.
* SubItem Style : This lets you specify the styles for the Sub Items of the nodes.

### Explicit Style Inheritance

Any StyleInfo instance can also inherit explicitly from a specific named StyleInfo object. This can be done using the BaseStyle property of the TreeNodeAdvStyleInfo type. As noted previously, such named styles should be available in the tree control's BaseStyles Collection Editor. You can also add custom styles using this editor.

_Table_ _530__: Property Table_

<table>
<tr>
<td>
MultiColumnTreeView Property</td><td>
Description</td></tr>
<tr>
<td>
BaseStyle</td><td>
Indicates the base style of the nodes.</td></tr>
</table>


StandardStyle is the default style for the nodes. It can be edited using MultiColumnTreeView.StandardStyle property. It can also be edited through BaseStyles Collection Editor dialog.

The TreeViewAdv control provides the below default styles which can be edited through BaseStyles Collection Editor also. In BaseStyle Collection Editor, StandardColumnStyle represents Standard - Column, StandardStyle represents Standard Styles and StandardSubItemStyle represents Standard - SubItem. User can customize these styles and apply to specific nodes through Nodes Collection Editor.

_Table_ _531__: Property Table_

<table>
<tr>
<td>
MultiColumnTreeView Property</td><td>
Description</td></tr>
<tr>
<td>
StandardColumnStyle</td><td>
Indicates the default styles that all the columns will inherit.</td></tr>
<tr>
<td>
StandardStyle</td><td>
Indicates the styles that all the nodes inherit from.</td></tr>
<tr>
<td>
StandardSubItemStyle</td><td>
Indicates the style that all the subitems will inherit from.</td></tr>
</table>


 ![](Styles-Architecture_images/Styles-Architecture_img1.jpeg) 



User can also add their own styles using this BaseStyles Collection Editor. The styles which can be added by the users are as follows.

_Table_ _532__: Styles Table_

<table>
<tr>
<td>
BaseStyles</td><td>
Description</td></tr>
<tr>
<td>
BaseStyle</td><td>
Indicates the base style of the nodes.</td></tr>
<tr>
<td>
NodeLevelStyle</td><td>
Indicates the style specific to a node.</td></tr>
<tr>
<td>
ColumnStyle</td><td>
Indicates the default styles that all the columns will inherit.</td></tr>
<tr>
<td>
NodeSubItemStyle</td><td>
Indicates the style that all the subitems will inherit from.</td></tr>
</table>








