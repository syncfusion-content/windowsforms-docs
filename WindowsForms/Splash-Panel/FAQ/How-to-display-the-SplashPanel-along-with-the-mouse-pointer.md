---
layout: post
title: Display SplashPanel with mouse pointer | WindowsForms | Syncfusion
description: Learn how to display the SplashPanel along with the mouse pointer in Syncfusion WindowsForms by setting DesktopAlignment to Custom and using ShowSplash with pointer position.
platform: windowsforms
control: SplashPanel
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