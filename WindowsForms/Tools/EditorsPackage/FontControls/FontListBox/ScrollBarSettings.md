---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Editors Package
documentation: ug
---

# ScrollBar Settings

FontListBox control by default has a vertical scrollbar. It can also have a horizontal scrollbar. This section will discuss the properties which sets the scrollbar for the control.

## Horizontal Scrollbar

Horizontal scrollbar can be displayed if the items are beyond the right edge of the FontListBox. The below properties lets you do that.

_Table_ _382__: Property Table_

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
HorizontalScrollbar</td><td>
Sets the horizontal scrollbar for the control if the item exceeds beyond the right edge of the FontListBox control.</td></tr>
<tr>
<td>
HorizontalExtent</td><td>
Specifies the width of the control, when HorizontalScrollBar property is set to true.</td></tr>
</table>


{%highlight c#%}



this.fontListBox1.HorizontalExtent = 150;

this.fontListBox1.HorizontalScrollbar = true;


{%endhighlight%}

{%highlight vbnet%}

Me.fontListBox1.HorizontalExtent = 150

Me.fontListBox1.HorizontalScrollbar = True

{%endhighlight%}

 ![](Overview_images/Overview_img580.jpeg) 

See Also

How to display the scrollbars always, irrespective of the number of items?


## FontListBox Items

### Height of the FontList Items

We can set the height of the item inside the listbox through ItemHeight property. Default value is 15. 



{%highlight c#%}

this.fontListBox1.ItemHeight = 20;

{%endhighlight%}

{%highlight vbnet%}



Me.fontListBox1.ItemHeight = 20

{%endhighlight%}

 ![](Overview_images/Overview_img581.jpeg) 


 ### Sorting the Items

Sorting of the items can be enabled using Sorted property. By default it is false.

{%highlight c#%}



this.fontListBox1.Sorted = true;


{%endhighlight%}

{%highlight vbnet%}

Me.fontListBox1.Sorted = True

{%endhighlight%}


### AutoCompleting the Items

FontListBox control has the ability to auto complete the items as we type in the listbox. This feature is enabled using UseAutoComplete property to true.

{%highlight c#%}



this.fontListBox1.UseAutoComplete = true;

{%endhighlight%}


{%highlight vbnet%}



Me.fontListBox1.UseAutoComplete = True

{%endhighlight%}

