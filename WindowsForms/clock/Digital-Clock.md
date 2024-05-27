---
layout: post
title: Digital clock in Windows Forms Clock Control | Syncfusion
description: Learn about digital clock support in Syncfusion Essential Studio Windows Forms Clock control, its elements, and more.
platform: WindowsForms
control: Clock-Control-for-Windows-Forms
documentation: ug
---

# Digital clock in Windows Forms Clock

The DigitalClock is implemented as an extension to the existing [Windows Forms Clock](https://www.syncfusion.com/winforms-ui-controls/clock) control in the UI controls, but offers a richer UI experience than the existing clock and is capable of displaying the time as digital text.

You can use the DigitalClock in your application by simply switching the [ClockType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ClockType) of the existing [Clock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html) control as described in the following sample code:

{% tabs %}

{% highlight C# %}

this.clock1.ClockType = Syncfusion.Windows.Forms.Tools.ClockTypes.Digital;

{% endhighlight %}

{% highlight VB %}

Me.clock1.ClockType = Syncfusion.Windows.Forms.Tools.ClockTypes.Digital

{% endhighlight %}

{% endtabs %}

## Appearance

The DigitalClock offers a wide range of options to customize its appearance. It provides three built-in frames and five background shapes. Users can also use their own frames for the DigitalClock through the renderer.

### Frames

To enable the background frames, the DigitalClock should be enabled with the property [ShowClockFrame](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ShowClockFrame) set to `true`.

#### Rectangular frame

{% tabs %}

{% highlight C# %}

    this.clock1.ShowClockFrame = true;

    this.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.RectangularFrame;

{% endhighlight %}

{% highlight VB %}

    Me.clock1.ShowClockFrame = true
    Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.RectangularFrame

{% endhighlight %}

{% endtabs %}

![Rectangular frame](Overview_images/Overview_img100.png) 

#### Circular frame

{% tabs %}

{% highlight C# %}

    this.clock1.ShowClockFrame = true;

    this.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.CircularFrame;

{% endhighlight %}

{% highlight VB %}

Me.clock1.ShowClockFrame = true
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.CircularFrame

{% endhighlight %}

{% endtabs %}

![Circular frame](Overview_images/Overview_img101.png) 



#### Square frame

{% tabs %}

{% highlight C# %}

    this.clock1.ShowClockFrame = true;

    this.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.SquareFrame;

{% endhighlight %}

{% highlight VB %}

Me.clock1.ShowClockFrame = true
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.SquareFrame

{% endhighlight %}

{% endtabs %}

![Square frame](Overview_images/Overview_img102.png) 

### Shapes

To enable background shapes in the [Clock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html) control, the [ShowClockFrame](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ShowClockFrame) property should be disabled so that the control can support rendering the background shapes.

#### Rectangular shape

{% tabs %}

{% highlight C# %}

    this.clock1.ShowClockFrame = false;

    this.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Rectangle;

{% endhighlight %}

{% highlight VB %}

Me.clock1.ShowClockFrame = False
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.CircularFrame

{% endhighlight %}

{% endtabs %}

![Shapes](Overview_images/Overview_img103.png) 



#### RoundedRectangular shape

{% tabs %}

{% highlight C# %}

    this.clock1.ShowClockFrame = false;

    this.clock2.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.RoundedRectangle;

 {% endhighlight %}

{% highlight VB %}

Me.clock1.ShowClockFrame = False
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockShapes.CircularFrame

{% endhighlight %}

{% endtabs %}

![RoundedRectangular shape](Overview_images/Overview_img104.png) 



#### Circular shape

{% tabs %}

{% highlight C# %}

  this.clock1.ShowClockFrame = false;

  this.clock2.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Circle;

{% endhighlight %}
 
{% highlight VB %}

Me.clock1.ShowClockFrame = false
Me.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Circle

{% endhighlight %}

{% endtabs %}

![Circular shape](Overview_images/Overview_img105.png)



#### Square shape

{% tabs %}

{% highlight C# %}

  this.clock1.ShowClockFrame = false;

  this.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Square;

 {% endhighlight %}

{% highlight VB %}

Me.clock1.ShowClockFrame = false
Me.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Square

 {% endhighlight %}

 {% endtabs %}

![Square shape](Overview_images/Overview_img106.png)



#### RoundedSquare shape

{% tabs %}

{% highlight C# %}

  this.clock1.ShowClockFrame = false;

  this.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.RoundedSquare;

{% endhighlight %}

{% highlight VB %}

Me.clock1.ShowClockFrame = false
Me.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.RoundedSquare

{% endhighlight %}

{% endtabs %}

![RoundedSquare shape](Overview_images/Overview_img107.png) 

### Color customizations

#### Foreground color

The foreground color for the DigitalClock can be changed using the [ForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ForeColor) property. This color will be reflected in the text of the control.

{% tabs %}

{% highlight C# %}

    this.clock1.ForeColor = System.Drawing.Color.Yellow;

{% endhighlight %}



{% highlight VB %}

   Me.clock1.ForeColor = System.Drawing.Color.Yellow

{% endhighlight %}

{% endtabs %}

![Foreground color](Overview_images/Overview_img108.png) 


#### Background color

The background color for the DigitalClock can be changed using the [BackgroundColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_BackgroundColor) property. This color will be reflected in the background of the control.

{% tabs %}

{% highlight C# %}



    this.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;

    this.clock1.ForeColor = System.Drawing.Color.Yellow;

{% endhighlight %}



{% highlight VB %}

   Me.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption

   Me.clock1.ForeColor = System.Drawing.Color.Yellow

{% endhighlight %}

{% endtabs %}

![Background color](Overview_images/Overview_img109.png) 

#### Border color

The border color for the control will be reflected only when the control is assigned with the background shapes as follows:

{% tabs %}

{% highlight C# %}



    this.clock1.BorderColor = System.Drawing.Color.Yellow;    

    this.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;

    this.clock1.ForeColor = System.Drawing.Color.Yellow;

{% endhighlight %}



{% highlight VB %}

   Me.clock1.BorderColor = System.Drawing.Color.Yellow

   Me.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption

   Me.clock1.ForeColor = System.Drawing.Color.Yellow

{% endhighlight %}

{% endtabs %}

![Border color](Overview_images/Overview_img110.png)

## Behavior

### Show or hide days of the week

To display or hide the week days and current date in the DigitalClock, the [DisplayDates](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_DisplayDates) property can be used.

{% tabs %}

{% highlight C# %}

          this.clock1.DisplayDates = true;

{% endhighlight %}



{% highlight VB %}

        Me.clock1.DisplayDates = True

{% endhighlight %}

{% endtabs %}


![Show the days of the week](Overview_images/Overview_img111.png) 



![Hide days of the week](Overview_images/Overview_img112.png) 


### Show or hide the hour designator

To display or hide the hour designator (AM and PM) in the DigitalClock, the [ShowHourDesignator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ShowHourDesignator) property can be used.

{% tabs %}

{% highlight C# %}     

          this.clock1.ShowHourDesignator = false;

{% endhighlight %}



{% highlight VB %}

          Me.clock1.ShowHourDesignator = false

{% endhighlight %}

{% endtabs %}



![Hide the hour designator](Overview_images/Overview_img113.png) 



![Show the hour designator](Overview_images/Overview_img114.png) 


### Custom time Clock

To enable the custom time, the DigitalClock should be enabled with the property [ShowCustomTimeClock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ShowCustomTimeClock) set as `true`.

#### Input formats

To enable the custom time, the clock control should be enabled with the [ShowCustomTimeClock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html#Syncfusion_Windows_Forms_Tools_Clock_ShowCustomTimeClock) property set as `true`, and the custom time should be in DateTime format.

{% tabs %}

{% highlight C# %}

          this.clock1.ShowCustomTimeClock = true;

          this.clock1.CustomTime = new System.DateTime(2013, 9, 14, 10, 10, 15, 0);


{% endhighlight %}




{% highlight VB %}

          Me.clock1.ShowCustomTimeClock = true

                   Me.clock1.CustomTime = New Date(2013, 9, 14, 10, 10, 15, 0)

{% endhighlight %}

{% endtabs %}

![Custom time Clock](Overview_images/Overview_img115.png) 



#### Applying custom renderer to the DigitalClock control

The following code sample can be utilized for applying a custom renderer to the DigitalClock.

{% tabs %}

{% highlight C# %}

  DigitalRenderer render = new DigitalRenderer();

  this.clock1.DigitalRenderer = render;

   public class DigitalRenderer : DigitalClockRenderer

    {

        public override void DrawDigitalClockFrame(Graphics g, Image newImage, Clock clock)

        {

            Image image =Image.FromFile(@"D:\CustomClock.PNG");

            base.DrawDigitalClockFrame(g, image, clock);

        }

    }

{% endhighlight %}
{% highlight VB %}

Dim render As DigitalRenderer = New DigitalRenderer
Me.clock1.DigitalRenderer = render
Public Class DigitalRenderer
    Inherits DigitalClockRenderer

    Public Overrides Sub DrawDigitalClockFrame(ByVal g As Graphics, ByVal newImage As Image, ByVal clock As Clock)
        Dim image As Image = Image.FromFile("G:\CustomClock.PNG")
        MyBase.DrawDigitalClockFrame(g, image, clock)
    End Sub
End Class


{% endhighlight %}

{% endtabs %}

![Custom clock](Overview_images/Overview_img116.png)
