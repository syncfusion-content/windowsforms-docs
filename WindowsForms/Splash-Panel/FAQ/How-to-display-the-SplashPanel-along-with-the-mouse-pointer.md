---
layout: post
title: Display SplashPanel with Mouse Pointer | Syncfusion®
description: Display SplashPanel with the mouse pointer in Windows Forms SplashPanel to provide contextual feedback and keep status information visible during interactions.
platform: WindowsForms
control: Notification Package 
documentation: ug
---

# Display SplashPanel with Mouse Pointer

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