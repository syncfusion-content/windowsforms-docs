---
layout: post
title: Display Mode in Windows Forms ToggleButton | Syncfusion®
description: Learn about DisplayMode configuration in Syncfusion Windows Forms ToggleButton control for switching between text and image representation.
platform: windowsforms
control: ToggleButton
documentation: ug
---

# Display Mode in WinForms Toggle Button

WinForms Toggle Button is set to display either text or image through its DisplayMode property.

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

![WinForms Toggle Button set to display with an image](Display-Mode-Configuration_images/Display-Mode-Configuration_img1.png)
