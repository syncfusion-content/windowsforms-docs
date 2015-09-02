---
layout: post
title: TrackBarEx
description: TrackBarEx
platform: Windows Forms
control: Tools 
documentation: ug
---

# TrackBarEx


The TrackBarEx is a new Office2007 control, which has a track bar or a pointer which slides between the minimum value and maximum value specified. The user can drag the track bar along the line and also, the pointer can be placed at a particular point by clicking a position inside this TrackBar. 

A TrackBarEx can be added to your form by simply dragging-and-dropping the control from the toolbox.

![](Designer_images/designer_img130.png)


![](Designer_images/designer_img131.png)



It can be created programmatically using the below code snippets.

{% highlight c# %}



private Syncfusion.Windows.Forms.Tools.TrackBarEx trackBarEx1;

this.trackBarEx1 = new Syncfusion.Windows.Forms.Tools.TrackBarEx();

this.Controls.Add(this.trackBarEx1);

{% endhighlight %}

{% highlight vbnet %}



Private trackBarEx1 As Syncfusion.Windows.Forms.Tools.TrackBarEx

Me.trackBarEx1 = New Syncfusion.Windows.Forms.Tools.TrackBarEx 

Me.Controls.Add(Me.trackBarEx1)

{% endhighlight %}

Various Features and Customization options are discussed in the following topics.

## Button, Slider and Channel Settings 

The properties which controls the size of various components of the TrackBarEx are as follows.

_Table_ _786_: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
IncreaseButtonSize</td><td>
Specifies the size of Increase button. Default value is (18, 18)</td></tr>
<tr>
<td>
DecreaseButtonSize</td><td>
Specifies the size of Decrease button. Default value is (18, 18)</td></tr>
<tr>
<td>
SliderSize</td><td>
Specifies the size of the slider. Default value is (11, 14).</td></tr>
<tr>
<td>
ChannelHeight</td><td>
Specifies the height of the channel. Default value is 4.</td></tr>
</table>
### Button Appearance

The below properties will let you control the appearance of the Increase, Decrease and slider buttons.

_Table_ _787_: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ShowButton</td><td>
Specifies whether to show the Increase and Decrease buttons.</td></tr>
<tr>
<td>
ButtonColor</td><td>
Sets the color for the buttons and the slider.</td></tr>
<tr>
<td>
HighlightedButtonColor</td><td>
Sets the color for the buttons and the slider, when they are highlighted.</td></tr>
<tr>
<td>
PushedButtonEndColor</td><td>
Sets the color of the buttons and the slider, when they are pushed.</td></tr>
</table>


{% highlight c# %}



this.trackBarEx1.ShowButtons = true;

this.trackBarEx1.ButtonColor = System.Drawing.Color.DodgerBlue;

this.trackBarEx1.HighlightedButtonColor = System.Drawing.Color.AliceBlue;

this.trackBarEx1.PushedButtonEndColor = System.Drawing.Color.OrangeRed;

{% endhighlight %}

{% highlight vbnet %}



Me.trackBarEx1.ShowButtons = True 

Me.trackBarEx1.ButtonColor = System.Drawing.Color.DodgerBlue 

Me.trackBarEx1.HighlightedButtonColor = System.Drawing.Color.AliceBlue

Me.trackBarEx1.PushedButtonEndColor = System.Drawing.Color.OrangeRed

{% endhighlight %}

![](Designer_images/designer_img132.png)

![](Designer_images/designer_img133.png)



## TrackBar Appearance

### FocusRectangle

A focus rectangle for the TrackBarEx control can be shown or hidden using ShowFocusRect property.

![](Designer_images/designer_img134.png)




### Gradient Start and End Color

By default, the TrackBarEx control has a gradient appearance. The start color and end color for this gradient appearance can be specified using TrackBarGradientStart and TrackBarGradientEnd properties.

{% highlight c# %}



this.trackBarEx1.TrackBarGradientEnd = System.Drawing.Color.CadetBlue;

this.trackBarEx1.TrackBarGradientStart = System.Drawing.Color.MintCream;

{% endhighlight %}

{% highlight vbnet %}



Me.trackBarEx1.TrackBarGradientEnd = System.Drawing.Color.CadetBlue

Me.trackBarEx1.TrackBarGradientStart = System.Drawing.Color.MintCream

{% endhighlight %}

![](Designer_images/designer_img135.png)



The control can be given a transparent background by enabling the Transparent property.

{% highlight c# %}



this.trackBarEx1.Transparent = true;

{% endhighlight %}

{% highlight vbnet %}

Me.trackBarEx1.Transparent = True

{% endhighlight %}

![](Designer_images/designer_img136.png)



### TrackBarEx Orientation

This control has options for vertical and horizontal orientation.

{% highlight c# %}



//To set the control to be vertically oriented

this.trackBarEx1.Orientation = Orientation.Vertical;

//To set the control to be horizontally oriented

this.trackBarEx1.Orientation = Orientation.Horizontal;  

{% endhighlight %}

{% highlight vbnet %}



'To set the control to be vertically oriented

Me.trackBarEx1.Orientation = Orientation.Vertical

'To set the control to be horizontally oriented

Me.trackBarEx1.Orientation = Orientation.Horizontal

{% endhighlight %}

![](Designer_images/designer_img137.png)



## TrackBar Value

The TrackBarEx control slides between the minimum and maximum values, which are specified in Minimum and Maximum properties. The properties with description are listed in the below table.

_Table_ _788_: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Minimum</td><td>
Specifies the minimum value of the trackbar. Default is 10.</td></tr>
<tr>
<td>
Maximum</td><td>
Specifies the maximum value of the trackbar. Default is 20.</td></tr>
<tr>
<td>
Value</td><td>
Specifies the value of the trackbar position. i.e, slider position. Default is 5.</td></tr>
<tr>
<td>
SmallChange</td><td>
Specifies the small change of Trackbar value. Default is 1. </td></tr>
<tr>
<td>
LargeChange</td><td>
Specifies the large change of Trackbar value. Default is 5.</td></tr>
<tr>
<td>
TimeInterval</td><td>
Specifies the interval for the timer. Default is 100.</td></tr>
</table>


{% highlight c# %}



this.trackBarEx1.Minimum = 10;

this.trackBarEx1.Maximum = 25;

this.trackBarEx1.Value = 5;

this.trackBarEx1.SmallChange = 5;

this.trackBarEx1.LargeChange = 15;

this.trackBarEx1.TimerInterval = 50;

{% endhighlight %}

{% highlight vbnet %}



Me.trackBarEx1.Minimum = 10

Me.trackBarEx1.Maximum = 30

Me.trackBarEx1.Value = 5

Me.trackBarEx1.SmallChange = 5

Me.trackBarEx1.LargeChange = 15

Me.trackBarEx1.TimerInterval = 50

{% endhighlight %}

Following are the methods for the TrackBarEx control which gives the respective results based on SmallChange and LargeChange properties.

_Table_ _789_: Property Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
LargeIncrease</td><td>
Increases the value by large change specified in LargeChange property.</td></tr>
<tr>
<td>
LargeDecrease</td><td>
Decreases the value by large change specified in LargeChange property.</td></tr>
<tr>
<td>
SmallDecrease</td><td>
Decreases the value by small change specified in SmallChange property.</td></tr>
<tr>
<td>
SmallIncrease</td><td>
Increases the value by small change specified in SmallChange property.</td></tr>
</table>

## TrackBarEx Event

Scroll event of the TrackBarEx will be handled whenever the user moves the slider.

{% highlight c# %}



private void trackBarEx1_Scroll(object sender, EventArgs e)

{

    this.trackBarEx1.ButtonColor = System.Drawing.Color.OrangeRed;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub trackBarEx1_Scroll(ByVal sender As Object, ByVal e As EventArgs)

    Me.trackBarEx1.ButtonColor = System.Drawing.Color.OrangeRed

End Sub

{% endhighlight %}

![](Designer_images/designer_img138.png)



## Frequently Asked Questions

### How to customize the appearance of TrackBarEx?

The TrackBarEx control appearance can be customized as like in Win 8 application. You can achieve this using the following code example.



{% highlight c# %}

            this.trackBarEx1.Style = Syncfusion.Windows.Forms.Tools.TrackBarEx.Theme.Metro;            

            this. trackBarEx1.ChannelHeight = 8;

            this. trackBarEx1.SliderSize = new Size(12, 12);    

{% endhighlight %}

{% highlight vbnet %}

            Me.TrackBarEx1.Style = TrackBarEx.Theme.Metro           

            Me.TrackBarEx1.ChannelHeight = 8

            Me.TrackBarEx1.SliderSize = New Size(12, 12)    

{% endhighlight %}

![C:/Users/ashwini/Desktop/Untitled1.png](Office-Controls_images/Office-Controls_img197.png)

![](Designer_images/designer_img139.png)
