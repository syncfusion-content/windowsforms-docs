---
layout: post
title: Visual Styles
description: visual styles
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Visual Styles

The Visual appearance of the menus can be defined by using various Visual Styles and Themes.

Themes define the look and feel of the whole menu and it also changes the behavior of the menu. Themes can be enabled by setting ThemesEnabled property of mainFrameBarManager to true.

![](Overview_images/Overview_img156.jpeg) 



![](Overview_images/Overview_img157.jpeg) 



## Supported GUI styles

The supported Visual styles are:

* Office 2003 look: This can enabled by setting Style to Office2003.

![](Overview_images/Overview_img158.jpeg) 



* OfficeXP look: This can enabled by setting Style to OfficeXP.

![](Overview_images/Overview_img159.jpeg) 



* VS2005 look: This can enabled by setting Style to VS2005.

![](Overview_images/Overview_img160.jpeg) 



* Office 2007 look:This can enabled by setting Style to Office2007.

![](Overview_images/Overview_img161.jpeg)



* Office 2007 Outlook:This can enabled by setting Style to Office2007Outlook.

![](Overview_images/Overview_img162.jpeg) 





{% highlight c# %}

this.mainFrameBarManager1.Style = VisualStyle.Office2003;  


{% endhighlight  %}
{% highlight vbnet %}




Me.mainFrameBarManager1.Style = VisualStyle.Office2003
{% endhighlight  %}
Office 2007 Themes

You can also specify the color schemes for Office 2007 visual styles. They can be blue, silver and black.

> Note: The property ThemesEnabled must be set to true and the property Style must be set to either Office2007 or Office2007Outlook.



{% highlight c# %}

this.mainFrameBarManager1.Style = VisualStyle.Office2007;     

this.mainFrameBarManager1.Office2007Theme = Office2007ColorScheme.Blue;

{% endhighlight  %}
{% highlight vbnet %}





Me.mainFrameBarManager1.Style = VisualStyle.Office2007

Me.mainFrameBarManager1.Office2007Theme = Office2007ColorScheme.Blue

{% endhighlight  %}

![](Overview_images/Overview_img164.jpeg) 



![](Overview_images/Overview_img165.jpeg) 



![](Overview_images/Overview_img166.jpeg) 



## Custom Colors

We can also apply custom colors to the MainFrameBarManager by setting Office2007Theme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.


{% highlight c# %}


this.mainFrameBarManager1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Crimson);

{% endhighlight  %}
{% highlight vbnet %}





Me.mainFrameBarManager1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Crimson)
{% endhighlight  %}


![](Overview_images/Overview_img167.jpeg)