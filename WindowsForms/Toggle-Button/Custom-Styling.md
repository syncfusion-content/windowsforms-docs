---
layout: post
title: Custom Styling in Windows Forms Toggle Button control | Syncfusion®
description: Learn about Custom Styling support in Syncfusion® Windows Forms Toggle Button control and more details.
platform: windowsforms
control: ToggleButton 
documentation: ug
---

# Custom Styling in Windows Forms Toggle Button

The appearance of the Toggle Button is customized by using the IToggleButtonRenderer. This interface provides few methods to control painting borders, arrow, and so on. 

To customize the appearance, 

1. Create a new custom renderer class and implement each of the members defined in IToggleButtonRenderer. 
2. Assign instance of your custom renderer to the Renderer property of ToggleButton. By default, ToggleButton is painted by using its default renderer.

{% tabs %}
{% highlight c# %}

CustomRenderer renderer = new CustomRenderer();
toggleButton1.Renderer = renderer;

{% endhighlight %}

{% highlight vb %}

Dim renderer As New CustomRenderer()
toggleButton1.Renderer = renderer

{% endhighlight %}
{% endtabs %}

![Customize the togglebutton by using customrenderer](Custom-Styling_images/Custom-Styling_img1.png)
