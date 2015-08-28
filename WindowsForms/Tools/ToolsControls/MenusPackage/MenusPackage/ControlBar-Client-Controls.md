---
layout: post
title: ControlBar Client Controls
description: controlbar client controls
platform: windowsforms
control: Menus Package 
documentation: ug
---
# ControlBar Client Controls

A ControlBar is capable of hosting two controls.

* A main control that occupies the ControlBar's client region.
* A CaptionControl that is displayed within the ControlBar's caption region. 

While just about any System.Windows.Forms.Control instance can be used as the ControlBar's main client, the caption control position is normally occupied by single line controls such as a toolbar, text box or combo box. 

![](Overview_images/Overview_img111.jpeg) 



![](Overview_images/Overview_img112.jpeg)



Dropping a control onto the ControlBar automatically sets it as the ControlBar's main client. To assign the caption control, drop the control onto the ControlBar and using the Properties window, set the bar's CaptionControl property to refer that control. Doing so will reposition and resize the control to occupy the bar's caption region. Height of the ControlBar caption bar can be specified in ControlBarCaptionHeight property. Default height is 25.


{% highlight c# %}


this.controlBar1.CaptionControl = this.xpToolBar1;

this.controlBar1.ControlBarCaptionHeight = 30;



{% endhighlight %}
{% highlight vbnet %}



Me.controlBar1.CaptionControl = Me.xpToolBar1

Me.controlBar1.ControlBarCaptionHeight = 30
{% endhighlight  %}

See Also

ControlBar Properties

Adding Different Pages To Control Bar

How to dock the ControlBars to any edge of the host form?