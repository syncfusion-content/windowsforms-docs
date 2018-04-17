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

* Range-Specifies the Range of the control, generally indicated by a Start and End value.
* TickFrequency-Specifies the frequency at which Ticks are to be placed.
* Minimum-Specifies the Minimum value of the Range Slider.
* Maximum-Specifies the Maximum value of the Range Slider.
* ChannelColor-Specifies the color for the channel.
* ChannelHeight-Specifies the height for the channel.
* RangeColor-Specifies the color for the range.
* RightToLeft-Allows reversal of the RangeSlider.
* SliderSize- Specifies the size of the slider.
* ThumbColor- Specifies the color of the thumb.
* ShowTicks- Specifies the visibility of the thumb.
* TickFrequency- Specifies the frequency of ticks.
* Orientation- Specifies the orientation of the RangeSlider.
* SliderMin and SliderMax- Specifies the position of right and left thumb.

This section discusses the concepts of Range Slider in the below topics:

## Setting channel color

You can set the required color for the channel over which the slider moves. It contains the highlight when a range is selected. In the following example, the channel color is set to Gray.

{% highlight C# %}



rangeSlider.ChannelColor = Color.DarkGray;

{% endhighlight %}

Output

![](Interactive-Features_images/Interactive-Features_img1.jpeg)





![](Interactive-Features_images/Interactive-Features_img2.jpeg)



## Setting channel height

You can set the required height of the channel over which the slider moves. In the following example illustrates the change in height of the channel from 4 to 6. It is measured in pixels.

1. When the Channel height is set to 4 pixels.

   {% tabs %}

   {% highlight C# %}

		rangeSlider.ChannelHeight = 4;

   {% endhighlight %}

   {% endtabs %}




   ![](Interactive-Features_images/Interactive-Features_img3.jpeg)

 
   ![](Interactive-Features_images/Interactive-Features_img4.jpeg)



2. When the Channel height is set to 6 pixels

  {% tabs %}

   {% highlight C# %}



		rangeSlider.ChannelHeight = 6;

  {% endhighlight %}

   {% endtabs %}


![](Interactive-Features_images/Interactive-Features_img5.jpeg)



![](Interactive-Features_images/Interactive-Features_img6.jpeg)



## Setting range color

You can set the required color for a range in the slider. The selected range is highlighted with color chosen. In the following example, the range color is set to Green.

{% highlight C# %}

rangeSlider.RangeColor = Color.DarkGreen;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img7.jpeg)



![](Interactive-Features_images/Interactive-Features_img8.jpeg)



## Reversing RangeSlider

The position of the thumbs on the RangeSlider can be reversed by setting the RighttoLeft property to Yes.

1. When the property is set to No.

   {% highlight C# %}

		rangeSlider.RightToLeft=RightToLeft.No;

   {% endhighlight %}


   ![](Interactive-Features_images/Interactive-Features_img9.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img10.jpeg)



2. When the property is set to Yes.



   {% highlight C# %}



		rangeSlider.RightToLeft=RightToLeft.Yes;

   {% endhighlight %}


    ![](Interactive-Features_images/Interactive-Features_img11.jpeg)



    ![](Interactive-Features_images/Interactive-Features_img12.jpeg)



## Setting slider size

You can set the required size for the slider. The height and the width of the control can be set.

1. When the slider is set to 11, 14.

   {% highlight C# %}



		rangeSlider.SliderSize = new Size(11,14);

   {% endhighlight %}


   ![](Interactive-Features_images/Interactive-Features_img13.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img14.jpeg)



2. When the slider is set to 11,18.

   {% highlight C# %}



		rangeSlider.SliderSize = new Size(11,18);

   {% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img15.jpeg)



![](Interactive-Features_images/Interactive-Features_img16.jpeg)



## Setting thumb color

You can set the required color for the both the thumbs on the Channel.

In the following example, the thumb is set to Teal.

{% highlight C# %}

		rangeSlider.ThumbColor = Color.Teal;

{% endhighlight %}

Background Settings

![](Interactive-Features_images/Interactive-Features_img17.jpeg)



![](Interactive-Features_images/Interactive-Features_img18.jpeg)



## Displaying ticks

Ticks are indicators placed at regular intervals on the slider for a range defined by the maximum and minimum scale. You can display ticks below the channel by setting the ShowTicks property to True.

1. When the ShowTicks property is set to True.

   {% highlight C# %}

		rangeSlider.ShowTicks = True;

   {% endhighlight %}



   ![](Interactive-Features_images/Interactive-Features_img19.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img20.jpeg)





2. When the ShowTicks property is set to False.

   {% highlight C# %}



		rangeSlider.ShowTicks = False;

   {% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img21.jpeg)



![](Interactive-Features_images/Interactive-Features_img22.jpeg)



## Setting tick frequency

The ticks can be placed at required intervals by setting the TickFrequency property to required number. For example, if the range is set from 0-100, where minimum is set to 0 and maximum is set to 100, and the TickFrequency is set to 20, then Ticks will be placed at positions 0,20,40,..,100.

{% highlight C# %}

rangeSlider.TickFrequency = 3;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img23.jpeg)



![](Interactive-Features_images/Interactive-Features_img24.jpeg)



## Setting orientation

The layout of the range slider can be defined using the Orientation property. The orientation of the control can either be vertical or horizontal.

1. When Orientation is set to Horizontal.

   {% highlight C# %}

		rangeSlider.Orientation=Orientation.Horizontal;

   {% endhighlight %}




   ![](Interactive-Features_images/Interactive-Features_img25.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img26.jpeg)





2. When Orientation is set to vertical.

   {% highlight C# %}



		rangeSlider.Orientation=Orientation.Vertical;

   {% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img27.jpeg)



![](Interactive-Features_images/Interactive-Features_img28.jpeg)



## Setting SliderMin and SliderMax

This position of the right and left thumb can be set using the SliderMin and SliderMax properties.

In the following example, the position of the right and left thumbs is set to 7,2.

{% highlight C# %}



rangeSlider.SliderMax = 7;

rangeSlider.SliderMin = 2;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img29.jpeg)



![](Interactive-Features_images/Interactive-Features_img30.jpeg)



## Setting minimum and maximum values

These properties specify the Minimum and Maximum bounds of the RangeSlider control till which the channel extends.

In the following example the maximum bound is set to 10.

{% highlight C# %}



rangeSlider.Maximum = 20;

rangeSlider.Minimum = 0;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img31.jpeg)



![](Interactive-Features_images/Interactive-Features_img32.jpeg)



## Events

Scroll

Occurs when the mouse moves any of the thumb over the channel.

EventHandler for Scroll event

{% highlight C# %}



rangeSlider.Scroll += new EventHandler( rangeSlider1_Scroll);

private void rangeSlider1_Scroll(object sender, EventArgs e)

{

//Code to handle the event

}

{% endhighlight %}

#### ValueChanged

Occurs when the value of SliderMin or SliderMax changes.

EventHandler for ValueChanged event



{% highlight C# %}



rangeSlider.ValueChanged += new EventHandler( rangeSlider1_ValueChanged);

private void rangeSlider1_ValueChanged(object sender, EventArgs e)

{

//Code to handle the event

}

{% endhighlight %}

