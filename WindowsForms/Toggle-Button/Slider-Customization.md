---
layout: post
title: Slider Customization in Windows Forms Toggle Button | Syncfusion®
description: Learn about Slider Customization support in Syncfusion® Windows Forms Toggle Button control and more details.
platform: windowsforms
control: ToggleButton 
documentation: ug
---

# Slider Customization in Windows Forms Toggle Button

In the Toggle Button, the Slider is used to switch between two different states. It can be customized with different colors by using the Color property. The height of the Slider is calculated based on the Control’s Height. The Slider Width is customized by using the Slider.Width property that should not exceed the control’s width.

{% tabs %}
{% highlight c# %}

this.toggleButton1.Slider.BorderColor = Color.Transparent;
this.toggleButton1.Slider.ForeColor = Color.Blue;
this.toggleButton1.Slider.HoverColor = Color.White;    
this.toggleButton1.Slider.BackColor = Color.White;            
this.toggleButton1.Slider.Width = 30;

{% endhighlight %}

{% highlight vb %}

Me.ToggleButton1.Slider.BorderColor = Color.Transparent
Me.ToggleButton1.Slider.ForeColor = Color.Blue
Me.ToggleButton1.Slider.HoverColor = Color.White
Me.ToggleButton1.Slider.BackColor = Color.White
Me.ToggleButton1.Slider.Width = 30        

{% endhighlight %}
{% endtabs %}

![Customization of slider width](Slider-Customization_images/Slider-Customization_img1.png)
