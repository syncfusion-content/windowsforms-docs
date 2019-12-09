---
layout: post
title: Styling | WindowsForms | Syncfusion
description: styling
platform: WindowsForms
control: Rating  
documentation: ug
---

# Styling

Styling of shapes can be done either by using predefined visual styles or by [BackColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backcolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackColor), BorderColor, HighlightColor, SelectionColor and GradientColor settings.

## Built-in

Rating control supports predefined visual styles such as Default, Office2007, Office2010, Metro, Office2016ColorFul, Office2016DarkGray, Office2016White, Office2016Black  for Office Styles. The style can be set by the [VisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~Style.html) property.

{% highlight C# %}

this.ratingControl1.VisualStyle = Syncfusion.Windows.Forms.Tools.RatingControl.Style.Office2016ColorFul;

{% endhighlight %}


{% highlight VB %}

Me.ratingControl1.VisualStyle = Syncfusion.Windows.Forms.Tools.RatingControl.Style.Office2016ColorFul
{% endhighlight %}


![Visual style](Styling_images/RatingControl.png)


OfficeColorScheme for Rating Control can be set using below code 

{% highlight C# %}

this.ratingControl1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.OfficeColorSchemes.Blue;

{% endhighlight %}


{% highlight VB %}

Me.ratingControl1.OfficeColorScheme = Syncfusion.Windows.Forms.Tools.OfficeColorSchemes.Blue

{% endhighlight %}

![Visual style](Styling_images/Styling_img1.png)


## Custom

The properties [ItemHighlightStartColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~ItemHighlightColor.html), [ItemHighlightEndColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~ItemHighlightEndColor.html), [ItemSelectionStartColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~ItemSelectionStartColor.html), [ItemSelectionEndColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~ItemSelectionEndColor.html) are applied only if the [ApplyGradientColors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RatingControl~ApplyGradientColors.html) property is enabled.

{% highlight C# %}

this.ratingControl3.ItemHighlightEndColor = Color.Red;

this.ratingControl3.ItemHighlightStartColor = Color.Green;

this.ratingControl3.ItemSelectionEndColor = Color.Yellow;

this.ratingControl3.ItemSelectionStartColor = Color.LightYellow;

{% endhighlight %}

{% highlight VB %}

Me.ratingControl3.ItemHighlightEndColor = Color.Red

Me.ratingControl3.ItemHighlightStartColor = Color.Green

Me.ratingControl3.ItemSelectionEndColor = Color.Yellow

Me.ratingControl3.ItemSelectionStartColor = Color.LightYellow

{% endhighlight %}

{% highlight C# %}

this.ratingControl1.ApplyGradientColors = true;

{% endhighlight %}


{% highlight VB %}

Me.ratingControl1.ApplyGradientColors = True

{% endhighlight %}



![style](Styling_images/Styling_img2.png)
