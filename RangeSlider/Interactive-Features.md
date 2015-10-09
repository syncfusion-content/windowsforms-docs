---
layout: post
title: Interactive-Features | WindowsForms | Syncfusion
description: interactive features
platform: WindowsForms
control: RangeSlider 
documentation: ug
---

# Interactive Features

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
* TickFrquency- Specifies the frequency of ticks.
* Orientation- Specifies the orientation of the RangeSlider.
* SliderMin and SliderMax- Specifies the position of right and left thumb.

This section discusses the concepts of Range Slider in the below topics:

## Setting Channel Color

You can set the required color for the channel over which the slider moves. It contains the highlight when a range is selected. In the following example, the channel color is set to Gray.

The following code snippet illustrates the same.

{% highlight c# %}



rangeSlider.ChannelColor = Color.DarkGray;

{% endhighlight %}

Output

![](Interactive-Features_images/Interactive-Features_img1.jpeg)





![](Interactive-Features_images/Interactive-Features_img2.jpeg)



## Setting Channel Height

You can set the required height of the channel over which the slider moves. In the following example illustrates the change in height of the channel from 4 to 6. It is measured in pixels.

The following code snippet illustrates the same.

1. When the Channel height is set to 4 pixels.

   ~~~ cs

		rangeSlider.ChannelHeight = 4;

   ~~~
   {:.prettyprint }




   ![](Interactive-Features_images/Interactive-Features_img3.jpeg)

 
   ![](Interactive-Features_images/Interactive-Features_img4.jpeg)



2. When the Channel height is set to 6 pixels

   ~~~ cs



		rangeSlider.ChannelHeight = 6;

   ~~~
   {:.prettyprint }


![](Interactive-Features_images/Interactive-Features_img5.jpeg)



![](Interactive-Features_images/Interactive-Features_img6.jpeg)



## Setting Range Color

You can set the required color for a range in the slider. The selected range is highlighted with color chosen. In the following example, the range color is set to Green.

The following code snippet illustrates the same.

{% highlight c# %}

rangeSlider.RangeColor = Color.DarkGreen;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img7.jpeg)



![](Interactive-Features_images/Interactive-Features_img8.jpeg)



## Reversing RangeSlider 

The position of the thumbs on the RangeSlider can be reversed by setting the RighttoLeft property to Yes. The following example illustrates the same.

1. When the property is set to No.

   ~~~ cs

		rangeSlider.RightToLeft=RightToLeft.No;

   ~~~
   {:.prettyprint }


   ![](Interactive-Features_images/Interactive-Features_img9.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img10.jpeg)



2. When the property is set to Yes.



   ~~~ cs



		rangeSlider.RightToLeft=RightToLeft.Yes;

   ~~~
   {:.prettyprint }


    ![](Interactive-Features_images/Interactive-Features_img11.jpeg)



    ![](Interactive-Features_images/Interactive-Features_img12.jpeg)



## Setting Slider Size

You can set the required size for the slider. The height and the width of the control can be set. 

The following example illustrates the same. 

1. When the slider is set to 11, 14.

   ~~~ cs



		rangeSlider.SliderSize = new Size(11,14);

   ~~~
   {:.prettyprint }


   ![](Interactive-Features_images/Interactive-Features_img13.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img14.jpeg)



2. When the slider is set to 11,18.

   ~~~ cs



		rangeSlider.SliderSize = new Size(11,18);

   ~~~
   {:.prettyprint }


![](Interactive-Features_images/Interactive-Features_img15.jpeg)



![](Interactive-Features_images/Interactive-Features_img16.jpeg)



## Setting Thumb Color

You can set the required color for the both the thumbs on the Channel. 

In the following example, the thumb is set to Teal.

{% highlight c# %}

		rangeSlider.ThumbColor = Color.Teal;

{% endhighlight %}

rangeSlider.ThumbColor = Color.Teal;



Background Settings

![](Interactive-Features_images/Interactive-Features_img17.jpeg)



![](Interactive-Features_images/Interactive-Features_img18.jpeg)



## Displaying Ticks

Ticks are indicators placed at regular intervals on the slider for a range defined by the maximum and minimum scale. You can display ticks below the channel by setting the ShowTicks property to True. 

In the following example illustrates the same.

1. When the ShowTicks property is set to True.

   ~~~ cs

		rangeSlider.ShowTicks = True;

   ~~~
   {:.prettyprint }



   ![](Interactive-Features_images/Interactive-Features_img19.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img20.jpeg)





2. When the ShowTicks property is set to False.

   ~~~ cs



		rangeSlider.ShowTicks = False;

   ~~~
   {:.prettyprint }


![](Interactive-Features_images/Interactive-Features_img21.jpeg)



![](Interactive-Features_images/Interactive-Features_img22.jpeg)



## Setting Tick Frequency

The ticks can be placed at required intervals by setting the TickFrequency property to required number. For example, if the range is set from 0-100, where minimum is set to 0 and maximum is set to 100, and the TickFrequency is set to 20, then Ticks will be placed at positions 0,20,40,..,100.

The following example illustrates the same.

{% highlight c# %}

rangeSlider.TickFrequency = 3;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img23.jpeg)



![](Interactive-Features_images/Interactive-Features_img24.jpeg)



## Setting Orientation

The layout of the range slider can be defined using the Orientation property. The orientation of the control can either be vertical or horizontal.

1. When Orientation is set to Horizontal.

   ~~~ cs

		rangeSlider.Orientation=Orientation.Horizontal;

   ~~~
   {:.prettyprint }




   ![](Interactive-Features_images/Interactive-Features_img25.jpeg)



   ![](Interactive-Features_images/Interactive-Features_img26.jpeg)





2. When Orientation is set to vertical.

   ~~~ cs



		rangeSlider.Orientation=Orientation.Vertical;

   ~~~
   {:.prettyprint }


![](Interactive-Features_images/Interactive-Features_img27.jpeg)



![](Interactive-Features_images/Interactive-Features_img28.jpeg)



## Setting SliderMin and SliderMax

This position of the right and left thumb can be set using the SliderMin and SliderMax properties.

In the following example, the position of the right and left thumbs is set to 7,2.

{% highlight c# %}



rangeSlider.SliderMax = 7;

rangeSlider.SliderMin = 2;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img29.jpeg)



![](Interactive-Features_images/Interactive-Features_img30.jpeg)



## Setting Minimum and Maximum values

These properties specify the Minimum and Maximum bounds of the RangeSlider control till which the channel extends.

In the following example the maximum bound is set to 10. 

{% highlight c# %}



rangeSlider.Maximum = 20;

rangeSlider.Minimum = 0;

{% endhighlight %}


![](Interactive-Features_images/Interactive-Features_img31.jpeg)



![](Interactive-Features_images/Interactive-Features_img32.jpeg)



## Events

Scroll

Occurs when the mouse moves any of the thumb over the channel.

EventHandler for Scroll event

{% highlight c# %}



rangeSlider.Scroll += new EventHandler( rangeSlider1_Scroll);

private void rangeSlider1_Scroll(object sender, EventArgs e)

{

//Code to handle the event

}

{% endhighlight %}

#### ValueChanged

Occurs when the value of SliderMin or SliderMax changes.

EventHandler for ValueChanged event



{% highlight c# %}



rangeSlider.ValueChanged += new EventHandler( rangeSlider1_ValueChanged);

private void rangeSlider1_ValueChanged(object sender, EventArgs e)

{

//Code to handle the event

}

{% endhighlight %}

