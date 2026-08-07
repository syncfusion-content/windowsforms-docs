---
layout: post
title: Calendar Appearance in Windows Forms xptoolbar control | Syncfusion
description: Learn about Calendar Appearance support in Syncfusion Windows Forms MonthCalendarAdv(Classic) control and more details.
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# Calendar Appearance in Windows Forms MonthCalendarAdv(Classic)

This section comprises the appearance settings under the following topics:

## Border styles

The wide variety of border options are available for [DateTimePickerAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html) control when they are in 2D or in 3D mode. The properties in the below table illustrates the border settings.

* [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientPanel.html#Syncfusion_Windows_Forms_Tools_GradientPanel_BorderStyle)
* [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientPanel.html#Syncfusion_Windows_Forms_Tools_GradientPanel_Border3DStyle)
* [BorderSingle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientPanel.html#Syncfusion_Windows_Forms_Tools_GradientPanel_BorderSingle)
* [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientPanel.html#Syncfusion_Windows_Forms_Tools_GradientPanel_BorderSides)
* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html#Syncfusion_Windows_Forms_Tools_DateTimePickerAdv_BorderColor)

{% tabs %}

{% highlight C#  %}


//Sets 2D border

this.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

//Sets 2D border style

this.dateTimePickerAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed;

//Sets border for all the side of the control

this.dateTimePickerAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;

//Sets color for the 2D border

this.dateTimePickerAdv1.BorderColor = System.Drawing.Color.SteelBlue;



//Sets 3D border

this.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

//Sets SunkenInner 3D border style

this.dateTimePickerAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner;


{% endhighlight  %}

{% highlight VB  %}


'Sets 2D border 

Me.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

'Sets 2D border style 

Me.dateTimePickerAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed 

'Sets border for all the side of the control 

Me.dateTimePickerAdv1.BorderSides = System.Windows.Forms.Border3DSide.All 

'Sets color for the 2D border 

Me.dateTimePickerAdv1.BorderColor = System.Drawing.Color.SteelBlue 



'Sets 3D border 

Me.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

'Sets SunkenInner 3D border style 

Me.dateTimePickerAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner 

{% endhighlight %}

{% endtabs %}

![Border styles](CalendarDateTime_images/Overview_img209.png) 




## Background settings

Background image for the MonthCalendarAdv is specified in [BackgroundImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_BackgroundImage) property.

{% tabs %}

{% highlight C# %}

this.monthCalendarAdv1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("monthCalendarAdv1.BackgroundImage")));

this.monthCalendarAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;


{% endhighlight %}

{% highlight VB %}




Me.monthCalendarAdv1.BackgroundImage = DirectCast((resources.GetObject("monthCalendarAdv1.BackgroundImage")), System.Drawing.Image) 

Me.monthCalendarAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch 

{% endhighlight %}


{% endtabs %}

![Background settings](CalendarDateTime_images/Overview_img138.jpeg)




## Visual settings

### Themes for MonthCalendarAdv

Some sections of the MonthCalendarAdv control are themed by default. The below table list the properties which controls the themed behavior border, grid and scroll buttons.

[ThemedBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_ThemedBorder)
[ThemedEnabledGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_ThemedEnabledGrid)
[ThemedEnabledScrollButtons](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_ThemedEnabledScrollButtons)


{% tabs %}

{% highlight C# %}

this.monthCalendarAdv1.ThemedBorder = true;

this.monthCalendarAdv1.ThemedEnabledGrid = true;

this.monthCalendarAdv1.ThemedEnabledScrollButtons = true;


{% endhighlight %}

{% highlight VB %}




Me.monthCalendarAdv1.ThemedBorder = True

Me.monthCalendarAdv1.ThemedEnabledGrid = True

Me.monthCalendarAdv1.ThemedEnabledScrollButtons = True

{% endhighlight %}

{% endtabs %}

![Themes for MonthCalendarAdv](CalendarDateTime_images/Overview_img139.jpeg)



### Styles

The MonthCalenderAdv control for Windows Forms Supports for below listed Visual Styles. You can easily modify the look using the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_Style) property.

The styles are built in for MonthCalenderAdv.

    •	Default

    •	Office2007

    •	Office2007Outlook

    •	Office2010

    •	Metro

    •	Office2016Colorful

    •	Office2016DarkGray

    •	Office2016Black

    •	Office2016White

**Default**

This option helps to set the Default theme.

{% tabs %}

{% highlight C# %}

//Default

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Default;

{% endhighlight %}

{% highlight VB %}

'Default

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Default

{% endhighlight %}

{% endtabs %}

![Default theme](CalendarDateTime_images/Overview_img213.jpeg) 

**Office2007**

This option helps to set the Office2007 theme.

{% tabs %}

{% highlight C# %}

// Office2007

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;

{% endhighlight %}

{% highlight VB %}

'Office2007

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007

{% endhighlight %}

{% endtabs %}

![Office2007 theme](CalendarDateTime_images/Overview_img214.jpg) 

It also specifies the color schemes for Office 2007 visual styles. They can be Blue, Silver, Black, and Managed.

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option helps to set the Office2007 Blue theme.

{% tabs %}

{% highlight C# %}

// Office2007Blue

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this. monthCalendarAdv1.Office2007Theme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2007Blue

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me. monthCalendarAdv1.Office2007Theme = Office2007Theme.Blue

{% endhighlight %}

{% endtabs %}

![Office2007 blue theme](CalendarDateTime_images/Overview_img215.jpeg) 

**Black**

This option helps to set the Office2007 Black theme.

{% tabs %}

{% highlight C# %}

// Office2007Black

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this. monthCalendarAdv1.Office2007Theme = Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me. monthCalendarAdv1.Office2007Theme = Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2007 black theme](CalendarDateTime_images/Overview_img217.jpg) 

**Silver**

This option helps to set the Office2007 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this. monthCalendarAdv1.Office2007Theme = Office2007Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me. monthCalendarAdv1.Office2007Theme = Office2007Theme.Silver

{% endhighlight %}

{% endtabs %}

![Office2007 silver theme](CalendarDateTime_images/Overview_img216.jpg) 

**Managed**

This option helps to apply the custom colors to the MonthCalendarAdv by setting Office2007Theme to 'Managed' and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}

//Managed

this.monthCalendarAdv2.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.monthCalendarAdv2.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(this, Color.Red);

{% endhighlight %}

{% highlight VB %}

'Managed
Me.monthCalendarAdv2.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.monthCalendarAdv2.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(Me, Color.Red)


{% endhighlight %}

{% endtabs %}

![managed theme](CalendarDateTime_images/Overview_img218.jpeg) 

**Office2007Outlook**

This option helps to set the Office2007Outlook theme.

{% tabs %}

{% highlight C# %}

// Office2007Outlook

this.monthCalendarAdv2.Style =  Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook;

{% endhighlight %}

{% highlight VB %}

'Office2007Outlook

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook

{% endhighlight %}

{% endtabs %}

![Office2007Outlook theme](CalendarDateTime_images/Overview_img229.jpeg) 

**Office2010**

This option helps to set the Office2010 theme.

{% tabs %}

{% highlight C# %}

// Office2010

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;

{% endhighlight %}

{% highlight VB %}

'Office2010

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010

{% endhighlight %}

{% endtabs %}

![Office2010 theme](CalendarDateTime_images/Overview_img219.jpeg) 

It also allows to specify the color schemes for Office 2010 visual styles. They can be blue, silver, black and managed.

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option helps to set the Office2010 Blue theme.

{% tabs %}

{% highlight C# %}

// Office2010Blue

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this. monthCalendarAdv1.Office2010Theme = Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2010Blue

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me. monthCalendarAdv1.Office2010Theme = Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

![Office2010 blue theme](CalendarDateTime_images/Overview_img220.jpeg) 

**Black**

This option helps to set the Office2010 Black theme.

{% tabs %}

{% highlight C# %}

// Office2010Black

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this. monthCalendarAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.monthCalendarAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2010 black theme](CalendarDateTime_images/Overview_img221.jpeg) 


**Silver**

This option helps to set the Office2010 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007Silver
this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.monthCalendarAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver
Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.monthCalendarAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver

{% endhighlight %}

{% endtabs %}

![Office2010 silver theme](CalendarDateTime_images/Overview_img222.jpeg) 

**Managed**

This option helps to apply the custom colors to the MonthCalendarAdv by setting Office2010Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}

//Managed

this.monthCalendarAdv2.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.monthCalendarAdv2.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed;
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(this, Color.Red);


{% endhighlight %}

{% highlight VB %}

'Managed
Me.monthCalendarAdv2.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.monthCalendarAdv2.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(Me, Color.Red)

{% endhighlight %}

{% endtabs %}

![Managed theme](CalendarDateTime_images/Overview_img223.jpeg)

**Metro**

This option helps to set the Metro theme.
 
{% tabs %}

{% highlight C# %}

// Metro
this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro;

{% endhighlight %}

{% highlight VB %}

'Metro
Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Metro

{% endhighlight %}

{% endtabs %}

![Metro theme](CalendarDateTime_images/Overview_img224.jpeg)

**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// office2016Colorful

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'office2016Colorful

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Office2016Colorful](CalendarDateTime_images/Overview_img225.jpeg)

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme. theme.

{% tabs %}

{% highlight C# %}

//Office2016DarkGray

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray;


{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![Office2016DarkGray theme](CalendarDateTime_images/Overview_img226.jpeg)

**Office2016Black**

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

// office2016Black

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

' office2016Black

Me. monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![Office2016Black theme](CalendarDateTime_images/Overview_img227.jpeg)

**Office2016White**

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

// office2016White

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

' office2016White

Me. monthCalendarAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![Office2016White theme](CalendarDateTime_images/Overview_img228.jpeg)

N> Visual styles of the Today and None button can be overridden by [MonthCalendarAdv.TodayButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_TodayButton) and [MonthCalendarAdv.NoneButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_NoneButton) respectively. See [Scroll Buttons](https://help.syncfusion.com/windowsforms/classic/month-calendar/customizing-sections-of-calendar#scroll-buttons).

