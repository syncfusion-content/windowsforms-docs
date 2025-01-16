---
layout: post
title: Appearance of the Metro Form | Syncfusion
description: This section explains about the UI Appearance and styles of MetroForm for syncfusion® Essential® Windows Forms
platform: WindowsForms
control: MetroForm
documentation: ug
---

# Appearance in Windows Forms Metro Form

## Border thickness

MetroForm border can be customized using `BorderThickness` property.

{% tabs %}

{% highlight C# %}

this.BorderThickness = 10;

{% endhighlight %}

{% highlight VB %}

Me.BorderThickness = 10
 
{% endhighlight %}

{% endtabs %}

## Border color

`BorderColor` property is used to change the color of the border.

{% tabs %}

{% highlight C# %}

 this.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(158)))), ((int)(((byte)(218)))));

{% endhighlight %}


{% highlight VB %}

 Me.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(158)))), ((int)(((byte)(218)))))
 
{% endhighlight %}

{% endtabs %}

![BorderColor changed in winforms metroForm](Appearance_images/Customization_img1.jpeg)

## Caption bar height

Caption bar height can be customized using `CaptionBarHeight` property.

{% tabs %}

{% highlight C# %}

this.CaptionBarHeight = 40;

{% endhighlight %}


{% highlight VB %}

Me.CaptionBarHeight = 40
 
{% endhighlight %}

{% endtabs %}

![CaptionBarHeight customized in winforms metroForm](Appearance_images/Caption-Bar-Customization_img1.jpeg)

### Retain the caption bar height on maximized mode

By Default, the height of the caption bar will be reduced when the form is in maximized state. It can be retained same in both normal and maximized state by setting the property [MetroForm.CaptionBarHeightMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MetroForm.html#Syncfusion_Windows_Forms_MetroForm_CaptionBarHeightMode) as `SameAlwaysOnMaximize`.

{% tabs %}

{% highlight C# %}

this.CaptionBarHeightMode = Syncfusion.Windows.Forms.Enums.CaptionBarHeightMode.SameAlwaysOnMaximize;

{% endhighlight %}

{% highlight VB %}

Me.CaptionBarHeightMode = Syncfusion.Windows.Forms.Enums.CaptionBarHeightMode.SameAlwaysOnMaximize
 
{% endhighlight %}

{% endtabs %}

## Caption bar color

Caption bar color can be customized using `CaptionBarColor` property.

{% tabs %}

{% highlight C# %}

this.CaptionBarColor = Color.Pink;

{% endhighlight %}


{% highlight VB %}

Me.CaptionBarColor = Color.Pink
 
{% endhighlight %}

{% endtabs %}

![Caption Bar Color changed in winforms metroform](Appearance_images/Caption-Bar-Customization_img2.jpeg)

## Caption alignment

MetroForm caption can be aligned vertically using `CaptionAlign` property.

* Left
* Center
* Right

{% tabs %}

{% highlight C# %}

this.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Right;

{% endhighlight %}


{% highlight VB %}

Me.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Right
 
{% endhighlight %}

{% endtabs %}

![Caption text aligned in winforms metroform](Appearance_images/CaptionAlign.png)

## Caption vertical alignment

MetroForm caption can be aligned vertically using `CaptionVerticalAlignment` property.

* Top
* Center
* Bottom

{% tabs %}

{% highlight C# %}

 this.CaptionVerticalAlignment = Syncfusion.Windows.Forms.VerticalAlignment.Top;

{% endhighlight %}


{% highlight VB %}

Me.CaptionVerticalAlignment = Syncfusion.Windows.Forms.VerticalAlignment.Top
 
{% endhighlight %}

{% endtabs %}

![Caption aligned vertically in winforms metroform](Appearance_images/CaptionVerticalAlignment.png)

## Icon alignment support

MetroForm supports Left, Right, and Center alignment for Icon.

{% tabs %}

{% highlight C# %}

this.IconAlign = System.Windows.Forms.HorizontalAlignment.Right;

{% endhighlight %}


{% highlight VB %}

 Me.IconAlign = System.Windows.Forms.HorizontalAlignment.Right
 
{% endhighlight %}

{% endtabs %}

![Caption Icon aligned in winforms metroform](Appearance_images/Icon Alignment.png)
 
## Rounded corner

Rounded corners for `MetroForm` can be enabled by using the [AllowRoundedCorners](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.MetroForm.html#Syncfusion_Windows_Forms_MetroForm_AllowRoundedCorners) property. Rounded corners are not supported in OS versions lower than Windows 11. Enabling `AllowRoundedCorners` property will have no effect on those operating systems. 

N> When the rounded corners are enabled, the border and shadow of the Form are drawn by the operating system.

{% tabs %}

{% highlight C# %}

this.AllowRoundedCorners = true;

{% endhighlight %}

{% highlight VB %}

Me.AllowRoundedCorners = true
 
{% endhighlight %}

{% endtabs %}


![MetroForm with rounded corners](Appearance_images/RoundedCorners.png)

