---
layout: post
title: Display mode configuration in Windows Forms Toggle Button | Syncfusion
description: Learn here all about display mode configuration support in Syncfusion Windows Forms Toggle Button control, it's elements and more.
platform: windowsforms
control: ToggleButton 
documentation: ug
---

# Display mode configuration in Windows Forms Toggle Button

Toggle Button is set to display either text or image through its DisplayMode property.

{% tabs %}
{% highlight c# %}

this.toggleButton1.DisplayMode = DisplayType.Text;

// DisplayType.Image ,for displaying image
this.toggleButton1.DisplayMode = DisplayType.Image;

{% endhighlight %}

{% highlight vb %}

Me.ToggleButton1.DisplayMode = DisplayType.Text

'DisplayType.Image for displaying image
Me.ToggleButton1.DisplayMode = DisplayType.Image

{% endhighlight %}
{% endtabs %}

![toggleButton set to display with image](Display-Mode-Configuration_images/Display-Mode-Configuration_img1.png)
