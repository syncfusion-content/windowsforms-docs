---
layout: post
title: Office-2013-Color-Schemes
description: Office 2013 Color Schemes
platform: Windows Forms
control: Tools 
documentation: ug
---

# Office 2013 Color Schemes

The RibbonControlAdv includes new color schemes as available in the Office 2013 suite to provide a more personalized experience with the RibbonControlAdv.
RibbonControlAdv now supports three themes: White, LightGray, and DarkGray. These themes can be set through the Office2013ColorScheme property to tone down the bright white background of the ribbon. 
The following code sample illustrates how to set the DarkGray theme for the Office 2013 style RibbonControl.

{% highlight C# %}

  this.ribbonControlAdv1.Office2013ColorScheme = Office2013ColorScheme.DarkGray;

{% endhighlight %}

{% highlight vbnet %}

  Me.ribbonControlAdv1.Office2013ColorScheme = Office2013ColorScheme.DarkGray

{% endhighlight %}

![](Office_images/office_img49.png)

_Figure 1191: Ribbon2013 with DarkGray ColorScheme_

![](Office_images/office_img50.png)

_Figure 1192: Ribbon2013 with LightGray ColorScheme_

![](Office_images/office_img51.png)

_Figure 1193: Ribbon2013 with Default [White] ColorScheme_

