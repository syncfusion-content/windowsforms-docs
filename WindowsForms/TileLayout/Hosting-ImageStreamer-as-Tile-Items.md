---
layout: post
title: Hosting ImageStreamer as Tile Items | WindowsForms | Syncfusion
description: Hosting ImageStreamer as Tile Items
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# Hosting ImageStreamer as tile items

In TileLayout, ImageStreamer control is used as an Item in LayoutGroup. To add the Images into the ImageStreamer, ImagesCollection property is used.

![](HostingImageStreamerasItems_images/ImagesCollection.png)

![](HostingImageStreamerasItems_images/ImagesCollection1.png)


## InternalBackColor

Sets the BackColor of the ImageStreamer

{% tabs %}

{% highlight C# %}

//Gets or sets the back color of the ImageStreamer

this.imageStreamer1.InternalBackColor = System.Drawing.Color.Pink;

{% endhighlight %}


{% highlight VB %}

'Gets or sets the back color of the ImageStreamer

 Me.imageStreamer1.InternalBackColor = System.Drawing.Color.Pink
 
{% endhighlight %}

{% endtabs %}


![](HostingImageStreamerasItems_images/ImageStreamerColor.png)


## SliderSpeed

Specifies the speed of the Slider in the ImageStreamer.

{% tabs %}

{% highlight C# %}

//Gets or sets the SliderSpeed

this.imageStreamer1.SliderSpeed = 100;

{% endhighlight %}


{% highlight VB %}

 'Gets or sets the SliderSpeed
 
 Me.imageStreamer1.SliderSpeed = 100
 
{% endhighlight %}

{% endtabs %}


## ShowNavigator

Navigator which is used to navigate the slide show direction is shown when the `ShowNavigator` property is `true`. To enable this property SlideShow must be `true`.

{% tabs %}

{% highlight C# %}

// Shows the Navigator

this.imageStreamer1.ShowNavigator = true;

this.imageStreamer1.SlideShow = true;

{% endhighlight %}

{% highlight VB %}

'Shows the Navigator

 Me.imageStreamer1.ShowNavigator = True
 
 Me.imageStreamer1.SlideShow = True
 
{% endhighlight %}

{% endtabs %}

![](HostingImageStreamerasItems_images/Navigator.png)

## SlideShow

This property shows all the Images which is loaded in the ImageStreamer.

{% tabs %}

{% highlight C# %}

//Enables the SlideShow

this.imageStreamer1.SlideShow = true;

{% endhighlight %}

{% highlight VB %}

‘Enables the SlideShow

Me.imageStreamer1.SlideShow = true
 
{% endhighlight %}

{% endtabs %}

## ImageStreamDirection

This property gives the ImageStream direction in the SlideShow.

* LeftToRight
* RightToLeft
* TopToBottom
* BottomToTop
* HorizontalFlip

{% tabs %}

{% highlight C# %}

//Gets or sets the ImageStream direction

this.imageStreamer1.ImageStreamDirection = Syncfusion.Windows.Forms.Tools.ImageStreamer.StreamDirection.HorizontalFlip;

{% endhighlight %}

{% highlight VB %}

‘Gets or sets the ImageStream direction

Me.imageStreamer1.ImageStreamDirection = Syncfusion.Windows.Forms.Tools.ImageStreamer.StreamDirection.HorizontalFlip
 
{% endhighlight %}

{% endtabs %}

![](HostingImageStreamerasItems_images/StreamDirection1.png)
![](HostingImageStreamerasItems_images/StreamDirection2.png)
![](HostingImageStreamerasItems_images/StreamDirection3.png)
![](HostingImageStreamerasItems_images/StreamDirection4.png)
![](HostingImageStreamerasItems_images/StreamDirection5.png)

## ImageStreamerType

ImageStreamer has two types.

* Normal
* DoubleHorizontal

In Normal ImageStreamer, one image is displayed at a time.In DoubleHorizontal mode, either we can load two images or single image at a time. If single image is loaded in DoubleHorizontal mode the Image will be resized to this DoubleHorizontal size.

{% tabs %}

{% highlight C# %}

//Gets or sets the ImageStreamer type

this.imageStreamer2.Type = Syncfusion.Windows.Forms.Tools.ImageStreamer.ImageStreamerType.Normal;

this.imageStreamer2.Type = Syncfusion.Windows.Forms.Tools.ImageStreamer.ImageStreamerType.DoubleHorizontal;

{% endhighlight %}

{% highlight VB %}

'Gets or sets the ImageStreamer type

Me.imageStreamer1.Type = Syncfusion.Windows.Forms.Tools.ImageStreamer.ImageStreamerType.Normal

Me.imageStreamer1.Type = Syncfusion.Windows.Forms.Tools.ImageStreamer.ImageStreamerType.DoubleHorizontal
 
{% endhighlight %}

{% endtabs %}

![](HostingImageStreamerasItems_images/Properties_img1.jpeg)


