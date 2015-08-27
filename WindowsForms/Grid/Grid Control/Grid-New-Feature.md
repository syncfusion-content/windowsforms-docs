---
layout: post
title: Grid-New-Feature
description: grid new feature
platform: windowsform
control: Grid
documentation: ug
---

# Grid New Feature

ShowCurrentCellBorderBehavior property of the grid determines the behavior of the current cell's border. GridShowCurrentCellBorder enumeration specifies display of current cell's frame or border.

Here is the list of options in GridShowCurrentCellBorder enumeration.

* AlwaysVisible-Setting ShowCurrentCellBorderBehavior property with this option displays the current cell borders/frame.
* GrayWhenLostFocus-Setting ShowCurrentCellBorderBehavior property with this option shows the current cell's borders in gray when it is not focused upon.
* HideAlways-Setting ShowCurrentCellBorderBehavior property with this option hides the borders of the current cell.
* WhenGridActive-Setting ShowCurrentCellBorderBehavior property with this option highlights the current cell's border when the grid is under focus.



The following code example illustrates how to set the ShowCurrentCellBorderBehavior property:

{% highlight c# %}



this.gridControl1.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.AlwaysVisible;

{% endhighlight %}

{% highlight vbnet %}



'Set the ShowCurrentCellBorderBehavior property.

Me.gridControl1.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.AlwaysVisible
{% endhighlight %}



