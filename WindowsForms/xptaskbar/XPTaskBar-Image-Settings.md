---
layout: post
title: XPTaskBar- Image Settings  | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# XPTaskBar-Image settings

This section discusses the image settings available in XPTaskBar.

## Adding images to the XPTaskBar box header

We can add images to the header of the XPTaskBar Box using the ImageList control and some properties that are discussed below.

Property table

<table>
<tr>
<th>
XPTaskBar box property</th><th>
Description</th></tr>
<tr>
<td>
HeaderImageList</td><td>
Gets/sets the ImageList that will be used to draw the header image.</td></tr>
<tr>
<td>
HeaderImageIndex</td><td>
Gets/sets the index into the HeaderImageList.</td></tr>
</table>


Drag and drop the ImageList control onto the form and add images to it using the Image Collection Editor. To include an image in the header, set the HeaderImageList property to an ImageList containing the image and also set the HeaderImageIndex property to refer to a specific image within the above list.

{% tabs %}

{% highlight C# %}  

this.xpTaskBarBox1.ImageList = this.imageList1;

this.xpTaskBarBox1.HeaderImageList = this.imageList2;

this.xpTaskBarBox1.HeaderImageIndex = 0;

{% endhighlight %}



{% highlight VB %}

Me.xpTaskBarBox1.ImageList = Me.imageList1

Me.xpTaskBarBox1.HeaderImageList = Me.imageList2

Me.xpTaskBarBox1.HeaderImageIndex = 0

{% endhighlight %}

{% endtabs %}

 ![](Overview_images/Overview_img115.jpeg) 
Image added to the TaskBar Box Header

## Adding images to XPTaskBar items

Images can be easily associated with the ImageIndex property of the XPTaskBar Items.

Property table

<table>
<tr>
<th>
XPTaskBar item property</th><th>
Description</th></tr>
<tr>
<td>
ImageList</td><td>
Sets the ImageList that contains the images with which images of XPTaskBar Items will be drawn.</td></tr>
<tr>
<td>
ImageIndex</td><td>
It sets the image index into the ImageList that contains images for the TaskBar Items.</td></tr>
</table>


The ImageIndex of the XPTaskBar Items can be specified in the XPTaskBarItem Collection Editor.

{% tabs %}

{% highlight C# %}

this.xpTaskBarBox1.ImageList = this.imageList1;

this.xpTaskBarBox1.Items[0].ImageIndex = 0;

this.xpTaskBarBox1.Items[1].ImageIndex = 1;

this.xpTaskBarBox1.Items[2].ImageIndex = 2;

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBarBox1.ImageList = Me.imageList1

Me.xpTaskBarBox1.Items(0)ImageIndex = 0

Me.xpTaskBarBox1.Items(1)ImageIndex = 1

Me.xpTaskBarBox1.Items(2)ImageIndex = 2

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img116.jpeg) 
