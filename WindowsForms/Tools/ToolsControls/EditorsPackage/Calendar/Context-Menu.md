---
layout: post
title: Context Menu
description: context menu
platform: windowsforms
control: Calendar
documentation: ug
---
# Context Menu

When you right-click on a DateTimePickerAdv control at run time, a context menu will be displayed like the below image. 

![](Calendar_Images/Overview_img211.jpeg)



This default context menu can be replaced with Syncfusion XP Menu by setting UseEnhancedMenu property to true. By default it is set to false. 


{% highlight c# %}

this.dateTimePickerAdv1.UseEnhancedMenu = true;

{% endhighlight  %}

{% highlight vbnet %}



Me.dateTimePickerAdv1.UseEnhancedMenu = True

{% endhighlight  %}

![](Calendar_Images/Overview_img212.jpeg) 



## Menu Options

The menu options are: 

* Cut - Cuts the displayed date and by default displays "No Date is selected" string.
* Copy - Copies the displayed date and stores in clipboard.
* Paste - Pastes the copied date.
* No Date/Time - Selects no date and displays "No Date is selected".

We can set the text value format that is copied to the clipboard using ClipboardFormat property.

_Table191: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ClipboardFormat</td><td>
While doing copy / paste operation, we can specify the format of the value of the DateTimePickerAdv control that is copied, by using ClipBoardFormat property. The formats are, * {{ '_Long(default)_' | markdownify }}* {{ '_Short_'  | markdownify }}* {{ '_Time_'  | markdownify }}* {{ '_Custom_' | markdownify }}</td></tr>
<tr>
<td>
<br>CopyFieldsOnly</td><td>
Indicates whether only the selected field will be copied or the whole text field will be copied. </td></tr>
</table>



{% highlight c# %}

this.dateTimePickerAdv1.CopyFieldsOnly = true;

this.dateTimePickerAdv1.ClipboardFormat = System.Windows.Forms.DateTimePickerFormat.Short;

{% endhighlight  %}

{% highlight vbnet %}



Me.dateTimePickerAdv1.CopyFieldsOnly = True

Me.dateTimePickerAdv1.ClipboardFormat = System.Windows.Forms.DateTimePickerFormat.Short
{% endhighlight  %}

See Also

Text Field, Null value Settings