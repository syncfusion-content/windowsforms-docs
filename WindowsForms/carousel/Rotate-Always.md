---
layout: post
title: Rotate Always in Windows Forms Carousel | Syncfusion®
description: Rotate Always enables Carousel items to rotate continuously, creating an automated and interactive browsing experience.
platform: WindowsForms
control: Carousel
documentation: ug
---

# Rotate Always in Windows Forms Carousel

The [RotateAlways](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_RotateAlways) property enables the items in the control to rotate continuously. The rotation starts automatically and continues until the property is set to `false` or the user interacts with the control. The speed of the rotation can be adjusted using the [TransitionSpeed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Carousel.html#Syncfusion_Windows_Forms_Tools_Carousel_TransitionSpeed) property. For more details, refer to the [Transition Speed](https://help.syncfusion.com/windowsforms/carousel/transition-speed) documentation.

{% tabs %}
{% highlight C# %}


this.carousel1.RotateAlways = true;
{% endhighlight %}

{% highlight VB %}


Me.carousel1.RotateAlways = True
{% endhighlight %}

{% endtabs %}

