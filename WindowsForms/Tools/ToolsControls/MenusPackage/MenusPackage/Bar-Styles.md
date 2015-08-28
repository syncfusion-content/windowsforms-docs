---
layout: post
title: Bar Styles
description: bar styles
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Bar Styles

The BarStyle property of the bar object lets users customize certain behavior and look-and-feel of the toolbar, such as visibility, whether it should be drawn in multi-line mode or whether the toolbar should be treated like a status bar that always gets shown at the bottom of the form.

_Table510: Property Table_

<table>
<tr>
<th>
Bar.BarStyle Property</th><th>
Description</th></tr>
<tr>
<td>
AllowQuickCustomizing</td><td>
This will draw an arrow button to the right side of the toolbar that will allow the user to drop down a menu from which they can select hidden items, add or remove buttons and invoke Customize dialog. {{ '_Note:_' | markdownify }} This is effective only with IsMainMenu unchecked.</td></tr>
<tr>
<td>
DrawDragBorder</td><td>
Allows the user to drag the bar around, to move it within dock border, dock to different border or float. To move the bar within the form set DrawDragBorder to true. If this is not set, user cannot to move the bar.</td></tr>
<tr>
<td>
Multiline</td><td>
Wraps the bar into multiple rows when there is not enough space in a row while docked or the user resizes the floating bars.</td></tr>
<tr>
<td>
IsMainMenu</td><td>
When this option is checked, it treats the bar as the main menu and forces the bar to occupy the whole row irrespective of multiline settings. > {{ '_Note: If this option is selected for more one bar, the first setting will be effective and the rest will be ignored._' | markdownify }}</td></tr>
<tr>
<td>
RotateWhenVertical</td><td>
The text in the bars will always be drawn as horizontal irrespective of docked position of a bar. To change this behavior RotateWhenVertical should be set to true.</td></tr>
<tr>
<td>
TextBelowImage</td><td>
Specifies whether the text in the bar should be drawn below the images in the toolbar.</td></tr>
<tr>
<td>
UseWholeRow</td><td>
Forces the bar to occupy the full row when docked to Form's border.</td></tr>
<tr>
<td>
Visible</td><td>
Hides / shows a bar.</td></tr>
</table>


![](Overview_images/Overview_img154.jpeg)




{% highlight c# %}


this.bar1.BarStyle = ((Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle)((((((((Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.AllowQuickCustomizing | Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.IsMainMenu)| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.MultiLine) 

| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.RotateWhenVertical)| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.Visible) 

| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.UseWholeRow)| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.DrawDragBorder) 

| Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.TextBelowImage)));


{% endhighlight  %}



{% highlight vbnet %}
Me.bar1.BarStyle = (CType((((((((Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.AllowQuickCustomizing Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.IsMainMenu) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.MultiLine) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.RotateWhenVertical) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.Visible) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.UseWholeRow) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.DrawDragBorder) Or Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle.TextBelowImage), Syncfusion.Windows.Forms.Tools.XPMenus.BarStyle))
{% endhighlight  %}
