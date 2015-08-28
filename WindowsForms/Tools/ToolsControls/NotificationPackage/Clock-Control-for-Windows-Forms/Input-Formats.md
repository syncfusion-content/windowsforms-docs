---
layout: post
title: Input-Formats
description: input formats
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Input Formats

To enable the custom time, the clock control should be enabled with the ShowCustomTimeClock property set as true, and the custom time should be in DateTime format.

{% highlight c# %}           

          this.clock1.ShowCustomTimeClock = true;

          this.clock1.CustomTime = new System.DateTime(2013, 9, 14, 10, 10, 15, 0);


{% endhighlight %}




{% highlight vbnet %}

          Me.clock1.ShowCustomTimeClock = true

                   Me.clock1.CustomTime = New Date(2013, 9, 14, 10, 10, 15, 0)

{% endhighlight %}



The following image illustrates the DigitalClock with a custom date and time.

![](Overview_images/Overview_img115.png) 



##### Applying Custom Renderer to the DigitalClock Control

The following code sample can be utilized for applying a custom renderer to the DigitalClock.

{% highlight c# %} 

  DigitalRenderer render = new DigitalRenderer();

  this.clock1.DigitalRenderer = render;



   public class DigitalRenderer : DigitalClockRenderer

    {

        public override void DrawDigitalClockFrame(Graphics g, Image newImage, Clock clock)

        {

            Image newbitmap =Image.FromFile(@"D:\CustomClock.PNG");



            base.DrawDigitalClockFrame(g, newbitmap, clock);

        }

    }


{% endhighlight %}


{% highlight vbnet %}

Dim render As DigitalRenderer = New DigitalRenderer
Me.clock1.DigitalRenderer = render
Public Class DigitalRenderer
    Inherits DigitalClockRenderer

    Public Overrides Sub DrawDigitalClockFrame(ByVal g As Graphics, ByVal newImage As Image, ByVal clock As Clock)
        Dim newbitmap As Image = Image.FromFile("G:\CustomClock.PNG")
        MyBase.DrawDigitalClockFrame(g, newbitmap, clock)
    End Sub
End Class


{% endhighlight %}


![](Overview_images/Overview_img116.png) 



