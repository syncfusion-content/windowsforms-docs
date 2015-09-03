---
layout: post
title: Types-of-Merging
description: types of merging
platform: windowsforms
control: Control Name undefined
documentation: ug
---

# Types of Merging

 There are three types of MDI merging supported.

* Main menu Merging: MainMenus (bars with the MainMenu BarStyle) in the main form and the child forms will automatically be merged into one, irrespective of their BarName. 
* Toolbars Merging: Toolbars with the same BarName (in different forms) will be merged into one. 
* BarItems Merging: A BarItem in a child form can merge with a BarItem in the parent form, if it satisfies the following criteria.
* If it is parented by a Bar or ParentBarItem which in turn is being merged into one. 
* If it has the same text and MergeOrder value. 

The merge behavior is also controlled by the MergeType property, as follows.

_Table_ _509_: _Property Table_

<table>
<tr>
<th>
MDI Container Item's MergeType</th><th>
MDI Child Item's MergeType</th><th>
Merge Behavior</th></tr>
<tr>
<td>
Add</td><td>
Add / MergeItems / Replace</td><td>
No merging.</td></tr>
<tr>
<td>
Add</td><td>
Remove</td><td>
Parent item stays visible; child item hidden</td></tr>
<tr>
<td>
MergeItems</td><td>
MergeItems</td><td>
If both are sub-menus (ParentBarItems), their children will be merged together; otherwise the child item will replace the parent item.</td></tr>
<tr>
<td>
MergeItems</td><td>
Replace</td><td>
Child item will replace parent item.</td></tr>
<tr>
<td>
MergeItems</td><td>
Add</td><td>
No merging.</td></tr>
<tr>
<td>
MergeItems</td><td>
Remove</td><td>
Both items will be hidden.</td></tr>
<tr>
<td>
Remove</td><td>
Remove</td><td>
Both items will be hidden.</td></tr>
<tr>
<td>
Remove</td><td>
Add / MergeItems / Replace</td><td>
Child item will replace parent item.</td></tr>
<tr>
<td>
Replace</td><td>
Add</td><td>
No merging.</td></tr>
<tr>
<td>
Replace</td><td>
MergeItems</td><td>
Parent item, if any, will replace the child item.</td></tr>
<tr>
<td>
Replace</td><td>
Replace</td><td>
Child item will replace the parent item.</td></tr>
<tr>
<td>
Replace</td><td>
Remove</td><td>
Parent item stays visible; child item will be hidden.</td></tr>
</table>


You can choose anyone of the following for MDI merging.

* To let the framework automatically merge as new instances of the child types that are created.
* Explicitly merge child types as soon as the application is started.
* Explicit merging is recommended for better performance, usability and for VS.NET like behavior.
* Explicit merging is performed by calling the RegisterMDIChildTypes method with appropriate parameters (see the above section reference for example). 

N> This step is relevant only if your form is an MDI container. [IsMDIContainer = True]