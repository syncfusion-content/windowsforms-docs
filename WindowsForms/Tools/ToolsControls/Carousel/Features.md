---
layout: post
title: Features
description: features
platform: windowsforms
control: Carousel
documentation: ug
---

# Features

This section provides details regarding the features supported by the Carousel control and the properties used to add them to an application.

## Path Support 

The Carousel control supports arranging items in the following paths:

* Default (elliptical)
* Orbital
* Oval
* Linear

### Default 


Items will be arranged in a normal elliptical path.
{% highlight C# %}



this.carousel1.CarouselPath = CarouselPath.Default;

{% endhighlight %}


{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Default
{% endhighlight %}

### Orbital

Items will be arranged like an orbital curve.
{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Orbital;
{% endhighlight %}

{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Orbital
{% endhighlight %}
### Oval

Items will be arranged in an oval structure.
{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Oval;

{% endhighlight %}
{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Oval
{% endhighlight %}
### Linear

Items will be arranged in a linear structure.
{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Linear;
{% endhighlight %}

{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Linear
{% endhighlight %}
## Perspective 

The Perspective property is used to increase or decrease the size of the elliptical view of the control. It accepts float values, so the users can enlarge or shrink the elliptical view with respect to small values too.
{% highlight C# %}


this.carousel1.Perspective = 4f;

{% endhighlight %}
{% highlight vbnet %}


Me.carousel1.Perspective = 4f;
{% endhighlight %}
## Transition Speed

The TransitionSpeed property enables the items in the control to be rotated at a user defined speed. 
{% highlight C# %}


this.carousel1.TransitionSpeed = 2f;
{% endhighlight %}

{% highlight vbnet %}


Me.carousel1.TransitionSpeed = 2f
{% endhighlight %}
## Rotate Always

The RotateAlways property enables the items in the control to rotate continuously.
{% highlight C# %}


this.carousel1.RotateAlways = true;
{% endhighlight %}

{% highlight vbnet %}


Me.carousel1.RotateAlways = True
{% endhighlight %}
## ImageSlides

ImageSlides is a dedicative property for adding and displaying images in the Carousel control, and it also provides several customization options.
{% highlight C# %}


this.carousel1.ImageSlides = true;
{% endhighlight %}

{% highlight C# %}


Me.carousel1.ImageSlides = True
{% endhighlight %}


### Adding Images to the Carousel Control

You can add images to the Carousel control only when the ImageSlides property is true. You can populate images in three different ways:

* Through a collection named ImageListCollection. 
* Through image lists.
* Can directly assign an image list to the control. It will populate the control with the images stored in the image list.
* Through file path. 
* Passing the address of a folder will fetch the images from the location and will arrange them in the control.

## Properties 


Table6 : Property Table

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


