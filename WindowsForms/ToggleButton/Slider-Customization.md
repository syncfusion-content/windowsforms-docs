---
layout: post
title: Slider-Customization | WindowsForms | Syncfusion
description: slider customization
platform: WindowsForms
control: ToggleButton 
documentation: ug
---

# Slider Customization

In the Toggle Button, the Slider is used to switch between two different states. It can be customized with different colors by using the Color property. The height of the Slider is calculated based on the Control’s Height. The Slider Width is customized by using the Slider.Width property that should not exceed the control’s width.

{% highlight c# %}

this.toggleButton1.Slider.BorderColor = Color.Black;

this.toggleButton1.Slider.ForeColor = Color.Blue;

this.toggleButton1.Slider.HoverColor = Color.Blue;    

this.toggleButton1.Slider.BackColor = Color.Gray;            

this.toggleButton1.Slider.Width = 30;


{% endhighlight %}


{% highlight vbnet %}

Me.ToggleButton1.Slider.BorderColor = Color.Black

Me.ToggleButton1.Slider.ForeColor = Color.Blue

Me.ToggleButton1.Slider.HoverColor = Color.Blue

Me.ToggleButton1.Slider.BackColor = Color.Gray

Me.ToggleButton1.Slider.Width = 30        

{% endhighlight %}



![](Slider-Customization_images/Slider-Customization_img1.png)



