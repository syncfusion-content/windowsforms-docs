---
layout: post
title: DateTimePickerAdv Appearance | WindowsForms | Syncfusion
description: Learn here about how to change the background and border settings Windows Forms DateTimePickerAdv appearance
platform: WindowsForms
control: DateTimePickerAdv
documentation: ug
---
# DateTimePickerAdv Appearance

This below topics discusses the background and border settings for the DateTimePickerAdv control.

## Background Settings

DateTimePickerAdv control can have custom back color and background images using the properties discussed in this section.

### Background Color

The control's back color can be set using the [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~BackColor.html) and [BackgroundColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GradientPanel~BackgroundColor.html) properties of DateTimePickerAdv.

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.BackColor = System.Drawing.Color.Cornsilk;
this.dateTimePickerAdv1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.Linen, System.Drawing.Color.BurlyWood);

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.BackColor = System.Drawing.Color.Cornsilk 
Me.dateTimePickerAdv1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.Linen, System.Drawing.Color.BurlyWood) 

{% endhighlight %}

{% endtabs %}

![DateTimePickerAdv back color customization](Calendar_Images/Overview_img207.jpeg) 

## Background Image

Background image for the DateTimePickerAdv is set using the below property.

* [BackgroundImage](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimage?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImage)
* [BackgroundImageLayout](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimagelayout?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImageLayout)

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("dateTimePickerAdv2.BackgroundImage")));

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv2.BackgroundImage = DirectCast((resources.GetObject("dateTimePickerAdv2.BackgroundImage")), System.Drawing.Image) 

{% endhighlight %}

{% endtabs %}

![Background image](Calendar_Images/Overview_img208.jpeg) 

{% seealso %}

 Border Styles
 
 {% endseealso %}

## Border Styles

Border for a MonthCalendarAdv control can be in 2D or 3D modes. The below properties controls the border settings for the MonthCalendarAdv control. 

* [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~BorderStyle.html)
* [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~Border3DStyle.html)
* [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~BorderSides.html)
* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~BorderColor.html)

{% tabs %}

{% highlight C# %}

//Setting 3D border style 
this.monthCalendarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
//Setting "SunkenInner" 3D border style
this.monthCalendarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner;

{% endhighlight %}

{% highlight VB %}
'Setting 3D border style 
Me.monthCalendarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
'Setting "SunkenInner" 3D border style
Me.monthCalendarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner

{% endhighlight %}

{% endtabs %}

![Border styles](Calendar_Images/Overview_img135.jpeg) 

N> [MonthCalendarAdv.ThemedBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~ThemedBorder.html) property should be set to false to make the 3D border setting effective. Refer_ Visual Settings

{% tabs %}
 
{% highlight C# %}

//Setting border to "All" sides
this.monthCalendarAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;
//Setting color for 2D border
this.monthCalendarAdv1.BorderColor = System.Drawing.Color.DodgerBlue;

{% endhighlight %}

{% highlight VB %}

'Setting border to "All" sides
Me.monthCalendarAdv1.BorderSides = System.Windows.Forms.Border3DSide.All
'Setting color for 2D border
this.monthCalendarAdv1.BorderColor = System.Drawing.Color.DodgerBlue

{% endhighlight  %}

{% endtabs %}

![Border colors](Calendar_Images/Overview_img137.jpeg)

{% seealso %}
 
 Background Settings, Visual Settings
 
 {% endseealso %}