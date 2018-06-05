---
layout: post
title: Appearance | Windows Forms | Syncfusion
description: This section explains how to customize the appearance of the SfScrollFrame.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

## Appearance

This section explains how to customize the default appearance of the scrollbars using the style properties. By default, the `SfScrollFrame` loads the scrollbars with default appearance. 

### Scrollbar appearance

The inner elements of the scrollbar can be customized by using the ScrollBarStyleInfo property, that allows changing the appearance of the horizontal and vertical scrollbars separately.

The horizontal scrollbar appearance can be customized by using the HorizontalScrollBar.Style property. The ScrollBarStyleInfo contains all the settings that controls the appearance of the scrollbar.

{% tabs %}
{% highlight c# %}
//Sets the back color of the horizontal scrollbar arrow button.
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonBackColor = Color.Gray;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonHoverBackColor = Color.White;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonPressedBackColor = Color.Blue;

//Sets the fore color of the horizontal scrollbar arrow button.
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonForeColor = Color.Black;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonHoverForeColor = Color.Black;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonPressedForeColor = Color.Gray;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonBorderColor = Color.Black;

// Specify the border style properties
this.sfScrollFrame1.HorizontalScrollBar.Style.ThumbColor = Color.Gray;
this.sfScrollFrame1.HorizontalScrollBar.Style.ThumbHoverColor = Color.Black;
this.sfScrollFrame1.HorizontalScrollBar.Style.ThumbPressedColor = Color.Blue;
this.sfScrollFrame1.HorizontalScrollBar.Style.ThumbBorderColor = Color.Black;

// Sets the back color of the horizontal scrollbar.
this.sfScrollFrame1.HorizontalScrollBar.Style.ScrollBarBackColor = Color.LightGray;
{% endhighlight %}
{% endtabs %}

The vertical scroll bar appearance can be customized by using the VerticalScrollBar.Style property.

{% tabs %}
{% highlight c# %}
//Sets the back color of the vertical scrollbar arrow button.
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonBackColor = Color.Gray;
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonHoverBackColor = Color.White;
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonPressedBackColor = Color.Blue;

//Sets the fore color of the vertical scrollbar arrow button.
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonForeColor = Color.Black;
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonHoverForeColor = Color.Black;
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonPressedForeColor = Color.Gray;
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonBorderColor = Color.Black;

// Sets the style properties of the thumb.
this.sfScrollFrame1.VerticalScrollBar.Style.ThumbColor = Color.Gray;
this.sfScrollFrame1.VerticalScrollBar.Style.ThumbHoverColor = Color.Black;
this.sfScrollFrame1.VerticalScrollBar.Style.ThumbPressedColor = Color.Blue;
this.sfScrollFrame1.VerticalScrollBar.Style.ThumbBorderColor = Color.Black;

// Sets the back color of the vertical scrollbar.
this.sfScrollFrame1.VerticalScrollBar.Style.ScrollBarBackColor = Color.LightGray;
{% endhighlight %}
{% endtabs %}

![](SfScrollFrame_images/SfScrollFrame_img3.jpg)

### Changing the Scrollbar thumb width

The size of the scrollbar thumb can be changed by using the ThumbWidth property of the corresponding style property.

{% tabs %}
{% highlight c# %}
// To set the height of the horizontal scrollbar thumb.
this.sfScrollFrame1.HorizontalScrollBar.Style.ThumbWidth = 8;

// To set the width of the vertical scrollbar thumb.
this.sfScrollFrame1.VerticalScrollBar.Style.ThumbWidth = 8;
{% endhighlight %}
{% endtabs %}
![](SfScrollFrame_images/SfScrollFrame_img4.jpg)

**Note**: This width can be set maximum to the width and height of the vertical and horizontal scrollbars respectively. 

## Disabling the maximum and minimum buttons

The minimum and maximum arrow buttons of the scrollbar can be disabled by setting the `EnableMaximumArrow` and `EnableMinimumArrow` properties to `false`. The default value is `true`. 

If you disable the max or min button, the scrollbar cannot be scrolled using those buttons.

{% tabs %}
{% highlight c# %}
//Disable the maximum and minimum arrows of the vertical scrollbar. 
this.sfScrollFrame1.VerticalScrollBar.EnableMaximumArrow = false;
this.sfScrollFrame1.VerticalScrollBar.EnableMinimumArrow = false;

//Disable the maximum and minimum arrows of the horizontal scrollbar. 
this.sfScrollFrame1.HorizontalScrollBar.EnableMaximumArrow = false;
this.sfScrollFrame1.HorizontalScrollBar.EnableMinimumArrow = false;
{% endhighlight %}
{% endtabs %}

The color of the disabled arrow button can also be specified by using `ArrowButtonDisabledBackColor` and `ArrowButtonDisabledForeColor` of the corresponding scrollbar.

{% tabs %}
{% highlight c# %}
//Set the arrow button disabled back color
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonDisabledBackColor = Color.Silver;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonDisabledBackColor = Color.Silver;

//Sets the arrow button disabled fore color
this.sfScrollFrame1.VerticalScrollBar.Style.ArrowButtonDisabledForeColor = Color.Gray;
this.sfScrollFrame1.HorizontalScrollBar.Style.ArrowButtonDisabledForeColor = Color.Gray;
{% endhighlight %}
{% endtabs %}
![](SfScrollFrame_images/SfScrollFrame_img5.jpg)

## Disabling the Scrollbar Thumb

The scrollbar thumb can be disabled by setting the `EnableThumb` property to `false`. The default value is `true`.

{% tabs %}
{% highlight c# %}
//Disables the thumb for vertical and horizontal scrollbar.
this.sfScrollFrame1.HorizontalScrollBar.EnableThumb = false;
this.sfScrollFrame1.VerticalScrollBar.EnableThumb = false;
{% endhighlight %}
{% endtabs %}

The disabled state thumb color can also be specified by using the `ThumbDisabledColor` property of the corresponding scrollbar style info.

{% tabs %}
{% highlight c# %}
// Sets the disabled thumb color of the scrollbar.
this.sfScrollFrame1.VerticalScrollBar.Style.ThumbDisabledColor = Color.Indigo;
this.sfScrollFrame1.HorizontalScrollBar.Style.ThumbDisabledColor = Color.Indigo;
{% endhighlight %}
{% endtabs %}

![](SfScrollFrame_images/SfScrollFrame_img6.jpg)

## Themes

The SfScrollFrame offers four built-in themes for professional representation as follows:

* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black

Themes can be applied to the SfScrollFrame by using the following steps:

1. [Load theme assembly](#load-theme-assembly)
2. [Apply theme](#apply-theme)

### Load theme assembly

The Syncfusion.Office2016Theme.WinForms assembly should be added as reference to set theme for the SfScrollFrame in any application.

Before applying theme to the SfScrollFrame, required assembly should be loaded. 

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Controls;

         static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        
        static void Main()
        {
            SfSkinManager.LoadAssembly(typeof(Office2016Theme).Assembly);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Controls

 Friend Module Program
        ''' <summary>
        ''' The main entry point for the application.
        ''' </summary>
        Sub Main()
            SfSkinManager.LoadAssembly(GetType(Office2016Theme).Assembly)
            Application.EnableVisualStyles()
            Application.SetCompatibleTextRenderingDefault(False)
            Application.Run(New Form1())
        End Sub
    End Module

{% endhighlight  %}

{% endtabs %}

### Apply theme

Appearance of the SfScrollFrame can be changed by using the `ThemeName`.

#### Office2016Colorful

This option helps to set the Office2016Colorful Theme.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

 this.SfScrollFrame.ThemeName = "Office2016Colorful";

{% endhighlight  %}

{% highlight VB %}

' Office2016Colorful 

Me.SfScrollFrame.ThemeName = "Office2016Colorful"

{% endhighlight  %}

{% endtabs %}

![](SfScrollFrame_images/SfScrollFrame_colorful16.jpg)

#### Office2016White

This option helps to set the Office2016White Theme.

{% tabs %}

{% highlight C# %}

// Office2016White

 this.SfScrollFrame.ThemeName = "Office2016White";

{% endhighlight  %}

{% highlight VB %}

' Office2016White 

Me.SfScrollFrame.ThemeName = "Office2016White"

{% endhighlight  %}

{% endtabs %}

![](SfScrollFrame_images/SfScrollFrame_white16.jpg)

#### Office2016DarkGray

This option helps to set the Office2016DarkGray Theme.

{% tabs %}

{% highlight C# %}

// Office2016DarkGray

 this.SfScrollFrame.ThemeName = "Office2016DarkGray";

{% endhighlight  %}

{% highlight VB %}

' Office2016DarkGray 

Me.SfScrollFrame.ThemeName = "Office2016DarkGray"

{% endhighlight  %}

{% endtabs %}

![](SfScrollFrame_images/SfScrollFrame_darkGray16.jpg)

#### Office2016Black

This option helps to set the Office2016Black Theme.

{% tabs %}

{% highlight C# %}

// Office2016Black

 this.SfScrollFrame.ThemeName = "Office2016Black";

{% endhighlight  %}

{% highlight VB %}

' Office2016Black 

Me.SfScrollFrame.ThemeName = "Office2016Black"

{% endhighlight  %}

{% endtabs %}

![](SfScrollFrame_images/SfScrollFrame_black16.jpg)
