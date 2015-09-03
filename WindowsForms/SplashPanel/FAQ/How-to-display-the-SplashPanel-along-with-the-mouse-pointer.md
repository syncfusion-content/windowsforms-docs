---
layout: post
title: How-to-display-the-SplashPanel-along-with-the-mouse-pointer
description: how to display the splashPanel along with the mouse pointer
platform: WindowsForms
control: Notification Package 
documentation: ug
---

# How to display the SplashPanel along with the mouse pointer

Set the DesktopAlignment property of the SplashPanel to _Custom_, and call the ShowSplash method, by passing the pointer position as the parameter as follows. 

{% highlight c# %}



Point pt = Point.Empty;

if( SplashPanel1.DesktopAlignment == SplashAlignment.Custom)

pt = Control.MousePosition;

SplashPanel1 .ShowSplash(pt, this, true);

{% endhighlight %}

{% highlight vbnet %}



Private pt As Point = Point.Empty

If SplashPanel1.DesktopAlignment = SplashAlignment.Custom Then

pt = Control.MousePosition

SplashPanel1.ShowSplash(pt, Me, True)

End If

{% endhighlight %}