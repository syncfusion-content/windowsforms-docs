---
layout: post
title: ListBarItem
description: listbaritem
platform: windowsforms
control: Menus Package 
documentation: ug
---
# ListBarItem

A ListBarItem is a BarItem which, when added to a ParentBarItem will expand itself into an ordered list of BarItems represented by the string list in its ChildCaptions property. 

![](Overview_images/Overview_img55.jpeg)



## Adding Items for the ListBarItems

A list of items can be specified in ListBarItem.ChildCaptions property and this ListBarItem should be added to a ParentBarItem. The list can be numbered by enabling UseNumberedList property.

_Table478: Property Table_

<table>
<tr>
<th>
ListBarItem Property</th><th>
Description</th></tr>
<tr>
<td>
ChildCaptions</td><td>
Specifies the list of items to be displayed in the ListBarItem.</td></tr>
<tr>
<td>
UseNumberedList</td><td>
It specifies whether or not to use numbers in the expanded list.</td></tr>
<tr>
<td>
Customizable</td><td>
Specifies whether the bar item is involved in the customization.</td></tr>
</table>

> Note: The BarItem should not be in User Customization mode / Customizable property should be set to false, to effect these settings.



{% highlight c# %}

this.listBarItem1.Customizable = false;

this.listBarItem1.ChildCaptions.AddRange(new string[] {"Document1", "Document2", "Document3"});

this.listBarItem1.UseNumberedList = true;


{% endhighlight  %}
{% highlight vbnet %}




Me.listBarItem1.Customizable = False 

Me.listBarItem1.ChildCaptions.AddRange(New String() {"Document1", "Document2", "Document3"}) 

Me.listBarItem1.UseNumberedList = True 


{% endhighlight  %}
![](Overview_images/Overview_img57.jpeg) | markdownify }



## Behavior Settings

ListBarItem supports all the behavior properties of BarItem.

## Other Common properties

For setting images see Image Settings; 

For Editing the text and setting text alignments, see BarItem Text; 

For setting shortcuts for the bar items, see Keyboard shortcuts and 

For changing the Paint Style, see PaintStyle topic. 

Appearance of the Text can be customized. See Foreground Settings for details.

See Also

UpdateUIOnAppIdle property in UI Command Update Patterns topic,

Customize Dialog
