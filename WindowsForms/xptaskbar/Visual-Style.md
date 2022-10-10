---
layout: post
title: Visual Style in Windows Forms xptaskbar control | Syncfusion
description: Learn about Visual Style support in Syncfusion Windows Forms xptaskbar (XPTaskBar) control and more details.
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# Visual Style in Windows Forms xp taskbar (XPTaskBar)

 XPTaskBar offers various built in themes for its professional representation as follows

    •	Default

    •	Office2007

    •	Office2010

    •	Metro

    •	Office2016Colorful

    •	Office2016White

    •	Office2016DarkGray

    •	Office2016Black

You can set the above themes using the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBar.html#Syncfusion_Windows_Forms_Tools_XPTaskBar_Style) property.

**Default**

This option helps to set the Default appearance.

{% tabs %}

{% highlight C# %} 

//Default

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Default;

 {% endhighlight %}



{% highlight VB %} 

'Default

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Default

{% endhighlight %}

{% endtabs %}

![Default theme](Overview_images/Overview_img119.png) 


**Office2007**

This option helps to set the Office2007 appearance.

{% tabs %}

{% highlight C# %} 

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2007;

//Sets the Blue Color Scheme

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

//Sets the Silver Color Scheme

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//Sets the Black Color Scheme

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

 {% endhighlight %}



{% highlight VB %} 

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2007

'Sets the Blue Color Scheme

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'Sets the Silver Color Scheme

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'Sets the Black Color Scheme

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2007 theme](Overview_images/Overview_img111.jpeg) 


**Custom colors**

We can also apply custom colors to the XPTaskBar control by setting Office2007ColorScheme to "_Managed_", and specifying the 
custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}  

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.DarkGreen);

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.DarkGreen)

{% endhighlight %}

{% endtabs %}

![Custom colors](Overview_images/Overview_img112.jpeg) 

**Office2010**

 This option helps to set the Office2010 appearance.

{% tabs %}

{% highlight C# %} 

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2010;

//Sets the Blue Color Scheme

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Blue;

//Sets the Silver Color Scheme

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Silver;

//Sets the Black Color Scheme

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Black;

 {% endhighlight %}



{% highlight VB %} 

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2010

'Sets the Blue Color Scheme

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Blue

'Sets the Silver Color Scheme

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Silver

'Sets the Black Color Scheme

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2010](Overview_images/Overview_img124.png) 


**Custom colors**

We can also apply custom colors to the XPTaskBar control by setting Office2010ColorScheme to "_Managed_", and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}  

this.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Managed;

Office2010Colors.ApplyManagedColors(this, Color.Violet);

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBar1.Office2010ColorScheme = Syncfusion.Windows.Forms.Office2010Theme.Managed

Office2010Colors.ApplyManagedColors(this, Color.Violet)

{% endhighlight %}

{% endtabs %}

![Custom colors](Overview_images/Overview_img117.png) 

**Metro**

This options helps to set the Metro appearance.
 
{% tabs %}

{% highlight C# %} 

//Metro

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Metro;

 {% endhighlight %}



{% highlight VB %} 

'Metro

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Metro

{% endhighlight %}

{% endtabs %}

![Metro](Overview_images/Overview_img118.png)

**Office2016Colorful**

This options helps to set the Office2016Colorful appearance.
 
{% tabs %}

{% highlight C# %} 

//Office2016Colorful

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.XPTaskBarStyle.Office2016Colorful;

 {% endhighlight %}



{% highlight VB %} 

'Office2016Colorful

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Office2016Colorful](Overview_images/Overview_img120.png)
 

**Office2016White**

This options helps to set the Office2016White appearance.
 
{% tabs %}

{% highlight C# %} 

//Office2016White

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.XPTaskBarStyle.Office2016White;

 {% endhighlight %}



{% highlight VB %} 

'Office2016White

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![Office2016White](Overview_images/Overview_img121.png)

**Office2016DarkGray**

This options helps to set the Office2016DarkGray appearance.
 
{% tabs %}

{% highlight C# %} 

//Office2016DarkGray

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.XPTaskBarStyle.Office2016DarkGray;

 {% endhighlight %}



{% highlight VB %} 

'Office2016DarkGray

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![Office2016DarkGray](Overview_images/Overview_img122.png)


**Office2016Black**

This options helps to set the Office2016Black appearance.
 
{% tabs %}

{% highlight C# %} 

//Office2016Black

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.XPTaskBarStyle.Office2016Black;

 {% endhighlight %}



{% highlight VB %} 

'Office2016Black

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![Office2016Black](Overview_images/Overview_img123.png) 



