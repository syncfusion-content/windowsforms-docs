---
layout: post
title: Border-color
description: border color
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Border color

The border color for the control will be reflected only when the control is assigned with the background shapes as follows:

{% highlight c# %}    



    this.clock1.BorderColor = System.Drawing.Color.Yellow;    

    this.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;

    this.clock1.ForeColor = System.Drawing.Color.Yellow;

{% endhighlight %}



{% highlight vbnet %}

   Me.clock1.BorderColor = System.Drawing.Color.Yellow

   Me.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption

   Me.clock1.ForeColor = System.Drawing.Color.Yellow

{% endhighlight %}



![](Overview_images/Overview_img110.png)

