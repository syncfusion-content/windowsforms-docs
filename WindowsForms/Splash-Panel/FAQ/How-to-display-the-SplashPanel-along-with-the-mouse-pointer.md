---
layout: post
title: Display SplashPanel Along with Mouse Pointer | WindowsForms
description: Learn how to display a SplashPanel along with the mouse pointer and maintain pointer visibility in Windows Forms.
platform: windowsforms
control: Notification Package 
documentation: ug
---

# How to Display the SplashPanel along with the Mouse Pointer

Set the DesktopAlignment property of the SplashPanel to _Custom_, and call the ShowSplash method, by passing the pointer position as the parameter as follows. 

{% tabs %}
{% highlight c# %}

Point pt = Point.Empty;
if( SplashPanel1.DesktopAlignment == SplashAlignment.Custom)
pt = Control.MousePosition;
SplashPanel1 .ShowSplash(pt, this, true);

{% endhighlight %}

{% highlight vb %}

Private pt As Point = Point.Empty
If SplashPanel1.DesktopAlignment = SplashAlignment.Custom Then
pt = Control.MousePosition
SplashPanel1.ShowSplash(pt, Me, True)
End If

{% endhighlight %}
{% endtabs %}