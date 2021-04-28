---
layout: post
title: Change the date in a DateTimePickerAdv| WindowsForms | Syncfusion
description: Learn about How to Change the Date When it is ReadOnly support in Syncfusion Windows Forms DateTimePickerAdv control and more.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# Change the date in a DateTimePickerAdv

This page explains How to navigate to current date in DateTimePickerAdv and more details.

## How to navigate to current date in DateTimePickerAdv ?

We can make the control read only by setting [ReadOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html#Syncfusion_Windows_Forms_Tools_DateTimePickerAdv_ReadOnly) property to true. DateTimePickerAdv control have an option to change the date, even in ReadOnly mode using Arrow keys. Set [ReadOnlyValueChange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html#Syncfusion_Windows_Forms_Tools_DateTimePickerAdv_ReadOnlyValueChange) property to true to effect this setting.

{% tabs %}

{% highlight c# %}

this.dateTimePickerAdv1.ReadOnly = true;
this.dateTimePickerAdv1.ReadOnlyValueChange = true;

{% endhighlight %}

{% highlight vbnet %}

Me.dateTimePickerAdv1.ReadOnly = True
Me.dateTimePickerAdv1.ReadOnlyValueChange = True

{% endhighlight %}

{% endtabs %}

![Change the date in a DateTimePickerAdv](FAQ_images/Overview_img224.jpeg)


