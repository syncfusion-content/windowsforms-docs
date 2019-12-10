---
layout: post
title: Interactive-Features | WindowsForms | Syncfusion
description: interactive features
platform: WindowsForms
control: RangeSlider 
documentation: ug
---

# Interactive features

The following are the key interactive features of the Range Slider:

* [Range](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Range.html)-Specifies the Range of the control, generally indicated by a Start and End value.
* [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~TickFrequency.html)-Specifies the frequency at which Ticks are to be placed.
* [Minimum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Minimum.html)-Specifies the Minimum value of the Range Slider.
* [Maximum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Maximum.html)-Specifies the Maximum value of the Range Slider.
* [ChannelColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ChannelColor.html)-Specifies the color for the channel.
* [ChannelHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ChannelHeight.html)-Specifies the height for the channel.
* [RangeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~RangeColor.html)-Specifies the color for the range.
* [RightToLeft](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_RightToLeft)-Allows reversal of the RangeSlider.
* [SliderSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderSize.html)- Specifies the size of the slider.
* [ThumbColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ThumbColor.html)- Specifies the color of the thumb.
* [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ShowTicks.html)- Specifies the visibility of the thumb.
* [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~TickFrequency.html)- Specifies the frequency of ticks.
* [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Orientation.html)- Specifies the orientation of the RangeSlider.
* [SliderMin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderMin.html) and [SliderMax](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderMax.html)- Specifies the position of right and left thumb.

This section discusses the concepts of Range Slider in the below topics:

## Setting channel color

You can set the required color for the channel over which the slider moves using [ChannelColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ChannelColor.html) property. It contains the highlight when a range is selected. In the following example, the channel color is set to Gray.

{% tabs %}

