---
layout: post
title: Visual Styles| WindowsForms | Syncfusion
description: visual styles
platform: WindowsForms
control: DateTimePicker
documentation: ug
---

# VisualStyle

Styles

The DateTimePickerAdv control for Windows Forms Supports for below listed Visual Styles. You can easily modify the look using the built-in visual styles.

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

<table>
<tr>
<th>
DateTimePickerAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Gets or Sets the visual style of the DateTimePickerAdv. The default value is 'Default'.</td></tr>
</table>

**Default**

This option helps to set the Default theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Default

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.default;

{% endhighlight %}

{% highlight vbnet %}


' Default

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.default

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img201.jpeg) 


**Office2007**

This option helps to set the Office2007 theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;

{% endhighlight %}

{% highlight vbnet %}

' Office2007

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img202.jpeg) 


It also specifies the color schemes for Office 2007 visual styles. They can be Blue, Silver, Black and Managed.

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option helps to set the Office2007 Blue theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007 Blue

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Blue;


{% endhighlight %}

{% highlight vbnet %}

' Office2007ThemeBlue

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Blue


{% endhighlight %}

![](DateTimePicker_images/Overview_img203.jpeg) 


**Black**

This option helps to set the Office2007 Black theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007ThemeBlack

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme=Syncfusion.Windows.Forms.Office2007Theme.Black;


{% endhighlight %}

{% highlight vbnet %}

'Office2007ThemeBlack

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img204.jpeg) 


**Silver**

#####  Code Sample

This option helps to set the Office2007 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007themeSilver

this.dateTimePickerAdv1.Style=Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Silver;


{% endhighlight %}

{% highlight vbnet %}

' Office2007ThemeSilver

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.dateTimePickerAdv1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Silver


{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img205.jpeg) 


**Managed**

This option helps to apply the custom colors to the DateTimePickerAdv by setting Office2010Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Managed

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.dateTimePickerAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(this, Color.Red);


{% endhighlight %}

{% highlight vbnet %}

'Managed

Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(Me, Color.Red)


{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img206.jpeg) 


**Office2007Outlook**

This option is used to set the Office200&Outlook theme.


#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2007Outlook

this.dateTimePickerAdv1.Style =  Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook;

{% endhighlight  %}

{% highlight vbnet %}

'Office2007Outlook

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007Outlook

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img218.jpeg) 


**Office2010**

This option helps to set the Office2010 theme.

{% tabs %}

{% highlight C# %}

// Office2010
this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;

{% endhighlight %}

{% highlight vbnet %}

'Office2010
Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img207.jpeg) 

It also allows to specify the color schemes for Office 2010 visual styles. They can be blue, silver and black and managed

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option helps to set the Office2010 Blue theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2010Blue

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Blue;

{% endhighlight %}

{% highlight vbnet %}

'Office2010Blue

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img208.jpeg) 

**Black**

This option helps to set the Office2010 Black theme.

#####  Code Sample

{% tabs %}

{% highlight C# %}

// Office2010Black

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black;

{% endhighlight %}

{% highlight vbnet %}

'Office2007Black

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img209.jpeg) 


**Silver**

#####  Code Sample

This option helps to set the Office2010 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007Silver

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver;

{% endhighlight %}

{% highlight vbnet %}

'Office2007Silver

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img210.jpeg) 

**Managed**

This option helps to apply the custom colors to the MonthCalendarAdv by setting Office2010Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

#####  Code Sample

{% tabs %}

{% highlight C# %}

//Managed

this.dateTimePickerAdv1.Style= Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed;
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(this, Color.Red);


{% endhighlight %}

{% highlight vbnet %}

'Managed
Me.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.dateTimePickerAdv1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(Me, Color.Red)

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img211.jpeg) 

**Metro**

This option helps to set the Metro theme.
 
 {% tabs %}

{% highlight C# %}

// Metro
this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Metro;

{% endhighlight %}

{% highlight vbnet %}

'Metro
Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Metro

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img213.jpeg) 

**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// office2016Colorful

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight vbnet %}

'office2016Colorful

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img212.jpeg) 

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme. theme.

% tabs %}

{% highlight C# %}

// office2016DarkGray

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray;


{% endhighlight %}

{% highlight vbnet %}

' office2016DarkGray

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img214.jpeg) 

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme. theme.

{% tabs %}

{% highlight C# %}

// office2016DarkGray

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray;


{% endhighlight %}

{% highlight vbnet %}

' office2016DarkGray

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img215.jpeg) 

**Office2016Black**

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

// office2016Black

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Black;

{% endhighlight %}

{% highlight vbnet %}

' office2016Black

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img216.jpeg) 

**Office2016White**

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

//office2016White

this.dateTimePickerAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016White;

{% endhighlight %}

{% highlight vbnet %}

'office2016White

Me.dateTimePickerAdv1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![](DateTimePicker_images/Overview_img217.jpeg) 