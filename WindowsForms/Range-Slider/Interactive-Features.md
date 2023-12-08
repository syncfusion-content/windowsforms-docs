---
layout: post
title: Interactive Features in Windows Forms Range Slider | Syncfusion
description: Learn about Interactive Features support in Syncfusion Windows Forms Range Slider control and more details.
platform: WindowsForms
control: RangeSlider 
documentation: ug
---

# Interactive Features in Windows Forms Range Slider

The following are the key interactive features of the Range Slider:

* [Range](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Range)-Specifies the Range of the control, generally indicated by a Start and End value.
* [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_TickFrequency)-Specifies the frequency at which Ticks are to be placed.
* [Minimum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Minimum)-Specifies the Minimum value of the Range Slider.
* [Maximum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Maximum)-Specifies the Maximum value of the Range Slider.
* [ChannelColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ChannelColor)-Specifies the color for the channel.
* [ChannelHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ChannelHeight)-Specifies the height for the channel.
* [RangeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_RangeColor)-Specifies the color for the range.
* [RightToLeft](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_RightToLeft)-Allows reversal of the RangeSlider.
* [SliderSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_SliderSize)- Specifies the size of the slider.
* [ThumbColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ThumbColor)- Specifies the color of the thumb.
* [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ShowTicks)- Specifies the visibility of the thumb.
* [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_TickFrequency)- Specifies the frequency of ticks.
* [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Orientation)- Specifies the orientation of the RangeSlider.
* [SliderMin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_SliderMin) and [SliderMax](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_SliderMax)- Specifies the position of right and left thumb.

This section discusses the concepts of Range Slider in the below topics:

## Setting channel color

You can set the required color for the channel over which the slider moves using [ChannelColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ChannelColor) property. It contains the highlight when a range is selected. In the following example, the channel color is set to Gray.

{% tabs %}

{% highlight C# %}



rangeSlider.ChannelColor = Color.DarkGray;

{% endhighlight %}

{% endtabs %}

Output

![channel color](Interactive-Features_images/Interactive-Features_img1.jpeg)





![channel color](Interactive-Features_images/Interactive-Features_img2.jpeg)



## Setting channel height

You can set the required height of the channel over which the slider moves using the [ChannelHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ChannelHeight) property. In the following example illustrates the change in height of the channel from 4 to 6. It is measured in pixels.

1. When the Channel height is set to 4 pixels.
   
   {% capture codesnippet1 %}
   {% tabs %}

   {% highlight C# %}

		rangeSlider.ChannelHeight = 4;

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet1 | OrderList_Indent_Level_1 }}



   ![channel height](Interactive-Features_images/Interactive-Features_img3.jpeg)

 
   ![channel height](Interactive-Features_images/Interactive-Features_img4.jpeg)



2. When the Channel height is set to 6 pixels.

  {% capture codesnippet2 %}
  {% tabs %}

   {% highlight C# %}



		rangeSlider.ChannelHeight = 6;

  {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet2 | OrderList_Indent_Level_1 }}


![channel height](Interactive-Features_images/Interactive-Features_img5.jpeg)



![channel height](Interactive-Features_images/Interactive-Features_img6.jpeg)



## Setting range color

You can set the required color for a range in the slider using the [RangeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_RangeColor) property. The selected range is highlighted with color chosen. In the following example, the range color is set to Green.

{% tabs %}

{% highlight C# %}

rangeSlider.RangeColor = Color.DarkGreen;

{% endhighlight %}

{% endtabs %}

![range color](Interactive-Features_images/Interactive-Features_img7.jpeg)



![range color](Interactive-Features_images/Interactive-Features_img8.jpeg)



## Reversing RangeSlider

The position of the thumbs on the RangeSlider can be reversed by setting the [RightToLeft](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_RightToLeft) property to Yes.

1. When the property is set to No.

   {% capture codesnippet3 %}
   {% tabs %}

   {% highlight C# %}

		rangeSlider.RightToLeft=RightToLeft.No;

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet3 | OrderList_Indent_Level_1 }}


   ![Reversing range slider](Interactive-Features_images/Interactive-Features_img9.jpeg)



   ![Reversing range slider](Interactive-Features_images/Interactive-Features_img10.jpeg)



2. When the property is set to Yes.

   {% capture codesnippet4 %}
   {% tabs %}

   {% highlight C# %}



		rangeSlider.RightToLeft=RightToLeft.Yes;

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet4 | OrderList_Indent_Level_1 }}

    ![Reversing range slider](Interactive-Features_images/Interactive-Features_img11.jpeg)



    ![Reversing range slider](Interactive-Features_images/Interactive-Features_img12.jpeg)



