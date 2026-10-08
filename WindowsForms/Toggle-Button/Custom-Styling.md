---
layout: post
title: Custom Styling in Windows Forms ToggleButton | Syncfusion®
description: Learn about custom styling support in Syncfusion Windows Forms ToggleButton control using the IToggleButtonRenderer interface and custom renderer classes.
platform: windowsforms
control: ToggleButton
documentation: ug
---

# Custom Styling in WinForms Toggle Button

The appearance of the WinForms Toggle Button is customized by using the IToggleButtonRenderer. This interface provides few methods to control painting borders, arrow, and so on.  

To customize the appearance, 

1. Create a new custom renderer class and implement each of the members defined in `IToggleButtonRenderer`.
2. Assign an instance of your custom renderer to the `Renderer` property of the WinForms Toggle Button. By default, the control is painted by using its default renderer.

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

![WinForms Toggle Button customized using a custom renderer](Custom-Styling_images/Custom-Styling_img1.png)
