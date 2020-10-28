---
layout: post
title: Change the date in a DateTimePickerAdv| WindowsForms | Syncfusion
description: Learn here about how to change the date in a Windows Forms datetimepickeradv control, when it is readonly.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# How to change the date in a DateTimePickerAdv control, when it is ReadOnly?

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


