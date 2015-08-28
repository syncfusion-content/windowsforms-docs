---
layout: post
title: Text Settings
description: Concepts and Features
platform: windowsforms
control: GroupView
documentation: ug
---
# Text Settings

This section describes the text alignment options available for GroupView.

### Text Highlighting

The GroupView control provides highlighting of text when the mouse is over the GroupView Item. This can be activated by setting the HighlightText property to 'True'.

{% highlight C# %} 

this.groupView1.HighlightText = true;

 {% endhighlight %}

 
{% highlight vbnet %} 

Me.groupView1.HighlightText = True

{% endhighlight %}

 ![](Overview_images/Overview_img60.jpeg)
Figure 968: "My Computer" Item is Highlighted in the GroupView Control


### Text Offset

The following properties are used to set the text offset for the GroupView Items.

_Table_ _563__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
HighlightTextOffset</td><td>
Sets the text offset for the highlighted GroupView Item.</td></tr>
<tr>
<td>
SelectedHighlightTextOffset</td><td>
Specifies the offset for the text of the selected GroupView Item when the mouse is moved over it.</td></tr>
<tr>
<td>
SelectingTextOffset</td><td>
Sets the text offset for the GroupView Item being selected.</td></tr>
<tr>
<td>
SelectedTextOffset</td><td>
Sets the text offset for the selected GroupView Item.</td></tr>
</table>


> _Note: HighlightText property must be set to 'True' in all the cases._

{% highlight C# %}  

this.groupView1.HighlightTextOffset = new System.Drawing.Point(10, 5);

this.groupView1.SelectedHighlightTextOffset = new System.Drawing.Point(20, 6);

this.groupView1.SelectedTextOffset = new System.Drawing.Point(30, 7);

this.groupView1.SelectingTextOffset = new System.Drawing.Point(40, 8);

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.HighlightTextOffset = New System.Drawing.Point(10, 5)

Me.groupView1.SelectedHighlightTextOffset = New System.Drawing.Point(20, 6)

Me.groupView1.SelectedTextOffset = New System.Drawing.Point(30, 7)

Me.groupView1.SelectingTextOffset = New System.Drawing.Point(40, 8)

{% endhighlight %}


 ![](Overview_images/Overview_img62.jpeg) 
Figure 969: HighlightTextOffset = "10, 5"

 ![](Overview_images/Overview_img63.jpeg)
Figure 970: SelectedHighlightTextOffset = "20, 6"

![](Overview_images/Overview_img64.jpeg) 
Figure 971: SelectedTextOffset = "30, 7"

 ![](Overview_images/Overview_img65.jpeg) 
Figure 972: SelectingTextOffset = "40, 8"

The methods associated with these properties are given below.

_Table_ _564__: Methods Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td>
ResetHighlightTextOffset</td><td>
Resets the HighlightTextOffset property to it's default value.</td></tr>
<tr>
<td>
ResetSelectedHighlightTextOffset</td><td>
Resets the SelectedHighlightTextOffset property to it's default value.</td></tr>
<tr>
<td>
ResetSelectingTextOffset</td><td>
Resets the SelectingTextOffset property to it's default value.</td></tr>
<tr>
<td>
ResetSelectedTextOffset</td><td>
Resets the SelectedTextOffset property to it's default value.</td></tr>
</table> 

### Text Formatting

The following table lists the text formatting properties of GroupView Control.

_Table_ _565__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
TextSpacing</td><td>
Specifies the distance between the GroupView Item's image and text. The default value is 8.</td></tr>
<tr>
<td>
TextUnderline</td><td>
Specifies whether the control should underline the text when the mouse is moved over the GroupView Item.</td></tr>
<tr>
<td>
TextWrap</td><td>
Specifies whether the GroupView Item's text should be wrapped when the control width is insufficient to accommodate the entire text.</td></tr>
</table>


![](Overview_images/Overview_img66.jpeg) 
Figure 973: Text Underline Illustrated

 ![](Overview_images/Overview_img67.jpeg) 
Figure 974: Text Wrap Illustrated

{% highlight C# %}  

this.groupView1.TextSpacing = 15;

this.groupView1.TextUnderline = true;

this.groupView1.TextWrap = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.TextSpacing = 15

Me.groupView1.TextUnderline = True

Me.groupView1.TextWrap = True

{% endhighlight %}


### In-Place Renaming

It is possible to rename the specified GroupView Item at run-time using the InplaceRenameItem() method.

{% highlight C# %}  

// index: index of the GroupView Item to be renamed.

this.groupView1.InplaceRenameItem(index);

{% endhighlight %}



{% highlight vbnet %} 

' index: index of the GroupView Item to be renamed.

Me.groupView1.InplaceRenameItem(index)

{% endhighlight %}

_Table_ _566__: Method Table_

<table>
<tr>
<td>
Method</td><td>
Description</td></tr>
<tr>
<td>
CancelInplaceRenameItemAt</td><td>
Cancels an in-place edit that is in progress.</td></tr>
</table>