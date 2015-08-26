---
layout: post
title: Color Settings
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
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

