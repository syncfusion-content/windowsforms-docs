---
layout: post
title: Shape-Element | Windows Forms | Syncfusion
description: shape element
platform: windowsforms
control: Rating  
documentation: ug
---

# Shape Element

It acts like a core element in RatingControl, to illustrate rating values through visual representation.

## Built-in

There are six predefined shapes available for customization. All these shapes support the VisualStyles, Orientation and other customized settings.

* Star
* Circle
* Triangle
* Heart
* Diamond
* Kite

{% highlight c# %}

this.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.Heart;

{% endhighlight %}

{% highlight vbnet %}

Me.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.Heart
{% endhighlight %}


![](Shape-Element_images/Shape-Element_img1.png)



## Custom

User-defined shapes can be used in the form of images.

{% highlight c# %}

this.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.CustomImages;

customImageCollection1.NormalImage = global::Windows FormsApplication20.Properties.Resources.xmen;

            this.ratingControl1.Images = customImageCollection1;


{% endhighlight %}


{% highlight vbnet %}

Me.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.CustomImages

customImageCollection1.NormalImage = Global.Windows FormsApplication20.Properties.Resources.xmen

Me.ratingControl1.Images = customImageCollection1


{% endhighlight %}


In Rating control, the working is based on the following criteria for CustomImages.

* If the Shape property is set to CustomImages and the images are null, then Rating control resets the shape as Star.
* If the HoverImage and SelectedImage are null, Rating control makes use of the ItemHighlightColor and ItemSelectedColor for Hover and Selected state.
* If the HoverHalfImage and SelectedHalfImage are null, Rating control Precision is set to Standard.
