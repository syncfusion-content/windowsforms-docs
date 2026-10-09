---
layout: post
title: Visual Styles in Windows Forms NavigationView control | Syncfusion®
description: Learn about Visual Styles support in Syncfusion® Windows Forms NavigationView control and more details.
platform: windowsforms
control: NavigationView
documentation: ug
---

# Visual Styles in Windows Forms NavigationView

Visual Styles enhance the appearance of the NavigationView control. NavigationView supports the following visual styles: Office 2007, Vista, and Metro.

![Visual styles](Visual-Styles_images/Visual-Styles_img1.jpeg)

![Visual styles](Visual-Styles_images/Visual-Styles_img2.jpeg)

The `VisualStyle` property of the NavigationView control is used to set the desired visual style. The following code example sets the Office 2007 visual style.

{% tabs %}
{% highlight C# %}

this.navigationView1.VisualStyle = Syncfusion.Windows.Forms.Tools.Navigation.VisualStyles.Office2007;

{% endhighlight %}
{% highlight VB %}

Me.navigationView1.VisualStyle = Syncfusion.Windows.Forms.Tools.Navigation.VisualStyles.Office2007

{% endhighlight %}
{% endtabs %}

## Edit mode support

You can switch to an editable NavigationView path by clicking on the text area of the NavigationView and typing the path. This allows the user to quickly reach a location.

![Edit mode support](Visual-Styles_images/Visual-Styles_img3.jpeg)
