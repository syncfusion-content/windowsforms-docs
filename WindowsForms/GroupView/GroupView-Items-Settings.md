---
layout: post
title: GroupView Items Settings
description: Concepts and Features
platform: WindowsForms
control: GroupView
documentation: ug
---
# GroupView Items Settings

This section discusses the various settings that can be applied to the GroupView Items of the GroupView control. 

## Text Settings

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

## Color Settings

This section describes the color settings available for GroupView.

### Highlighting Items and Text

The color for highlighting Items and text during mouse hover can be specified using the properties given below.

_Table_ _567__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
HighlightItemColor</td><td>
Specifies the color for highlighting the GroupView Items when the mouse is moved over it.</td></tr>
<tr>
<td>
HighlightTextColor</td><td>
Specifies the color for highlighting the text of the GroupView Items when the mouse is moved over it.</td></tr>
</table>

> _Note: HighlightText property must be set to 'True' in both the cases._

{% highlight C# %}  

this.groupView1.HighlightItemColor = System.Drawing.Color.LavendarBlush;

this.groupView1.HighlightTextColor = System.Drawing.Color.Purple;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.HighlightItemColor = System.Drawing.Color.LavendarBlush

Me.groupView1.HighlightTextColor = System.Drawing.Color.Purple

{% endhighlight %}


![](Overview_images/Overview_img69.jpeg) 
Figure 975: LavendarBlush and Purple Color applied for Highlighting the Item and Text


The following table lists the methods related to the above properties.

_Table_ _568__: Methods Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td>
ResetHighlightItemColor</td><td>
Resets the HighlightItemColor property to it's default value.</td></tr>
<tr>
<td>
ResetHighlightTextColor</td><td>
Resets the HighlightTextColor property to it's default value.</td></tr>
</table>

### Highlighting Selected Items and Text

The color for highlighting selected Items and text can be specified using the properties given below.

_Table_ _569__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
SelectedHighlightItemColor</td><td>
Sets the color used to draw the background of the selected GroupView Item when the mouse cursor is moved over it.</td></tr>
<tr>
<td>
SelectedHighlightTextColor</td><td>
Sets the color used to draw the text of the selected GroupView Item when the mouse cursor is moved over it.</td></tr>
<tr>
<td>
SelectedItemColor</td><td>
Sets the color used to draw the background of the selected GroupView Item.</td></tr>
<tr>
<td>
SelectedTextColor </td><td>
Sets the color used to draw the text of the selected GroupView Item</td></tr>
<tr>
<td>
SelectingItemColor</td><td>
Specifies the color used to draw the background of the GroupView Item being selected.</td></tr>
<tr>
<td>
SelectingTextColor</td><td>
Specifies the color used to draw the text of the GroupView Item being selected.</td></tr>
</table>

> _Note: HighlightText property must be set to 'True' in all the cases._

{% highlight C# %}  

this.groupView1.SelectedHighlightItemColor = System.Drawing.Color.LightBlue;

this.groupView1.SelectedHighlightTextColor = System.Drawing.Color.Crimson;

this.groupView1.SelectedItemColor = System.Drawing.Color.LightGreen;

this.groupView1.SelectedTextColor = System.Drawing.Color.Blue;

this.groupView1.SelectingItemColor = System.Drawing.Color.PeachPuff;

this.groupView1.SelectingTextColor = System.Drawing.Color.Red;

{% endhighlight %}


{% highlight vbnet %} 

Me.groupView1.SelectedHighlightItemColor = System.Drawing.Color.LightBlue

Me.groupView1.SelectedHighlightTextColor = System.Drawing.Color.Crimson

Me.groupView1.SelectedItemColor = System.Drawing.Color.LightGreen

Me.groupView1.SelectedTextColor = System.Drawing.Color.Blue

Me.groupView1.SelectingItemColor = System.Drawing.Color.PeachPuff

Me.groupView1.SelectingTextColor = System.Drawing.Color.Red

{% endhighlight %}



![](Overview_images/Overview_img71.jpeg) 
Figure 976: LightBlue and Crimson Color applied for Highlighting the Selected Item and Text during Mouse Hover

![](Overview_images/Overview_img72.jpeg) 
Figure 977: LightGreen and Blue Color applied for Highlighting the Selected Item and Text

 ![](Overview_images/Overview_img73.jpeg) 
Figure 978: PeachPuff and Red Color applied for Highlighting the Item and Text that is Being Selected

The following table lists the methods related to the above properties.

_Table_ _570__: Property Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td>
ResetSelectedHighlightItemColor</td><td>
Resets the SelectedHighlightItemColor property value to the default value.</td></tr>
<tr>
<td>
ResetSelectedHighlightTextColor</td><td>
Resets the SelectedHighlightTextColor property to the default value.</td></tr>
<tr>
<td>
ResetSelectedItemColor</td><td>
Resets the SelectedItemColor property to the default value.</td></tr>
<tr>
<td>
ResetSelectedTextColor </td><td>
Resets the SelectedTextColor property to the default value.</td></tr>
<tr>
<td>
ResetSelectingItemColor</td><td>
Resets the SelectingItemColor property to the default value.</td></tr>
<tr>
<td>
ResetSelectingTextColor</td><td>
Resets the SelectingTextColor property to the default value.</td></tr>
</table>

## Orientation Settings for GroupView Item

The following table lists the properties related to the orientation of GroupView Items.

_Table_ _571__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
FlowView</td><td>
This is a non-text, image-only display mode where items are arranged in a horizontal layout that increases or decreases with changes in the control width.</td></tr>
<tr>
<td>
FlowViewItemTextLength</td><td>
Gets / sets the GroupView Item's text length in FlowView mode.</td></tr>
<tr>
<td>
ShowFlowViewItemText</td><td>
Specifies whether the control should show GroupView Item's text in the FlowView mode.</td></tr>
<tr>
<td>
Orientation</td><td>
Specifies the orientation for the GroupView Items. The options included are as follows.* Horizontal and* Vertical.<br>The default value is 'Vertical'.</td></tr>
</table>


{% highlight C# %} 

this.groupView1.FlowView = true;

this.groupView1.FlowViewItemTextLength = 45;

this.groupView1.ShowFlowViewItemText = true;

this.groupView1.Orientation = Syncfusion.Windows.Forms.Tools.GroupViewOrientation.Horizontal;

 {% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.FlowView = True

Me.groupView1.FlowViewItemTextLength = 45

Me.groupView1.ShowFlowViewItemText = True

Me.groupView1.Orientation = Syncfusion.Windows.Forms.Tools.GroupViewOrientation.Horizontal

{% endhighlight %}

The GroupView Items in the GroupView control can be arranged in the horizontal and vertical direction, with or without displaying text. FlowView property displays the GroupView Items with images and without text. 

If you want to show the GroupView Item's text in the FlowView mode then set the ShowFlowViewItemText property to 'True'. You can also control the length of the GroupView Item's text in the FlowView mode using the FlowViewItemTextLength property.

![](Overview_images/Overview_img74.jpeg) 
Figure 979: FlowView Illustrated

 ![](Overview_images/Overview_img75.jpeg) 
Figure 980: ShowFlowViewItemText property set to True

The Orientation property determines the direction of display for the GroupView Items. 

![](Overview_images/Overview_img76.jpeg) 
Figure 981: Orientation property Illustrated