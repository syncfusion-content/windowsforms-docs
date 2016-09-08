---
layout: post
title: How to load Image to the ImageStreamer | WindowsForms | Syncfusion
description: How to load Image to the ImageStreamer
platform: WindowsForms
control: TileLayout 
documentation: ug
---


# How to load Image to the ImageStreamer?

Image can be loaded to the ImageStreamer using the Images property in the ImageCollection.

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

Images are added into the ImageStreamer through designer using below steps 

Step 1: 

Select Groups Collection to add Layout group in to TileLayout. 

![](How-to-load-Image-to-the-ImageStreamer_images/GroupCollection.png)

It will show the LayoutGroup Collection Editor window as shown in the below image.

![](How-to-load-Image-to-the-ImageStreamer_images/LayoutGroup.png)

Step 2:

Select Items to include ImageStreamer into the Layout group. It will opens the ImageStreamer Collection Editor window.

![](How-to-load-Image-to-the-ImageStreamer_images/ItemCollection.png)

Step 3: 
 
In ImageStreamer, select Images from the ImageCollection to include images as mentioned in below screenshot. 

![](How-to-load-Image-to-the-ImageStreamer_images/ImageStreamer.png)

![](How-to-load-Image-to-the-ImageStreamer_images/AddImage.png)
