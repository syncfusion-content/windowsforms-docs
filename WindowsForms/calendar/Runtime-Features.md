---
layout: post
title: Runtime Features | WindowsForms | Syncfusion
description: runtime features
platform: WindowsForms
control: EditorPackage 
documentation: ug
---
# Runtime Features

This section covers the below topics:

## Month Images

We can set images for the popup menu of the Calendar using [MonthImageList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~MonthImageList.html) property of DateTimePickerAdv control.


{% highlight C#  %}
// imageList1
this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
// ImageList of the PopupMenu of the Popup Calendar
this.dateTimePickerAdv1.MonthImageList = this.imageList1;
{% endhighlight   %}
{% highlight VB  %}
' imageList1
Me.imageList1.ImageSize = New System.Drawing.Size(16, 16)
Me.imageList1.ImageStream= (CType(resources.GetObject("imageList1.ImageStream"), System.Windows.Forms.ImageListStreamer))
' ImageList of the PopupMenu of the Popup Calendar
Me.dateTimePickerAdv1.MonthImageList = Me.imageList1
{% endhighlight %}

![Month Images](Calendar_Images/Overview_img210.jpeg) 

## Navigating between fields

At run time, user can easily navigate between values in the text field like date, month, year, time using the TAB key. The below properties settings are necessary for tabbing between the fields.

* [TabStop](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~TabStop.html)
* [TabForwarding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~TabForwarding.html)
* [TabIndex](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.tabindex?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_TabIndex)
* [TabLeave](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~TabLeave.html)

{% highlight C#  %}
this.dateTimePickerAdv1.TabForwarding = true;
this.dateTimePickerAdv1.TabIndex = 1;
this.dateTimePickerAdv1.TabLeave = true;
this.dateTimePickerAdv1.TabStop = true;
{% endhighlight   %}
{% highlight VB  %}
Me.dateTimePickerAdv1.TabForwarding = True
Me.dateTimePickerAdv1.TabIndex = 1
Me.dateTimePickerAdv1.TabLeave = True
Me.dateTimePickerAdv1.TabStop = True
{% endhighlight   %}


## Context Menu

When you right-click on a DateTimePickerAdv control at run time, a context menu will be displayed like the below image. 

![Context menu](Calendar_Images/Overview_img211.jpeg)

This default context menu can be replaced with Syncfusion XP Menu by setting [UseEnhancedMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~UseEnhancedMenu.html) property to true. By default it is set to false. 

{% highlight C# %}
this.dateTimePickerAdv1.UseEnhancedMenu = true;
{% endhighlight  %}
{% highlight VB %}
Me.dateTimePickerAdv1.UseEnhancedMenu = True
{% endhighlight  %}

![Context menu](Calendar_Images/Overview_img212.jpeg) 

## Menu Options

The menu options are: 

* Cut - Cuts the displayed date and by default displays "No Date is selected" string.
* Copy - Copies the displayed date and stores in clipboard.
* Paste - Pastes the copied date.
* No Date/Time - Selects no date and displays "No Date is selected".

We can set the text value format that is copied to the clipboard using [ClipboardFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~ClipboardFormat.html) property.

* [ClipboardFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~ClipboardFormat.html)
* [CopyFieldsOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CopyFieldsOnly.html)

{% highlight C# %}
this.dateTimePickerAdv1.CopyFieldsOnly = true;
this.dateTimePickerAdv1.ClipboardFormat = System.Windows.Forms.DateTimePickerFormat.Short;
{% endhighlight  %}
{% highlight VB %}
Me.dateTimePickerAdv1.CopyFieldsOnly = True
Me.dateTimePickerAdv1.ClipboardFormat = System.Windows.Forms.DateTimePickerFormat.Short
{% endhighlight  %}

{% seealso %}

 Text Field, Null value Settings

 {% endseealso %}