---
layout: post
title: Shape Element in Windows Forms Rating Control control | Syncfusion
description: Learn about Shape Element support in Syncfusion Windows Forms Rating Control (Rating) control and more details.
platform: WindowsForms
control: Rating  
documentation: ug
---

# Shape Element in Windows Forms Rating Control (Rating)

It acts like a core element in RatingControl, to illustrate rating values through visual representation.

## Built-in

There are six predefined shapes available for customization. All these shapes support the VisualStyles, Orientation and other customized settings.

* Star
* Circle
* Triangle
* Heart
* Diamond
* Kite

{% tabs %}
{% highlight C# %}

this.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.Heart;

{% endhighlight %}

{% highlight VB %}

Me.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.Heart
{% endhighlight %}
{% endtabs %}

![Shapes](Shape-Element_images/Shape-Element_img1.png)

## Custom

User-defined shapes can be used in the form of images.

{% tabs %}
{% highlight C# %}

this.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.CustomImages;
customImageCollection1.NormalImage = global::WindowsFormsApplication20.Properties.Resources.file;
this.ratingControl1.Images = customImageCollection1;

{% endhighlight %}

{% highlight VB %}

Me.ratingControl4.Shape = Syncfusion.Windows.Forms.Tools.Shapes.CustomImages
customImageCollection1.NormalImage = Global.WindowsFormsApplication20.Properties.Resources.file
Me.ratingControl1.Images = customImageCollection1

{% endhighlight %}
{% endtabs %}

In Rating control, the working is based on the following criteria for CustomImages.

* If the [Shape](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RatingControl.html#Syncfusion_Windows_Forms_Tools_RatingControl_Shape) property is set to CustomImages and the images are null, then Rating control resets the shape as Star.
* If the HoverImage and SelectedImage are null, Rating control makes use of the [ItemHighlightColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RatingControl.html#Syncfusion_Windows_Forms_Tools_RatingControl_ItemHighlightColor) and [ItemSelectionColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RatingControl.html#Syncfusion_Windows_Forms_Tools_RatingControl_ItemSelectionColor) for Hover and Selected state.
* If the HoverHalfImage and SelectedHalfImage are null, Rating control Precision is set to Standard.
