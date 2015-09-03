---
layout: post
title: Runtime Features
description: runtime features
platform: windowsforms
control: EditorPackage 
documentation: ug
---
# Runtime Features

This section covers the below topics:

## Month Images

We can set images for the popup menu of the Calendar using MonthImageList property of DateTimePickerAdv control.


{% highlight c#  %}


// imageList1

this.imageList1.ImageSize = new System.Drawing.Size(16, 16);

this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));



// ImageList of the PopupMenu of the Popup Calendar

this.dateTimePickerAdv1.MonthImageList = this.imageList1;




{% endhighlight   %}
{% highlight vbnet  %}


' imageList1

Me.imageList1.ImageSize = New System.Drawing.Size(16, 16)

Me.imageList1.ImageStream= (CType(resources.GetObject("imageList1.ImageStream"), System.Windows.Forms.ImageListStreamer))



' ImageList of the PopupMenu of the Popup Calendar

Me.dateTimePickerAdv1.MonthImageList = Me.imageList1

{% endhighlight %}

![](Calendar_Images/Overview_img210.jpeg) 

## Navigating between fields

At run time, user can easily navigate between values in the text field like date, month, year, time using the TAB key. The below properties settings are necessary for tabbing between the fields.

Table192: Property Table

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TabStop</td><td>
Indicates whether the user can use the Tab key, to focus the DateTimePickerAdv control.</td></tr>
<tr>
<td>
TabForwarding</td><td>
Indicates if the control will moves its focus to the next field when the tab key is pressed.</td></tr>
<tr>
<td>
TabIndex</td><td>
Indicates the index in the TAB order that this control will occupy.</td></tr>
<tr>
<td>
TabLeave</td><td>
Indicates whether the focus should be moved away from the control, when there is no fields to tab through.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.TabForwarding = true;

this.dateTimePickerAdv1.TabIndex = 1;

this.dateTimePickerAdv1.TabLeave = true;

this.dateTimePickerAdv1.TabStop = true;




{% endhighlight   %}
{% highlight vbnet  %}


Me.dateTimePickerAdv1.TabForwarding = True

Me.dateTimePickerAdv1.TabIndex = 1

Me.dateTimePickerAdv1.TabLeave = True

Me.dateTimePickerAdv1.TabStop = True
{% endhighlight   %}


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

Table191: Property Table

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

> See Also
> 
> Text Field, Null value Settings
