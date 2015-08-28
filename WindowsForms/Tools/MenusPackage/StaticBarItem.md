---
layout: post
title: StaticBarItem
description: staticbaritem
platform: windowsforms
control: Menus Package 
documentation: ug
---
# StaticBarItem

A StaticBarItem is a BarItem that provides users a label-like behavior to show plain text in the toolbars and menus. 

The user cannot click or interact with this type of BarItem. It is typically used in the status bar-type toolbar. 

![](Overview_images/Overview_img60.jpeg) 



The text displayed in the status bar can be changed based on the bar items selected. Insert the following code snippet in the 'Selected' event handler of any bar items whose status is to be known. 


{% highlight c# %}


private void Item_Selected(object sender, System.EventArgs e)

{

BarItem item = sender as BarItem;

this.staticBarItem1.Text = item.Text;

}



{% endhighlight  %}
{% highlight vbnet %}



Private Sub Item_Selected(ByVal sender As Object, ByVal e As System.EventArgs)

    Dim item As BarItem = CType(IIf(TypeOf sender Is BarItem, sender, Nothing), BarItem)

    Me.staticBarItem1.Text = item.Text

End Sub

{% endhighlight  %}

![](Overview_images/Overview_img61.jpeg)



## Behavior Settings

_Table480: Property Table_

<table>
<tr>
<th>
ParentBarItem Property</th><th>
Description</th></tr>
<tr>
<td>
FlatBorderColor</td><td>
Sets border color for the StaticBarItem.</td></tr>
<tr>
<td>
IsRecentlyUsedItem</td><td>
Indicates whether this item will appear in its parent's partial menus list. Partial Menus is discussed in ParentBarItem topic.</td></tr>
<tr>
<td>
Visible</td><td>
Sets the visibility of the bar item.</td></tr>
<tr>
<td>
MergeOrder</td><td>
Relative Position of the bar item when it is merged with another.</td></tr>
<tr>
<td>
MergeType</td><td>
Sets behavior of the bar item when its bar is merged with another. The options are,{{ '_Add_' | markdownify }} - Adds to the existing menu items. (Default){{ '_Replace_' | markdownify }} - Replaces an existing menu items at the same position in a merged menu.{{ '_MergeItems_' | markdownify }} - Merged with an existing menu items at the same position in a merged menu.{{ '_Remove_' | markdownify }} - Menu item will not be included in the merged menu.</td></tr>
<tr>
<td>
Customizable</td><td>
Specifies whether the bar item is involved in the customization.</td></tr>
<tr>
<td>
Padding</td><td>
Gets or sets padding for items.</td></tr>
<tr>
<td>
ShowMnemonicUnderlinesAlways</td><td>
It indicates whether to show underlines with mnemonic always.</td></tr>
</table>

## Other Common properties

For setting images see Image Settings; 

For Editing the text and setting text alignments, See BarItem Text; 

For changing the Paint Style, see PaintStyle topic. 

Appearance of the Text can be customized. See Foreground Settings for details.

See Also

UpdateUIOnAppIdle property in UI Command Update Patterns topic,

Customize Dialog