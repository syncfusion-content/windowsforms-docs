---
layout: post
title: How to create a transparent popup
description: How to create a transparent popup
platform: WindowsForms
control: Editors Package
documentation: ug
---



# How to identify whether the popup is currently dropped down

PopupControlContainer.IsShowing() method returns whether the popup is currently dropped down or not.


{% highlight C# %}



this.popupControlContainer1.IsShowing();

{% endhighlight %}



{% highlight vbnet %}




Me.popupControlContainer1.IsShowing()

{% endhighlight %}