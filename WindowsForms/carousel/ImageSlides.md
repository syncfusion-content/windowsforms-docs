---
layout: post
title: ImageSlides in Windows Forms Carousel control | Syncfusion
description: Learn about ImageSlides support in Syncfusion Windows Forms Carousel control and more details.
platform: WindowsForms
control: Carousel
documentation: ug
---

# ImageSlides in Windows Forms Carousel

[ImageSlides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageSlides) is a dedicative property for adding and displaying images in the Carousel control, and it also provides several customization options.

{% tabs %}

{% highlight C# %}


this.carousel1.ImageSlides = true;
{% endhighlight %}

{% highlight VB %}


Me.carousel1.ImageSlides = True
{% endhighlight %}

{% endtabs %}

## Adding images to the carousel control

You can add images to the Carousel control only when the [ImageSlides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageSlides) property is `true`. You can populate images in three different ways:

* Through a collection named [ImageListCollection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageListCollection).
* Through [image lists](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageList).
* Can directly assign an image list to the control. It will populate the control with the images stored in the image list.
* Through [file path](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_FilePath).
* Passing the address of a folder will fetch the images from the location and will arrange them in the control.




