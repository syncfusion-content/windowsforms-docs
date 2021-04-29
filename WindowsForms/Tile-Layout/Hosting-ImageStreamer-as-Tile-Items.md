---
layout: post
title: Hosting ImageStreamer as Tile Items in Windows Forms Tile Layout control | Syncfusion
description: Learn about Hosting ImageStreamer as Tile Items support in Syncfusion Windows Forms Tile Layout control and more details.
platform: WindowsForms
control: TileLayout 
documentation: ug
---

# Hosting ImageStreamer as Tile Items in Windows Forms Tile Layout

In [TileLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TileLayout.html), [ImageStreamer control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html) is used as an Item in [LayoutGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutGroup.html). To add the Images into the [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html), [ImagesCollection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageCollection.html) property is used.

![Bitmap collection editor to display items in image streamer](HostingImageStreamerasItems_images/CollectionEditorWindow.png)

![Bitmap in ImageStreamer](HostingImageStreamerasItems_images/StreamerControl.png)


## InternalBackColor

Sets the [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_BackColor) of the [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html).

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


![Customized backcolor of ImageStreamer](HostingImageStreamerasItems_images/Setting-backcolor-for-streamer_control.png)


## SliderSpeed

You can specifies the speed of the Slider using [SliderSpeed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_SliderSpeed) properties of [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html).

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

Navigator which is used to navigate the slide show direction is shown when the [ShowNavigator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_ShowNavigator) property is `true`. To enable this property [SlideShow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_SlideShow) must be `true`.

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

![Navigation options in ImageStreamer to move next or previous bitmap](HostingImageStreamerasItems_images/Navigator.png)

## SlideShow

This [SlideShow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_SlideShow) property shows all the Images which is loaded in the [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html).

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

This [ImageStreamDirection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_ImageStreamDirection) property gives the ImageStream direction in the SlideShow.

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

![Slide bitmap left to right](HostingImageStreamerasItems_images/StreamDirection1.png)
![Slide bitmap right to left](HostingImageStreamerasItems_images/StreamDirection2.png)
![Slide bitmap top to bottom](HostingImageStreamerasItems_images/StreamDirection3.png)
![Slide bitmap bottom to top](HostingImageStreamerasItems_images/StreamDirection4.png)
![Flip bitmap horizontally in ImageStreamer](HostingImageStreamerasItems_images/StreamDirection5.png)

## ImageStreamerType

[ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html) has two types.

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

![Dislay one or two image in ImageStreamer](HostingImageStreamerasItems_images/Properties_img1.jpeg)


