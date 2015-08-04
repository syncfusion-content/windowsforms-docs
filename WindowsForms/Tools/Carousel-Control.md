---
layout: post
title: Carousel-Control
description: carousel control
platform: common
control: Control Name undefined
documentation: ug
---

# Carousel Control

The Carousel control is a circular conveyor on which objects are displayed and rotated. The Carousel control provides a 3-D interface for displaying objects with interactive navigation.

## Feature Summary

* Path support
* Perspective
* Transition speed
* ImageSlides

## Adding the Carousel Control to an Application

### Adding through Designer


Follow these steps to add the Carousel control to an application through Visual Studio:

1. Create a new Windows Forms application in Visual Studio.
2. Drag the Carousel control from the Toolbox tab to the designer. The Carousel control will be added.
3. Add items to the Carousel in either the Properties window or in the Smart Tags of the Carousel control.

![](Carousel-Control_images/Carousel-Control_img1.png)



### Adding through Code

To add the Carousel control to an application through code, include the Windows Forms Tools namespace:

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vbnet %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

Create an instance of the Carousel control and add it to the form as given in the following code:

 {% highlight c# %}

 Syncfusion.Windows.Forms.Tools.Carousel carousel1;

 this.carousel1= new Syncfusion.Windows.Forms.Tools. Carousel();

 this.Controls.Add(carousel1);

{% endhighlight %}

{% highlight vbnet %}

Dim carousel1 As Syncfusion.Windows.Forms.Tools.Carousel

Me.carousel1 = New Syncfusion.Windows.Forms.Tools. Carousel()

Me.Controls.Add(carousel1)

{% endhighlight %}

## Features

This section provides details regarding the features supported by the Carousel control and the properties used to add them to an application.

### Path Support 

The Carousel control supports arranging items in the following paths:

* Default (elliptical)
* Orbital
* Oval
* Linear

#### Default 


Items will be arranged in a normal elliptical path.

{% highlight c# %}

this.carousel1.CarouselPath = CarouselPath.Default;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.CarouselPath = CarouselPath.Default

{% endhighlight %}

#### Orbital

Items will be arranged like an orbital curve.

{% highlight c# %}

this.carousel1.CarouselPath = CarouselPath.Orbital;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.CarouselPath = CarouselPath.Orbital

{% endhighlight %}

#### Oval

Items will be arranged in an oval structure.

{% highlight c# %}

this.carousel1.CarouselPath = CarouselPath.Oval;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.CarouselPath = CarouselPath.Oval

{% endhighlight %}

#### Linear

Items will be arranged in a linear structure.

{% highlight c# %}

this.carousel1.CarouselPath = CarouselPath.Linear;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.CarouselPath = CarouselPath.Linear

{% endhighlight %}

### Perspective 

The Perspective property is used to increase or decrease the size of the elliptical view of the control. It accepts float values, so the users can enlarge or shrink the elliptical view with respect to small values too.

{% highlight c# %}

this.carousel1.Perspective = 4f;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.Perspective = 4f;

{% endhighlight %}

### Transition Speed

The TransitionSpeed property enables the items in the control to be rotated at a user defined speed. 

{% highlight c# %}

this.carousel1.TransitionSpeed = 2f;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.TransitionSpeed = 2f

{% endhighlight %}

### Rotate Always

The RotateAlways property enables the items in the control to rotate continuously.

{% highlight c# %}

this.carousel1.RotateAlways = true;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.RotateAlways = True

{% endhighlight %}

### ImageSlides

ImageSlides is a dedicative property for adding and displaying images in the Carousel control, and it also provides several customization options.

{% highlight c# %}

this.carousel1.ImageSlides = true;

{% endhighlight %}

{% highlight vbnet %}

Me.carousel1.ImageSlides = True

{% endhighlight %}

#### Adding Images to the Carousel Control

You can add images to the Carousel control only when the ImageSlides property is true. You can populate images in three different ways:

* Through a collection named ImageListCollection. 
* Through image lists.
* Can directly assign an image list to the control. It will populate the control with the images stored in the image list.
* Through file path. 
* Passing the address of a folder will fetch the images from the location and will arrange them in the control.

#### Properties 


_Table_ _6_: Property Table

<table>
<tr>
<td>
Property</td><td>
Description</td><td>
Data Type</td></tr>
<tr>
<td>
ShowImageShadow</td><td>
Enables or disables shadows for the images.</td><td>
bool</td></tr>
<tr>
<td>
ShowImagePreview</td><td>
Displays previews of the selected image at center of the control.</td><td>
bool</td></tr>
<tr>
<td>
Image Highlight Color</td><td>
Apply the desired color for highlighting the selected image.</td><td>
Color</td></tr>
<tr>
<td>
Image ShadeColor</td><td>
Applies the desired color for shading the images at the back of the control.</td><td>
Color</td></tr>
</table>

## Touch Interactions

The Carousel control will respond to default touch interactions that substitute the standard mouse operations. Additionally, the pan, flick, pinch, and stretch operations are supported.

* Pan and flick: Initiates moving the items.
* Pinch and stretch: Will increase and decrease the perspective view of the items within the Carousel control.