{% highlight C# %}



rangeSlider.ChannelColor = Color.DarkGray;

{% endhighlight %}

{% endtabs %}

Output

![channel color](Interactive-Features_images/Interactive-Features_img1.jpeg)





![channel color](Interactive-Features_images/Interactive-Features_img2.jpeg)



## Setting channel height

You can set the required height of the channel over which the slider moves using the [ChannelHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ChannelHeight.html) property. In the following example illustrates the change in height of the channel from 4 to 6. It is measured in pixels.

1. When the Channel height is set to 4 pixels.

   {% tabs %}

   {% highlight C# %}

		rangeSlider.ChannelHeight = 4;

   {% endhighlight %}

   {% endtabs %}




   ![channel height](Interactive-Features_images/Interactive-Features_img3.jpeg)

 
   ![channel height](Interactive-Features_images/Interactive-Features_img4.jpeg)



2. When the Channel height is set to 6 pixels.

  {% tabs %}

   {% highlight C# %}



		rangeSlider.ChannelHeight = 6;

  {% endhighlight %}

   {% endtabs %}


![channel height](Interactive-Features_images/Interactive-Features_img5.jpeg)



![channel height](Interactive-Features_images/Interactive-Features_img6.jpeg)



## Setting range color

You can set the required color for a range in the slider using the [RangeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~RangeColor.html) property. The selected range is highlighted with color chosen. In the following example, the range color is set to Green.

{% tabs %}

{% highlight C# %}

rangeSlider.RangeColor = Color.DarkGreen;

{% endhighlight %}

{% endtabs %}

![range color](Interactive-Features_images/Interactive-Features_img7.jpeg)



![range color](Interactive-Features_images/Interactive-Features_img8.jpeg)



## Reversing RangeSlider

The position of the thumbs on the RangeSlider can be reversed by setting the [RightToLeft](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_RightToLeft) property to Yes.

1. When the property is set to No.

   {% tabs %}

   {% highlight C# %}

		rangeSlider.RightToLeft=RightToLeft.No;

   {% endhighlight %}

   {% endtabs %}


   ![Reversing range slider](Interactive-Features_images/Interactive-Features_img9.jpeg)



   ![Reversing range slider](Interactive-Features_images/Interactive-Features_img10.jpeg)



2. When the property is set to Yes.

   {% tabs %}

   {% highlight C# %}



		rangeSlider.RightToLeft=RightToLeft.Yes;

   {% endhighlight %}

   {% endtabs %}


    ![Reversing range slider](Interactive-Features_images/Interactive-Features_img11.jpeg)



    ![Reversing range slider](Interactive-Features_images/Interactive-Features_img12.jpeg)



## Setting slider size

You can set the required size for the slider using the [SliderSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderSize.html) property. The height and the width of the control can be set.

1. When the slider is set to 11, 14.
   
   {% tabs %}

   {% highlight C# %}



		rangeSlider.SliderSize = new Size(11,14);

   {% endhighlight %}

   {% endtabs %}


   ![Slider size](Interactive-Features_images/Interactive-Features_img13.jpeg)



   ![Slider size](Interactive-Features_images/Interactive-Features_img14.jpeg)



2. When the slider is set to 11,18.

   {% tabs %}

   {% highlight C# %}



		rangeSlider.SliderSize = new Size(11,18);

   {% endhighlight %}

   {% endtabs %}


![Slider size](Interactive-Features_images/Interactive-Features_img15.jpeg)



![Slider size](Interactive-Features_images/Interactive-Features_img16.jpeg)



## Setting thumb color

You can set the required color for the both the thumbs on the Channel using the [ThumbColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ThumbColor.html) property.

In the following example, the thumb is set to Teal.

{% tabs %}

{% highlight C# %}

		rangeSlider.ThumbColor = Color.Teal;

{% endhighlight %}

{% endtabs %}

Background Settings

![thumb color](Interactive-Features_images/Interactive-Features_img17.jpeg)



![thumb color](Interactive-Features_images/Interactive-Features_img18.jpeg)



## Displaying ticks

Ticks are indicators placed at regular intervals on the slider for a range defined by the maximum and minimum scale. You can display ticks below the channel by setting the [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ShowTicks.html) property to `true`.

1. When the [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ShowTicks.html) property is set to `true`.
   
   {% tabs %}

   {% highlight C# %}

		rangeSlider.ShowTicks = True;

   {% endhighlight %}
   
   {% endtabs %}


   ![Show ticks](Interactive-Features_images/Interactive-Features_img19.jpeg)



   ![Show ticks](Interactive-Features_images/Interactive-Features_img20.jpeg)





2. When the [ShowTicks]([ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ShowTicks.html)) property is set to `false`.

   {% tabs %}

   {% highlight C# %}



		rangeSlider.ShowTicks = False;

   {% endhighlight %}

   {% endtabs %}


![Ticks hidden](Interactive-Features_images/Interactive-Features_img21.jpeg)



![Ticks hidden](Interactive-Features_images/Interactive-Features_img22.jpeg)



## Setting tick frequency

The ticks can be placed at required intervals by setting the [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~TickFrequency.html) property to required number. For example, if the range is set from 0-100, where minimum is set to 0 and maximum is set to 100, and the [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~TickFrequency.html) is set to 20, then Ticks will be placed at positions 0,20,40,..,100.

{% tabs %}

{% highlight C# %}

rangeSlider.TickFrequency = 3;

{% endhighlight %}

{% endtabs %}

![tick frequency](Interactive-Features_images/Interactive-Features_img23.jpeg)



![tick frequency](Interactive-Features_images/Interactive-Features_img24.jpeg)



## Setting orientation

The layout of the range slider can be defined using the [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Orientation.html) property. The orientation of the control can either be vertical or horizontal.

1. When Orientation is set to Horizontal.

   {% tabs %}

   {% highlight C# %}

		rangeSlider.Orientation=Orientation.Horizontal;

   {% endhighlight %}

   {% endtabs %}


   ![orientation](Interactive-Features_images/Interactive-Features_img25.jpeg)



   ![Horizontal orientation](Interactive-Features_images/Interactive-Features_img26.jpeg)





2. When Orientation is set to vertical.

   {% tabs %}

   {% highlight C# %}



		rangeSlider.Orientation=Orientation.Vertical;

   {% endhighlight %}

   {% endtabs %}

![Orientation](Interactive-Features_images/Interactive-Features_img27.jpeg)



![Vertical orientation](Interactive-Features_images/Interactive-Features_img28.jpeg)



## Setting SliderMin and SliderMax

This position of the right and left thumb can be set using the [SliderMin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderMin.html) and [SliderMax](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderMax.html) properties.

In the following example, the position of the right and left thumbs is set to 7,2.

{% tabs %}

{% highlight C# %}



rangeSlider.SliderMax = 7;

rangeSlider.SliderMin = 2;

{% endhighlight %}

{% endtabs %}


![Slider value](Interactive-Features_images/Interactive-Features_img29.jpeg)



![Slider value](Interactive-Features_images/Interactive-Features_img30.jpeg)



## Setting minimum and maximum values

These properties specify the [Minimum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Minimum.html) and [Maximum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Maximum.html) bounds of the RangeSlider control till which the channel extends.

In the following example the maximum bound is set to 10.

{% tabs %}

{% highlight C# %}



rangeSlider.Maximum = 20;

rangeSlider.Minimum = 0;

{% endhighlight %}

{% endtabs %}


![minimum value](Interactive-Features_images/Interactive-Features_img31.jpeg)



![maximum value](Interactive-Features_images/Interactive-Features_img32.jpeg)



## Events

* [Scroll event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Scroll_EV.html)

Occurs when the mouse moves any of the thumb over the channel.

EventHandler for Scroll event

{% tabs %}

{% highlight C# %}



rangeSlider.Scroll += new EventHandler( rangeSlider1_Scroll);

private void rangeSlider1_Scroll(object sender, EventArgs e)

{

//Code to handle the event

}

{% endhighlight %}

{% endtabs %}

* [ValueChanged event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~ValueChanged_EV.html)

Occurs when the value of SliderMin or SliderMax changes.

EventHandler for ValueChanged event

{% tabs %}

{% highlight C# %}



rangeSlider.ValueChanged += new EventHandler( rangeSlider1_ValueChanged);

private void rangeSlider1_ValueChanged(object sender, EventArgs e)

{

//Code to handle the event

}

{% endhighlight %}

{% endtabs %}