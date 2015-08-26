---
layout: post
title: Adding Color Items and sub items to Color Groups
description: adding color items and sub items to color groups
platform: windowsforms
control: ColorPickerUIAdv 
documentation: ug
---
# Adding Color Items and sub items to Color Groups

The below properties lets you add color items and sub items.

_Table205: Property Table_

<table>
<tr>
<th>
ColorPickerUIAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Items</td><td>
This property invokes a ColorItem Collection Editor, which lets you add the colors to the group. You can also add sub items to this particular color item using another ColorItem Collection Editor which is invoked using SubItems property.</td></tr>
<tr>
<td>
IsSubItemsVisible</td><td>
Specifies if sub items should be visible.</td></tr>
<tr>
<td>
SubItemsDepth</td><td>
Specifies the depth of the sub items, i.e the number of sub items that can be added to a color item.</td></tr>
</table>


* Opening ColorItem Collection Editor using Items property.

![](ColorPickerUIAdv_Images/Overview_img260.jpeg) 



* Adding GroupColor items.

![](ColorPickerUIAdv_Images/Overview_img261.jpeg) 



* Adding color / sub items to the GroupColor items.

![](ColorPickerUIAdv_Images/Overview_img262.jpeg) 





{% highlight c# %}

this.colorPickerUIAdv1.RecentGroup.Items.Add(groupColorItem0);

this.colorPickerUIAdv1.RecentGroup.IsSubItemsVisible = true;

this.colorPickerUIAdv1.RecentGroup.SubItemsDepth = 1;


{% endhighlight  %}
{% highlight vbnet %}




Me.colorPickerUIAdv1.RecentGroup.Items.Add(groupColorItem0)

Me.colorPickerUIAdv1.RecentGroup.IsSubItemsVisible = True

Me.colorPickerUIAdv1.RecentGroup.SubItemsDepth = 1

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img263.jpeg) 



> Note: To know how to customize a color item, refer_ Color Items _topic.