## Setting slider size

You can set the required size for the slider using the [SliderSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_SliderSize) property. The height and the width of the control can be set.

1. When the slider is set to 11, 14.
   
   {% capture codesnippet5 %}
   {% tabs %}

   {% highlight C# %}



		rangeSlider.SliderSize = new Size(11,14);

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet5 | OrderList_Indent_Level_1 }}


   ![Slider size](Interactive-Features_images/Interactive-Features_img13.jpeg)



   ![Slider size](Interactive-Features_images/Interactive-Features_img14.jpeg)



2. When the slider is set to 11,18.

   {% capture codesnippet6 %}
   {% tabs %}

   {% highlight C# %}



		rangeSlider.SliderSize = new Size(11,18);

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet6 | OrderList_Indent_Level_1 }}


![Slider size](Interactive-Features_images/Interactive-Features_img15.jpeg)



![Slider size](Interactive-Features_images/Interactive-Features_img16.jpeg)



## Setting thumb color

You can set the required color for the both the thumbs on the Channel using the [ThumbColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ThumbColor) property.

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

Ticks are indicators placed at regular intervals on the slider for a range defined by the maximum and minimum scale. You can display ticks below the channel by setting the [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ShowTicks) property to `true`.

1. When the [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ShowTicks) property is set to `true`.
   
   {% capture codesnippet7 %}
   {% tabs %}

   {% highlight C# %}

		rangeSlider.ShowTicks = True;

   {% endhighlight %}
   
   {% endtabs %}
    {% endcapture %}
   {{ codesnippet7 | OrderList_Indent_Level_1 }}


   ![Show ticks](Interactive-Features_images/Interactive-Features_img19.jpeg)



   ![Show ticks](Interactive-Features_images/Interactive-Features_img20.jpeg)





2. When the [ShowTicks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_ShowTicks) property is set to `false`.

   {% capture codesnippet8 %}
   {% tabs %}

   {% highlight C# %}



		rangeSlider.ShowTicks = False;

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet8 | OrderList_Indent_Level_1 }}


![Ticks hidden](Interactive-Features_images/Interactive-Features_img21.jpeg)



![Ticks hidden](Interactive-Features_images/Interactive-Features_img22.jpeg)



## Setting tick frequency

The ticks can be placed at required intervals by setting the [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_TickFrequency) property to required number. For example, if the range is set from 0-100, where minimum is set to 0 and maximum is set to 100, and the [TickFrequency](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_TickFrequency) is set to 20, then Ticks will be placed at positions 0,20,40,..,100.

{% tabs %}

{% highlight C# %}

rangeSlider.TickFrequency = 3;

{% endhighlight %}

{% endtabs %}

![tick frequency](Interactive-Features_images/Interactive-Features_img23.jpeg)



![tick frequency](Interactive-Features_images/Interactive-Features_img24.jpeg)



## Setting orientation

The layout of the range slider can be defined using the [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Orientation) property. The orientation of the control can either be vertical or horizontal.

1. When Orientation is set to Horizontal.

   {% capture codesnippet9 %}
   {% tabs %}

   {% highlight C# %}

		rangeSlider.Orientation=Orientation.Horizontal;

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet9 | OrderList_Indent_Level_1 }}


   ![orientation](Interactive-Features_images/Interactive-Features_img25.jpeg)



   ![Horizontal orientation](Interactive-Features_images/Interactive-Features_img26.jpeg)





2. When Orientation is set to vertical.

   {% capture codesnippet10 %}
   {% tabs %}

   {% highlight C# %}



		rangeSlider.Orientation=Orientation.Vertical;

   {% endhighlight %}

   {% endtabs %}
   {% endcapture %}
   {{ codesnippet10 | OrderList_Indent_Level_1 }}

![Orientation](Interactive-Features_images/Interactive-Features_img27.jpeg)



![Vertical orientation](Interactive-Features_images/Interactive-Features_img28.jpeg)



## Setting SliderMin and SliderMax

This position of the right and left thumb can be set using the [SliderMin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_SliderMin) and [SliderMax](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_SliderMax) properties.

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

These properties specify the [Minimum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Minimum) and [Maximum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html#Syncfusion_Windows_Forms_Tools_RangeSlider_Maximum) bounds of the RangeSlider control till which the channel extends.

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

* [Scroll event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html)

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

* [ValueChanged event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RangeSlider.html)

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
