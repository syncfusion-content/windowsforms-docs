---
layout: post
title: Styling-and-Customization
description: styling and customization
platform: WindowsForms
control: RadialMenu 
documentation: ug
---

# Styling and Customization

## Drill Region

![](Styling-and-Customization_images/Styling-and-Customization_img1.png)



### Default State

OuterArcColor is used to fill the drilldown region in the normal state.


{% highlight c# %}

// DrillDown 
colorthis.radialMenu1.OuterArcColor= Color.Black; 

{% endhighlight %} 

{% highlight vbnet %}

' DrillDown 
colorMe.RadialMenu1.OuterArcColor = Color.Black

{% endhighlight %}


![](Styling-and-Customization_images/Styling-and-Customization_img2.png)


OuterArcHighLightedColor property is used to fill the drilldown region while hovering.

{% highlight c# %}

// DrillDown hover color
this.radialMenu1.OuterArcHighLightedColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));</td></tr>

{% endhighlight %}

{% highlight vbnet %}

' DrillDown hover color
Me.radialMenu1.OuterArcHighLightedColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))))

{% endhighlight %}

![](Styling-and-Customization_images/Styling-and-Customization_img3.png)

## Outer Rim (Static Region)

Outer edge is customized by using the RimBackground and OuterRimThickness properties.

### Background

Outer Edge Background is customized using the following code example.

{% highlight c# %}

// OuterRim color

this.radialMenu1.RimBackground = Color.Blue;

{% endhighlight %}

{% highlight vbnet %}


' OuterRim color

 Me.radialMenu1.RimBackground = Color.Blue

{% endhighlight %}




![](Styling-and-Customization_images/Styling-and-Customization_img4.png)



## Thickness

The Thickness of the outer edge is set using the following code example.

{% highlight c# %}

// Rim thickness

this.radialMenu1.OuterRimThickness = 20;

{% endhighlight %}



{% highlight vbnet %}

' Rim thickness

Me.RadialMenu1.OuterRimThickness = 20

{% endhighlight %}




![](Styling-and-Customization_images/Styling-and-Customization_img5.png)



## Arc Gap

The gap between highlighted Arc and Drilldown region is defined using the following code example.

{% highlight c# %}

//Gap between OuterRim and HoverArc

this.radialMenu1.OuterArcGap = 50;

{% endhighlight %}



{% highlight vbnet %}

' Gap between OuterRim and HoverArc

Me.RadialMenu1.OuterArcGap = 50

{% endhighlight %}




![](Styling-and-Customization_images/Styling-and-Customization_img6.png)



## Display Style

The Display style of Radial Menu items is customized using different options. They are

* text above the image 
* text below the image
* text or image only 

{% highlight c# %}

// Display style of the text and image.

  this.radialMenu1.DisplayStyle = Syncfusion.Windows.Forms.Tools.DisplayStyle.ImageAboveText;

{% endhighlight %}

{% highlight vbnet %}

'Display style of the text and image.

Me.radialMenu1.DisplayStyle = Syncfusion.Windows.Forms.Tools.DisplayStyle. ImageAboveText

{% endhighlight %}




![](Styling-and-Customization_images/Styling-and-Customization_img7.png)



