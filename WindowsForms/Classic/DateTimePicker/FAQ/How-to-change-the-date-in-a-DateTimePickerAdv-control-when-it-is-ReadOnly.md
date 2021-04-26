---
layout: post
title: Change the date in a DateTimePickerAdv| WindowsForms | Syncfusion
description: Learn about How to Change the Date in a DateTimePickerAdv Control When it is ReadOnly support in Syncfusion Windows Forms DateTimePickerAdv(Classic) control and more details.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# How to Change the Date in a DateTimePickerAdv Control When it is ReadOnly in Windows Forms DateTimePickerAdv(Classic)

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


