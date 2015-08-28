---
layout: post
title: Month Images
description: month images
platform: windowsforms
control: Calendar
documentation: ug
---
# Month Images

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

