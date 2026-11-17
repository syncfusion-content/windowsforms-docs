---
layout: post
title: Slider Customization in Windows Forms ToggleButton | Syncfusion®
description: Learn about slider customization in Syncfusion Windows Forms ToggleButton control, including border color, hover color, and slider width.
platform: windowsforms
control: ToggleButton
documentation: ug
---

# Slider Customization in WinForms Toggle Button

In the WinForms Toggle Button, the slider is used to switch between two different states. It can be customized with different colors by using the `Color` property. The height of the slider is calculated based on the control’s Height. The slider width is customized by using the `Slider.Width` property, which should not exceed the control’s width.

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

![Customized slider width of the WinForms Toggle Button](Slider-Customization_images/Slider-Customization_img1.png)
