---
layout: post
title: Visual Styles| DateTimePicker | WindowsForms | Syncfusion
description: Learn here all about how to use the visual styles features in the Windows Forms DateTimePickerAdv control.
platform: WindowsForms
control: DateTimePicker
documentation: ug
---

# VisualStyle in Windows Forms DateTimePicker

Styles

The DateTimePickerAdv control for Windows Forms Supports for below listed Visual Styles. You can easily modify the look using the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html#Syncfusion_Windows_Forms_Tools_DateTimePickerAdv_Style) property of DateTimePickerAdv.

The styles are built in for DateTimePickerAdv.

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

// Default

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.default;

{% endhighlight %}

{% highlight VB %}


' Default

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.default

{% endhighlight %}

{% endtabs %}

![Default theme](DateTimePicker_images/Overview_img201.jpeg) 


**Office2007**

This option helps to set the Office2007 theme.

{% tabs %}

{% highlight C# %}

// Office2007

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;

{% endhighlight %}

{% highlight VB %}

' Office2007

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007

{% endhighlight %}

{% endtabs %}

![Office2007 theme](DateTimePicker_images/Overview_img202.jpeg) 


It also specifies the color schemes for Office 2007 visual styles. They can be Blue, Silver, Black and Managed.

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option helps to set the Office2007 Blue theme.

{% tabs %}

{% highlight C# %}

// Office2007 Blue

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Blue;


{% endhighlight %}

{% highlight VB %}

' Office2007ThemeBlue

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Blue


{% endhighlight %}

{% endtabs %}

![Office2007 blue theme](DateTimePicker_images/Overview_img203.jpeg) 


**Black**

This option helps to set the Office2007 Black theme.

{% tabs %}

{% highlight C# %}

// Office2007ThemeBlack

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme=Syncfusion.Windows.Forms.Office2007Theme.Black;


{% endhighlight %}

{% highlight VB %}

'Office2007ThemeBlack

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2007 black theme](DateTimePicker_images/Overview_img204.jpeg) 


**Silver**

This option helps to set the Office2007 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007themeSilver

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Silver;


{% endhighlight %}

{% highlight VB %}

' Office2007ThemeSilver

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.dateTimePickerAdv1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Silver


{% endhighlight %}

{% endtabs %}

![Office2007 silver theme](DateTimePicker_images/Overview_img205.jpeg) 


**Managed**

This option helps to apply the custom colors to the DateTimePickerAdv by setting Office2010Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}

// Managed

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(this, Color.Red);


{% endhighlight %}

{% highlight VB %}

'Managed

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(Me, Color.Red)


{% endhighlight %}

{% endtabs %}

![Managed theme](DateTimePicker_images/Overview_img206.jpeg) 


**Office2007Outlook**

This option is used to set the Office200&Outlook theme.


{% tabs %}

{% highlight C# %}

// Office2007Outlook

this.dateTimePickerAdv1.Style =  Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook;

{% endhighlight  %}

{% highlight VB %}

'Office2007Outlook

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook

{% endhighlight %}

{% endtabs %}

![Office2007Outlook theme](DateTimePicker_images/Overview_img218.jpeg) 


**Office2010**

This option helps to set the Office2010 theme.

{% tabs %}

{% highlight C# %}

// Office2010
this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;

{% endhighlight %}

{% highlight VB %}

'Office2010
Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010

{% endhighlight %}

{% endtabs %}

![Office2010 theme](DateTimePicker_images/Overview_img207.jpeg) 

It also allows to specify the color schemes for Office 2010 visual styles. They can be blue, silver and black and managed

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option helps to set the Office2010 Blue theme.

{% tabs %}

{% highlight C# %}

// Office2010Blue

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2010Blue

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

![Office2010 blue theme](DateTimePicker_images/Overview_img208.jpeg) 

**Black**

This option helps to set the Office2010 Black theme.

{% tabs %}

{% highlight C# %}

// Office2010Black

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black;

{% endhighlight %}

{% highlight VB %}

'Office2007Black

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2010 black theme](DateTimePicker_images/Overview_img209.jpeg) 


**Silver**

This option helps to set the Office2010 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver;

{% endhighlight %}

{% highlight VB %}

'Office2007Silver

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver

{% endhighlight %}

{% endtabs %}

![Office2010 silver theme](DateTimePicker_images/Overview_img210.jpeg) 

**Managed**

This option helps to apply the custom colors to the MonthCalendarAdv by setting Office2010Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}

//Managed

this.dateTimePickerAdv1.Style= Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed;
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(this, Color.Red);


{% endhighlight %}

{% highlight VB %}

'Managed
Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(Me, Color.Red)

{% endhighlight %}

{% endtabs %}

![Managed theme](DateTimePicker_images/Overview_img211.jpeg) 

**Metro**

This option helps to set the Metro theme.
 
 {% tabs %}

{% highlight C# %}

// Metro
this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro;

{% endhighlight %}

{% highlight VB %}

'Metro
Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Metro

{% endhighlight %}

{% endtabs %}

![Metro theme](DateTimePicker_images/Overview_img213.jpeg) 

**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// office2016Colorful

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'office2016Colorful

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Office2016Colorful theme](DateTimePicker_images/Overview_img212.jpeg) 

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme. theme.

{% tabs %}

{% highlight C# %}

// office2016DarkGray

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray;


{% endhighlight %}

{% highlight VB %}

' office2016DarkGray

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![Office2016DarkGray theme](DateTimePicker_images/Overview_img214.jpeg) 

**Office2016Black**

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

// office2016Black

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

' office2016Black

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![Office2016Black theme](DateTimePicker_images/Overview_img216.jpeg) 

**Office2016White**

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

//office2016White

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

'office2016White

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![Office2016White theme](DateTimePicker_images/Overview_img217.jpeg) 
