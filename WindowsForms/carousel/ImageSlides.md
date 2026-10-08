---
layout: post
title: ImageSlides in Windows Forms Carousel | Syncfusion®
description: ImageSlides support enables displaying images in Carousel using image collections, image lists, and file-based sources.
platform: WindowsForms
control: Carousel
documentation: ug
---

# ImageSlides in Windows Forms Carousel

[ImageSlides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageSlides) is a dedicated property for adding and displaying images in the Carousel control, and it also provides several customization options. The default value of this property is `false`.

{% tabs %}

{% highlight C# %}


this.carousel1.ImageSlides = true;
{% endhighlight %}

{% highlight VB %}


Me.carousel1.ImageSlides = True
{% endhighlight %}

{% endtabs %}

## Adding images to the Carousel control

You can add images to the Carousel control only when the [ImageSlides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageSlides) property is `true`. You can populate images in the following three ways:

### Through ImageListCollection

Add `CarouselImage` instances to the [ImageListCollection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageListCollection).

{% tabs %}

{% highlight C# %}

CarouselImage carouselImage1 = new CarouselImage();
carouselImage1.ItemImage = System.Drawing.Image.FromFile(@"C:\Images\image1.png");
this.carousel1.ImageListCollection.Add(carouselImage1);

{% endhighlight %}

{% highlight VB %}

Dim carouselImage1 As New CarouselImage()
carouselImage1.ItemImage = System.Drawing.Image.FromFile("C:\Images\image1.png")
Me.carousel1.ImageListCollection.Add(carouselImage1)

{% endhighlight %}

{% endtabs %}

### Through image list

Assign an [ImageList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_ImageList) containing images directly to the control. The control will be populated with the images stored in the image list.

{% tabs %}

{% highlight C# %}

System.Windows.Forms.ImageList imageList1 = new System.Windows.Forms.ImageList();
imageList1.Images.Add(System.Drawing.Image.FromFile(@"C:\Images\image1.png"));
imageList1.Images.Add(System.Drawing.Image.FromFile(@"C:\Images\image2.png"));
this.carousel1.ImageList = imageList1;

{% endhighlight %}

{% highlight VB %}

Dim imageList1 As New System.Windows.Forms.ImageList()
imageList1.Images.Add(System.Drawing.Image.FromFile("C:\Images\image1.png"))
imageList1.Images.Add(System.Drawing.Image.FromFile("C:\Images\image2.png"))
Me.carousel1.ImageList = imageList1

{% endhighlight %}

{% endtabs %}

### Through file path

Assign the path of a folder to the [FilePath](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_FilePath) property. Images from the specified location will be fetched and arranged in the control.

{% tabs %}

{% highlight C# %}

this.carousel1.FilePath = @"C:\Images";

{% endhighlight %}

{% highlight VB %}

Me.carousel1.FilePath = "C:\Images"

{% endhighlight %}

{% endtabs %}




