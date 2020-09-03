---
layout: post
title: How to load Image to the ImageStreamer | WindowsForms | Syncfusion
description: How to load Image to the ImageStreamer
platform: WindowsForms
control: TileLayout 
documentation: ug
---


# How to load image to the ImageStreamer?

Image can be loaded to the [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html) using the Images property in the [ImageCollection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html#Syncfusion_Windows_Forms_Tools_ImageStreamer_ImageCollection).

{% tabs %}

{% highlight C# %}

//To add images into the ImageStreamer 

this.imageStreamer1.Images.Add(((System.Drawing.Image)(resources.GetObject("imageStreamer1.Images")))); 

{% endhighlight %}


{% highlight VB %}

'To add images into the ImageStreamer 

Me.imageStreamer1.Images.Add(DirectCast(resources.GetObject("imageStreamer1.Images"), System.Drawing.Image))
 
{% endhighlight %}

{% endtabs %}

Images are added into the [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html) through designer using below steps 

Step 1: 

Select Groups Collection to add [LayoutGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutGroup.html) in to [TileLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TileLayout.html). 

![Select groups collection](How-to-load-Image-to-the-ImageStreamer_images/GroupCollection.png)

It will show the [LayoutGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutGroup.html) Collection Editor window as shown in the below image.

![Add layout group](How-to-load-Image-to-the-ImageStreamer_images/LayoutGroup.png)

Step 2:

Select Items to include [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html) into the [LayoutGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.LayoutGroup.html). It will opens the [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html) Collection Editor window.

![Select items](How-to-load-Image-to-the-ImageStreamer_images/ItemCollection.png)

Step 3: 
 
In [ImageStreamer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ImageStreamer.html), select Images from the ImageCollection to include images as mentioned in below screenshot. 

![Select images collection](How-to-load-Image-to-the-ImageStreamer_images/ImageStreamer.png)

![Add custom image](How-to-load-Image-to-the-ImageStreamer_images/AddImage.png)
