---
layout: post
title: Styling | WindowsForms | Syncfusion
description: styling
platform: WindowsForms
control: Rating  
documentation: ug
---

# Styling

Styling of shapes can be done either by using predefined visual styles or by BackColor, BorderColor, HighlightColor, SelectionColor and GradientColor settings.

## Built-in

Rating control supports predefined visual styles such as Default, Office2007, Office2010 and Metro with all three color schemes for Office Styles. The style can be set by the VisualStyle property.

{% tabs %}
{% highlight c# %}

this.ratingControl1.VisualStyle = Syncfusion.Windows.Forms.Tools.RatingControl.Style.Metro;
this.ratingControl1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.OfficeColorSchemes.Black;

{% endhighlight %}

{% highlight vb %}

Me.ratingControl1.VisualStyle = Syncfusion.Windows.Forms.Tools.RatingControl.Style.Metro
Me.ratingControl1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.OfficeColorSchemes.Black

{% endhighlight %}
{% endtabs %}

![](Styling_images/Styling_img1.png)

## Custom

The properties ItemHighlightStartColor, ItemHighlightEndColor, ItemSelectionStartColor, ItemSelectionEndColor are applied only if the ApplyGradientColors property is enabled.

{% tabs %}
{% highlight c# %}

this.ratingControl3.ItemHighlightEndColor = Color.Red;
this.ratingControl3.ItemHighlightStartColor = Color.Green;
this.ratingControl3.ItemSelectionEndColor = Color.Yellow;
this.ratingControl3.ItemSelectionStartColor = Color.LightYellow;

{% endhighlight %}

{% highlight vb %}

Me.ratingControl3.ItemHighlightEndColor = Color.Red
Me.ratingControl3.ItemHighlightStartColor = Color.Green
Me.ratingControl3.ItemSelectionEndColor = Color.Yellow
Me.ratingControl3.ItemSelectionStartColor = Color.LightYellow

{% endhighlight %}
{% endtabs %}

{% tabs %}
{% highlight c# %}

this.ratingControl1.ApplyGradientColors = true;

{% endhighlight %}

{% highlight vb %}

Me.ratingControl1.ApplyGradientColors = True

{% endhighlight %}
{% endtabs %}

![](Styling_images/Styling_img2.png)
