---
layout: post
title: Animation in Windows Forms GradientPanelExt | Syncfusion®
description: Configure collapse and expand animations in the Windows Forms GradientPanelExt control to create smooth and interactive user experiences.
platform: WindowsForms
control: GradientPanelExt 
documentation: ug
---
# Collapse and Expand Animation in Windows Forms GradientPanelExt

The collapse and expand operation in a GradientPanelExt control can be animated by setting Animated property to true. Delay in animation and the speed of animation is specified in AnimationDelay and AnimationSpeed properties.

{% tabs %}
{% highlight c# %}

this.gradientPanelExt1.Animated = true;
this.gradientPanelExt1.AnimationDelay = 11;
this.gradientPanelExt1.AnimationSpeed = 2;

{% endhighlight  %}

{% highlight vb %}

this.gradientPanelExt1.Animated = True
this.gradientPanelExt1.AnimationDelay = 11
this.gradientPanelExt1.AnimationSpeed = 2

{% endhighlight  %}
{% endtabs %}
