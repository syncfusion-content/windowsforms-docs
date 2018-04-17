---
layout: post
title: Styling-and-Customization | WindowsForms | Syncfusion
description: styling and customization
platform: WindowsForms
control: RadialMenu 
documentation: ug
---

# Styling and customization

## Drill region

![](Styling-and-Customization_images/Styling-and-Customization_img1.png)



### Default state

OuterArcColor is used to fill the drill-down region in the normal state.

{% tabs %}

{% highlight C# %}

// DrillDown color 
this.radialMenu1.OuterArcColor= Color.Black; 

{% endhighlight %} 

{% highlight VB %}

' DrillDown color
Me.RadialMenu1.OuterArcColor = Color.Black

{% endhighlight %}

{% endtabs %}

![](Styling-and-Customization_images/Styling-and-Customization_img2.png)


OuterArcHighLightedColor property is used to fill the drilldown region while hovering.

{% tabs %}

{% highlight C# %}

// DrillDown hover color
this.radialMenu1.OuterArcHighLightedColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));</td></tr>

{% endhighlight %}

{% highlight VB %}

' DrillDown hover color
Me.radialMenu1.OuterArcHighLightedColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))))

{% endhighlight %}

{% endtabs %}

![](Styling-and-Customization_images/Styling-and-Customization_img3.png)

## Outer rim (static region)

Outer edge is customized by using the RimBackground and OuterRimThickness properties.

### Background

Outer Edge Background is customized using the following code example.

{% tabs %}

{% highlight C# %}

// OuterRim color

this.radialMenu1.RimBackground = Color.Blue;

{% endhighlight %}

{% highlight VB %}


' OuterRim color

 Me.radialMenu1.RimBackground = Color.Blue

{% endhighlight %}

{% endtabs %}


![](Styling-and-Customization_images/Styling-and-Customization_img4.png)



## Thickness

The Thickness of the outer edge is set using the following code example.

{% tabs %}

{% highlight C# %}

// Rim thickness

this.radialMenu1.OuterRimThickness = 20;

{% endhighlight %}



{% highlight VB %}

' Rim thickness

Me.RadialMenu1.OuterRimThickness = 20

{% endhighlight %}

{% endtabs %}


![](Styling-and-Customization_images/Styling-and-Customization_img5.png)



## Arc gap

The gap between highlighted Arc and Drilldown region is defined using the following code example.

{% tabs %}

{% highlight C# %}

//Gap between OuterRim and HoverArc

this.radialMenu1.OuterArcGap = 50;

{% endhighlight %}



{% highlight VB %}

' Gap between OuterRim and HoverArc

Me.RadialMenu1.OuterArcGap = 50

{% endhighlight %}

{% endtabs %}


![](Styling-and-Customization_images/Styling-and-Customization_img6.png)



## Display style

The Display style of Radial Menu items is customized using different options. They are

* text above the image
* text below the image
* text or image only

{% tabs %}

{% highlight C# %}

// Display style of the text and image.

  this.radialMenu1.DisplayStyle = Syncfusion.Windows.Forms.Tools.DisplayStyle.ImageAboveText;

{% endhighlight %}

{% highlight VB %}

'Display style of the text and image.

Me.radialMenu1.DisplayStyle = Syncfusion.Windows.Forms.Tools.DisplayStyle. ImageAboveText

{% endhighlight %}

{% endtabs %}


![](Styling-and-Customization_images/Styling-and-Customization_img7.png)



