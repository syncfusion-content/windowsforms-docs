---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: RangeSlider 
documentation: ug
---

# Getting started

This section guides you on getting started with Range Slider.

## Elaborate structure of the control

The following image highlights the different sections of the Range Slider.

![](Getting-Started_images/Getting-Started_img1.jpeg)



## Creating range slider

Range Slider can be created in two ways:

### Through code

The following code illustrates the creation of RangeSlider.

{% tabs %}

{% highlight C# %}



RangeSlider rangeSlider = new RangeSlider();

rangeSlider.Maximum = 20;

rangeSlider.Minimum = 0;

rangeSlider.SliderMax = 15;

rangeSlider.SliderMin = 5;

rangeSlider.RangeColor = Color.Brown;

rangeSlider.ChannelColor = Color.DarkGray;

rangeSlider.ChannelHeight = 5;

rangeSlider.HighlightedThumbColor = Color.DarkBlue;

rangeSlider.PushedThumbColor = Color.Crimson;

rangeSlider.ThumbColor = Color.Aqua;

rangeSlider.Location = new Point(80, 30);

this.Controls.Add(rangeSlider);

{% endhighlight %}

{% endtabs %}

Run the code.

Output

![](Getting-Started_images/Getting-Started_img2.jpeg)



### Through designer

The following steps illustrate the creation of RangeSlider.

1. Select RangeSlider from the toolbox.

   ![](Getting-Started_images/Getting-Started_img3.jpeg)



2. Drag the RangeSlider from the toolbox to the form.

   ![](Getting-Started_images/Getting-Started_img4.jpeg)



The RangeSlider is created.

