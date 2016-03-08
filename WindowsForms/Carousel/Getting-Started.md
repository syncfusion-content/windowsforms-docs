---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: Carousel
documentation: ug
---

# Getting Started

## Adding through Designer

Follow these steps to add the Carousel control to an application through Visual Studio:

1. Create a new Windows Forms application in Visual Studio.
2. Drag the Carousel control from the Toolbox tab to the designer. The Carousel control will be added.
3. Add items to the Carousel in either the Properties window or in the Smart Tags of the Carousel control.

  ![](Getting-Started_images/Getting-Started_img1.png) 



## Adding through Code

To add the Carousel control to an application through code, include the Windows Forms Tools namespace:

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vbnet %}


Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}


Create an instance of the Carousel control and add it to the form as given in the following code:
{% highlight C# %}
 

 Syncfusion.Windows.Forms.Tools.Carousel carousel1;

 this.carousel1= new Syncfusion.Windows.Forms.Tools. Carousel();

 this.Controls.Add(carousel1);
{% endhighlight %}

{% highlight vbnet %}


Dim carousel1 As Syncfusion.Windows.Forms.Tools.Carousel

Me.carousel1 = New Syncfusion.Windows.Forms.Tools. Carousel()

Me.Controls.Add(carousel1)
{% endhighlight %}


