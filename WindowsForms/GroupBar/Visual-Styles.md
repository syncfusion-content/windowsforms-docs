---
layout: post
title: Visual Styles | WindowsForms | Syncfusion
description: Visual Styles
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Visual styles

The GroupBar control for Windows Forms Supports for below listed Visual Styles. You can easily modify the look using the built-in visual styles.

The styles are built in for GroupBar.

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

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Default; 

{% endhighlight %}

{% highlight VB %}

' Default

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Default

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img117.jpg) 


**Office2007**

This option helps to set the Office2007 theme.

{% tabs %}

{% highlight C# %}

// Office2007

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007; 

{% endhighlight %}

{% highlight VB %}

' Office2007

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img118.jpeg) 

You can also specify the color schemes for Office 2007 visual styles. They can be Blue, Silver, Black and Managed.

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option is used to set the Office2007 Blue theme.

{% tabs %}

{% highlight C# %}

//Office2007themeBlue

this.groupBar1.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2007;
this. groupBar1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'Office2007ThemeBlue

Me.groupBar1.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.groupBar1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Blue

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img119.jpeg) 

**Black**

This option helps to set the Black theme.

{% tabs %}

{% highlight C# %}

// Office2007ThemeBlack

this.groupBar1.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.groupBar1.Office2007Theme =Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}

' Office2007ThemeBlack

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.groupBar1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img120.jpeg) 

**Silver**

This option helps to set the Silver theme.

{% tabs %}

{% highlight C# %}

// Office2007ThemeSilver

this.groupBar1.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.groupBar1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight %}

{% highlight VB %}

' Office2007ThemeSilver

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.groupBar1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img121.jpeg) 

**Managed**

This option helps to apply the custom colors to the GroupBar by setting Office2007Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}

// Managed

this.groupbarVisualStudio.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.groupbarVisualStudio.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(this, Color.Red);


{% endhighlight %}

{% highlight VB %}

' Managed
Me.groupbarVisualStudio.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.groupbarVisualStudio.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Syncfusion.Windows.Forms.Office2007Colors.ApplyManagedColors(Me, Color.Red)


{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img122.jpeg) 

**Office2010**

This option helps to set the Office2010 theme.

{% tabs %}

{% highlight C# %}

// Office2010

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010; 

{% endhighlight %}

{% highlight VB %}

' Office2010

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img123.jpeg) 

It also specifies the color schemes for Office 2010 visual styles. They can be Blue, Silver, Black and Managed.

•	Blue

•	Black

•	Silver

•	Managed

**Blue**

This option is used to set the Office2010 Blue theme.

{% tabs %}

{% highlight C# %}

// Office2010ThemeBlue

this.groupBar1.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.groupBar1.Office2010Theme =Syncfusion.Windows.Forms.Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

' Office2010ThemeBlue

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.groupBar1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Blue


{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img124.jpeg) 


**Black**

This option is used to set the Office2010 Black theme.

{% tabs %}

{% highlight C# %}

// Office2010ThemeBlack

this.groupBar1.VisualStyle =Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.groupBar1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black;

{% endhighlight %}

{% highlight VB %}

' Office2010ThemeBlack

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.groupBar1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Black

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img125.jpeg) 

**Silver**

This option is used to set the Office2010 Silver theme.

{% tabs %}

{% highlight C# %}

// Office2010ThemeSilver

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.groupBar1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver;

{% endhighlight %}

{% highlight VB %}

' Office2010ThemeSilver

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.groupBar1.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Silver

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img126.jpeg) 

**Managed**

This option helps to apply the custom colors to the GroupBar by setting Office2010Theme to “Managed” and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}

//Managed

this.groupbarVisualStudio.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010;
this.groupbarVisualStudio.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed;
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(this, Color.Red);

{% endhighlight %}

{% highlight VB %}

' Managed

Me.groupbarVisualStudio.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2010
Me.groupbarVisualStudio.Office2010Theme = Syncfusion.Windows.Forms.Office2010Theme.Managed
Syncfusion.Windows.Forms.Office2010Colors.ApplyManagedColors(Me, Color.Red)

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img127.jpeg) 

**Metro**

This option helps to set the Metro theme.

{% tabs %}

{% highlight C# %}

// Metro

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Metro; 


{% endhighlight %}

{% highlight VB %}

' Metro

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Metro

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img128.jpeg) 

**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful; 


{% endhighlight %}

{% highlight VB %}

' Office2016Colorful

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img129.jpeg) 

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}

// Office2016DarkGray

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray; 

{% endhighlight %}

{% highlight VB %}

' Office2016DarkGray

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img130.jpeg) 


**Office2016Black**

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

// Office2016Black

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black; 

{% endhighlight %}

{% highlight VB %}

' Office2016Black

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img131.jpeg) 

**Office2016White**

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

// Office2016White

this.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016White; 
 
{% endhighlight %}

{% highlight VB %}

' Office2016White

Me.groupBar1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img132.jpeg) 

