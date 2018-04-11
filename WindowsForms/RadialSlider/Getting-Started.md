---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Getting started

## Creating radial slider

### Through code

{% highlight C# %}

RadialSlider radialSlider = new RadialSlider();

radialSlider.Size = new Size(300, 300);

radialSlider.Location = new Point(50, 50);

radialSlider.MinimumValue = 0;

radialSlider.MaximumValue = 10;

radialSlider.SliderDivision = 10;

this.Controls.Add(radialSlider);

{% endhighlight %}

### Through designer

The following steps illustrate the creation of Radial Slider.

1. Select RadialSlider from the toolbox.
2. Drag the RadialSlider from the toolbox to the form.
3. The RadialSlider will be created in the form as shown in the following image.



![](Getting-Started_images/Getting-Started_img1.png)



