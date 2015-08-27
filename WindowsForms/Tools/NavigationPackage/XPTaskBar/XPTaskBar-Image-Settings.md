---
layout: post
title: XPTaskBar- Image Settings 
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# XPTaskBar- Image Settings 

This section discusses the image settings available in XPTaskBar. 

Adding Images to the XPTaskBar Box Header

We can add images to the header of the XPTaskBar Box using the ImageList control and some properties that are discussed below.

_Table_ _591__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
<tr>
<td>
HeaderImageList</td><td>
Gets / sets the ImageList that will be used to draw the header image.</td></tr>
<tr>
<td>
HeaderImageIndex</td><td>
Gets / sets the index into the HeaderImageList.</td></tr>
</table>


Drag and drop the ImageList control onto the form and add images to it using the Image Collection Editor. To include an image in the header, set the HeaderImageList property to an ImageList containing the image and also set the HeaderImageIndex property to refer to a specific image within the above list.

{% highlight C# %}  

this.xpTaskBarBox1.ImageList = this.imageList1;

this.xpTaskBarBox1.HeaderImageList = this.imageList2;

this.xpTaskBarBox1.HeaderImageIndex = 0;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.ImageList = Me.imageList1

Me.xpTaskBarBox1.HeaderImageList = Me.imageList2

Me.xpTaskBarBox1.HeaderImageIndex = 0

{% endhighlight %}

 ![](Overview_images/Overview_img115.jpeg) 
Figure 1016: Image added to the TaskBar Box Header

### Adding Images to XPTaskBar Items

Images can be easily associated with the ImageIndex property of the XPTaskBar Items.

_Table_ _592__: Property Table_

<table>
<tr>
<td>
XPTaskBar Item Property</td><td>
Description</td></tr>
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

{% highlight C# %}  

this.xpTaskBarBox1.ImageList = this.imageList1;

this.xpTaskBarBox1.Items[0].ImageIndex = 0;

this.xpTaskBarBox1.Items[1].ImageIndex = 1;

this.xpTaskBarBox1.Items[2].ImageIndex = 2;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.ImageList = Me.imageList1

Me.xpTaskBarBox1.Items(0)ImageIndex = 0

Me.xpTaskBarBox1.Items(1)ImageIndex = 1

Me.xpTaskBarBox1.Items(2)ImageIndex = 2

{% endhighlight %}

![](Overview_images/Overview_img116.jpeg) 
Figure 1017: Images added to the TaskBar Items
