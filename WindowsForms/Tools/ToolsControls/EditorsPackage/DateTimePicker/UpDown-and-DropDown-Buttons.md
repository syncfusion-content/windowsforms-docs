---
layout: post
title: UpDown and DropDown Buttons
description: updown and dropdown buttons
platform: windowsforms
control: DateTimePicker
documentation: ug
---
# UpDown and DropDown Buttons

This section discusses the properties of DateTimePickerAdv control which customizes the UpDown and DropDown buttons.

## UpDown Buttons

The below properties controls the appearance and behavior of the UpDown buttons.

_Table179: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowUpDown</td><td>
Shows or hides the UpDown buttons.</td></tr>
<tr>
<td>
ShowUpDownOnFocus</td><td>
Shows or hides the UpDown button when focussed. By default it is set to false.</td></tr>
<tr>
<td>
VSLikeUpDown</td><td>
Specifies whether the UpDown button will have VS-like look.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv2.ShowUpDown = true;

this.dateTimePickerAdv2.ShowUpDownOnFocus = true;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv2.ShowUpDown = True

Me.dateTimePickerAdv2.ShowUpDownOnFocus = True
{% endhighlight   %}


In the below image, when focus is on button control, the updown button is hidden. In the second image, DateTimePickerAdv is focussed and the UpDown button is shown.

![](DateTimePicker_images/Overview_img184.jpeg) 



![](DateTimePicker_images/Overview_img185.jpeg) 



![](DateTimePicker_images/Overview_img186.jpeg) 



## DropDown Button

DropDown button in the DateTimePickerAdv is visible by default. To hide the dropdown button set ShowDropDown property to false. The below are the properties available, to change the default appearance of the control.

## Color Settings

At run time, drop down button can be in normal mode, pressed mode or in selected mode. Different colors can be set for different modes.

_Table180: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DropDownNormalColor</td><td>
Gets or Sets the dropdown backcolor in Normal mode.</td></tr>
<tr>
<td>
DropDownPressedColor</td><td>
Gets or Sets the dropdown backcolor in Pressed mode, i.e, when the date is selected in the text field.</td></tr>
<tr>
<td>
DropDownSelectedColor</td><td>
Gets or Sets the dropdown backcolor in Selected mode, i.e, when a date is selected using the popup calendar.</td></tr>
</table>





{% highlight c#  %}
this.dateTimePickerAdv2.DropDownNormalColor = System.Drawing.Color.LightBlue;

this.dateTimePickerAdv2.DropDownPressedColor = System.Drawing.Color.Goldenrod;

this.dateTimePickerAdv2.DropDownSelectedColor = System.Drawing.Color.SteelBlue;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv2.DropDownNormalColor = System.Drawing.Color.LightBlue

Me.dateTimePickerAdv2.DropDownPressedColor = System.Drawing.Color.Goldenrod

Me.dateTimePickerAdv2.DropDownSelectedColor = System.Drawing.Color.SteelBlue
{% endhighlight   %}
> Note: These settings will be effective only when DateTimePickerAdv.Style is Office2003, OfficeXP and VS2005.

![](DateTimePicker_images/Overview_img188.jpeg)



## Flat Appearance

Dropdown can be given flat appearance using FlatDropDown property. By default it is false.




{% highlight c#  %}
this.dateTimePickerAdv2.FlatDropButton = true;

{% endhighlight   %}

{% highlight vbnet  %}



this.dateTimePickerAdv2.FlatDropButton = true;
{% endhighlight   %}

> Note: These setting will be effective only when DateTimePickerAdv.Style is Default.

![](DateTimePicker_images/Overview_img190.jpeg) 



## Alignment of the DropDown

When the dropdown button is clicked, the calendar pops up, based on the alignment specified in DropDownAlign property. Default value is Left.



{% highlight c#  %}

this.dateTimePickerAdv1.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right;

{% endhighlight  %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right
{% endhighlight   %}


![](DateTimePicker_images/Overview_img191.jpeg) 



## Image for DropDown

The existing dropdown icon can be replaced with a custom image using the below properties.

_Table181: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DropDownImage</td><td>
Gets or Sets the Image for dropdown button. </td></tr>
<tr>
<td>
StretchDropDownImage</td><td>
Specifies whether the image of the dropdown is stretched.</td></tr>
</table>



{% highlight c#  %}


this.dateTimePickerAdv1.DropDownImage = ((System.Drawing.Image)(resources.GetObject("dateTimePickerAdv1.DropDownImage")));

this.dateTimePickerAdv1.StretchDropDownImage = true;



{% endhighlight   %}
{% highlight vbnet %}



Me.dateTimePickerAdv1.DropDownImage = DirectCast((resources.GetObject("dateTimePickerAdv1.DropDownImage")), System.Drawing.Image) 

Me.dateTimePickerAdv1.StretchDropDownImage = True 
{% endhighlight   %}


![](DateTimePicker_images/Overview_img192.jpeg) 



![](DateTimePicker_images/Overview_img193.jpeg) 



See Also

Checkbox, Text Field