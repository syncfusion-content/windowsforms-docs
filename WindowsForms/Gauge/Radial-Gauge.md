---
layout: post
title: Radial-Gauge | WindowsForms | Syncfusion
description: radial gauge
platform: WindowsForms
control: Gauge
documentation: ug
---

# Radial gauge

The RadialGauge control can be used for representing a range of values in circular form. It can be used to create sophisticated dashboards, clocks, industrial equipment, medical equipment, more.

## Real world scenarios

A radial gauge evaluates the values of scales and presents them in a radial manner. Radial Gauge enables you to quickly build high quality dashboard, process control, gadget and clocks. Radial gauges consist of important internal domains to present data in a more sophisticated way.

The best example of a radial gauge is a speedometer. The speedometer can be designed to be placed in a racing game application, denoting the speed of a vehicle.



![](Radial-Gauge_images/Radial-Gauge_img1.png)



## Getting started

This section provides information about radial gauges for developers who are new to the Gauge control.

The Gauge control is built on Windows Forms programming, which is extended to support a broad set of dashboard development features including resources, controls, graphics, layout, and data binding.

### Creating a radial gauge

Radial gauges can be enhanced with a circle frame or semi-circle frame. This section covers how to include a radial gauge in an application.

#### Through designer

Drag the RadialGauge control from the toolbox onto the form.



![C:/Users/Arun/Desktop/Gauge_img/ToolBox.png](Radial-Gauge_images/Radial-Gauge_img2.png)





![](Radial-Gauge_images/Radial-Gauge_img3.png)



As soon as the control is dropped, it will be loaded with its default style. 

#### Through code

{% tabs %}

{% highlight C# %}

 private Syncfusion.Windows.Forms.Gauge.RadialGauge radialGauge1;

 this.radialGauge1 = new Syncfusion.Windows.Forms.Gauge.RadialGauge();

 this.radialGauge1.Name = "radialGauge1";

 this.radialGauge1.Size = new System.Drawing.Size(230, 230);                 this.Controls.Add(this.radialGauge1);

{% endhighlight %}



{% highlight VB %}



Private radialGauge1 As Syncfusion.Windows.Forms.Gauge.RadialGauge

Me.radialGauge1 = New Syncfusion.Windows.Forms.Gauge.RadialGauge()

Me.radialGauge1.Name = "radialGauge1"

Me.radialGauge1.Size = New System.Drawing.Size(230, 230)

Me.Controls.Add(Me.radialGauge1)


{% endhighlight %}

{% endtabs %}

### Elaborate structure of the control

The RadialGauge control includes the following elements: Scale Label, Needle, Gauge Value, and Background Frame. All the elements are optional for displaying the Gauge control.

#### Feature summary

Here is a brief overview of various features of the RadialGauge control.

* Scales - The scale value can be customized to be displayed within defined limits.
* Frame types - Allows you to specify the radial built-in frame style, such as full circle or half circle.
* Pointers - Provide complete support for pointers to point the value.
* Range - Full-fledged range support.
* Image and Labels - Used to customize the appearance of gauge pointer values with user-specified colors and alignment.

### Concepts and features


This section illustrates the features of Radial Gauge with images and sample code. It contains the following topics:

* Radial Gauge Frames
* Scales
* Ticks
* Needles
* Ranges
* Scaling Divisions

#### Radial gauge frame


The frame defines the frame types of radial gauges. Frames can be applied using the FrameType property. The RadialGauge control contains two frame types:

* Full Circle
* Half Circle

<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
FrameType</td><td>
Enum</td><td>
Gets or sets the frame type.</td></tr>
<tr>
<td>
ShowBackgroundFrame</td><td>
Boolean</td><td>
Gets or sets the visibility of the background frame.</td></tr>
<tr>
<td>
BackgroundGradientStartColor </td><td>
Color</td><td>
Gets or sets the gradient start color for the gauge background.</td></tr>
<tr>
<td>
BackgroundGradientEndColor</td><td>
Color</td><td>
Gets or sets the gradient end color for the gauge background.</td></tr>
<tr>
<td>
InnerFrameGradientStartColor </td><td>
Color</td><td>
Gets or sets the gradient start color for the inner frame.</td></tr>
<tr>
<td>
InnerFrameGradientEndColor</td><td>
Color</td><td>
Gets or sets the gradient end color for the inner frame.</td></tr>
<tr>
<td>
OuterFrameGradientStartColor</td><td>
Color</td><td>
Gets or sets the gradient end color for the outer frame.</td></tr>
<tr>
<td>
OuterFrameGradientEndColor</td><td>
Color</td><td>
Gets or sets the gradient end color for the outer frame.</td></tr>
<tr>
<td>
GaugeArcColor</td><td>
Color</td><td>
Gets or sets the arc color of the gauge.</td></tr>
<tr>
<td>
GaugeLabelColor</td><td>
Color</td><td>
Gets or sets the gauge label color.</td></tr>
<tr>
<td>
GaugeValueColor</td><td>
Color</td><td>
Gets or sets the gauge value color.</td></tr>
<tr>
<td>
ShowGaugeValue</td><td>
Boolean</td><td>
Gets or sets the gauge value visibility.</td></tr>
</table>


![](Radial-Gauge_images/Radial-Gauge_img4.png)





![](Radial-Gauge_images/Radial-Gauge_img5.png)



{% tabs %}

{% highlight C# %}

this.radialGauge1.FrameType = Syncfusion.Windows.Forms.Gauge.FrameType.HalfCircle;

{% endhighlight %}


{% highlight VB %}

Me.radialGauge1.FrameType = Syncfusion.Windows.Forms.Gauge.FrameType.HalfCircle

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img6.png)



{% tabs %}

{% highlight C# %}

 this.radialGauge1.ShowBackgroundFrame = false;

{% endhighlight %}



{% highlight VB %}

Me.radialGauge1.ShowBackgroundFrame = false;

{% endhighlight %}

{% endtabs %}

### Scales

Scales are used to control element placement and value ranges.

#### Customizing scales

You can customize scales added to the Radial Gauge using the properties listed in the following table:


<table>
<tr>
<td>
Property</td><td>
Type</td><td>
Description</td></tr>
<tr>
<td>
ShowScaleLabel</td><td>
Boolean</td><td>
Gets or sets the scale label visibility.</td></tr>
<tr>
<td>
ScaleLabelColor</td><td>
Color</td><td>
Gets or sets the scale label color of the gauge.</td></tr>
<tr>
<td>
LabelPlacement</td><td>
Enum</td><td>
Gets or sets whether to place the ticks inside or outside the arc.</td></tr>
<tr>
<td>
TextOrientation</td><td>
Enum</td><td>
Gets or sets the text orientation layout. </td></tr>
</table>


![](Radial-Gauge_images/Radial-Gauge_img7.png)





![](Radial-Gauge_images/Radial-Gauge_img8.png)




The following code sample illustrates how to place labels in the RadialGauge control.

{% tabs %}

{% highlight C# %}

this.radialGauge1.LabelPlacement = Syncfusion.Windows.Forms.Gauge.LabelPlacement.Outside;

this.radialGauge1.TextOrientation = Syncfusion.Windows.Forms.Gauge.TextOrientation.SlideOver;

{% endhighlight %}



{% highlight VB %}

Me.radialGauge1.LabelPlacement = Syncfusion.Windows.Forms.Gauge.LabelPlacement.Outside

Me.radialGauge1.TextOrientation = Syncfusion.Windows.Forms.Gauge.TextOrientation.SlideOver

{% endhighlight %}

{% endtabs %}

### Ticks

Two types of ticks can be added to the RadialGauge control scale. Major tick marks are the primary scale indicators. Minor tick marks and Inter tick marks are the secondary scale indicators that fall between the major ticks. The ticks can be placed by setting the TickPlacement property. Ticks can be placed inside or outside the arc.

The following table lists the important properties that can be used to customize the radial tick marks. This is done to represent the scale with meaningful markers and labels.

<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
TickPlacement</td><td>
Enum</td><td>
Gets or sets whether to place the tick marks inside or outside the arc.</td></tr>
<tr>
<td>
MajorTickMarkColor</td><td>
Color</td><td>
Gets or sets the color of the major tick marks.</td></tr>
<tr>
<td>
MajorTickMarkHeight</td><td>
Integer</td><td>
Gets or sets the height of the major tick marks.</td></tr>
<tr>
<td>
MinorTickMarkColor</td><td>
Color</td><td>
Gets or sets the color of the minor tick marks.</td></tr>
<tr>
<td>
MinorTickMarkHeight</td><td>
Integer</td><td>
Gets or sets the height of the minor tick marks.</td></tr>
<tr>
<td>
InterLinesColor</td><td>
Color</td><td>
Gets or sets the color of the InterLines of the gauge.</td></tr>
<tr>
<td>
MinorInnerLinesHeight</td><td>
Integer</td><td>
Gets or sets the line height of the minor inner lines.</td></tr>
</table>


The following code example illustrates how to add major and minor ticks to the radial scale.

{% tabs %}

{% highlight C# %}

this.radialGauge1.TickPlacement = Syncfusion.Windows.Forms.Gauge.TickPlacement.OutSide;

this.radialGauge1.MajorTickMarkColor = System.Drawing.Color.White;

this.radialGauge1.MinorTickMarkColor = System.Drawing.Color.White;

this.radialGauge1.InterLinesColor = System.Drawing.Color.White;

this.radialGauge1.MinorTickMarkHeight = 6;

this.radialGauge1.MajorTickMarkHeight = 12;

this.radialGauge1.MinorInnerLinesHeight = 6;


{% endhighlight %}


{% highlight VB %}

Me.radialGauge1.TickPlacement = Syncfusion.Windows.Forms.Gauge.TickPlacement.OutSide

Me.radialGauge1.MajorTickMarkColor = System.Drawing.Color.White

Me.radialGauge1.MinorTickMarkColor = System.Drawing.Color.White

Me.radialGauge1.InterLinesColor = System.Drawing.Color.White

Me.radialGauge1.MinorTickMarkHeight = 6

Me.radialGauge1.MajorTickMarkHeight = 12

Me.radialGauge1.MinorInnerLinesHeight = 6

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img9.png)





![](Radial-Gauge_images/Radial-Gauge_img10.png)



### Needles

You can easily customize the style of the needle and the positions of the sub elements within the RadialGauge through the following enumerations.


<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
NeedleColor</td><td>
Color</td><td>
Gets or sets the gauge needle color.</td></tr>
<tr>
<td>
NeedleStyle</td><td>
Enum</td><td>
Gets or sets the needle style.</td></tr>
<tr>
<td>
ShowNeedle</td><td>
Boolean</td><td>
Gets or sets the needle visibility.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.radialGauge1.ShowNeedle = true;

this.radialGauge1.NeedleColor = System.Drawing.Color.Black;

this.radialGauge1.NeedleStyle = Syncfusion.Windows.Forms.Gauge.NeedleStyle.Advanced;


{% endhighlight %}


{% highlight VB %}

Me.radialGauge1.ShowNeedle = True

Me.radialGauge1.NeedleColor = System.Drawing.Color.Black

Me.radialGauge1.NeedleStyle = Syncfusion.Windows.Forms.Gauge.NeedleStyle.Advanced

{% endhighlight %}

{% endtabs %}

### Ranges

Ranges are objects that highlight a range of values and can display different ranges in different colors. Ranges can be customized using various attributes such as range placement, height, color of the range, and so on. All the available attributes are listed in the following table:


<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
Start value</td><td>
Integer</td><td>
Specify the start value of the range. Default value is set to 0.</td></tr>
<tr>
<td>
End value</td><td>
Integer</td><td>
Specify the end value of the range. Default value is set to 0.</td></tr>
<tr>
<td>
RangePlacement</td><td>
Enum</td><td>
Using this attribute, the range can be positioned in two areas along the radial scale. It includes the following options:
<ul><li> Inside</li>
<li> Outside</li></ul><br> The default value is Inside.</td></tr>
<tr>
<td>
Height</td><td>
Integer</td><td>
Specify the height of the range. Default value is set to 5.</td></tr>
<tr>
<td>
Color</td><td>
Color</td><td>
Gets or sets the color of the range.</td></tr>
</table>


The following code sample illustrates how to add ranges to the radial gauge:

{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Gauge.Range range1 = new Syncfusion.Windows.Forms.Gauge.Range();

range1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(225)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));

            range1.EndValue = 0F;

            range1.Height = 5;

            range1.InRange = false;

            range1.Name = "GaugeRange1";

            range1.RangePlacement = Syncfusion.Windows.Forms.Gauge.TickPlacement.Inside;

            range1.StartValue = 0F;

            this.radialGauge1.Ranges.Add(range1);


{% endhighlight %}


{% highlight VB %}

Dim range1 As New Syncfusion.Windows.Forms.Gauge.Range()

range1.Color = System.Drawing.Color.FromArgb(CInt(CByte(225)), CInt(CByte(128)), CInt(CByte(128)))

range1.EndValue = 0F

range1.Height = 5

range1.InRange = False

range1.Name = "GaugeRange1"

range1.RangePlacement = Syncfusion.Windows.Forms.Gauge.TickPlacement.Inside

range1.StartValue = 0F

Me.radialGauge1.Ranges.Add(range1)

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img11.png)





![](Radial-Gauge_images/Radial-Gauge_img12.png)



### Scaling divisions

The Gauge control for Windows Forms includes support for customizing the number of major tick lines and number of minor tick lines using the Major Difference and Minor Difference. It also provides support to customize the number of tick lines using MaximumValue and MinimumValue.


<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
MinimumValue </td><td>
Float</td><td>
Gets or sets the minimum value for the radial scale. Default value is set to 0.</td></tr>
<tr>
<td>
MaximumValue </td><td>
Float</td><td>
Gets or sets the maximum value for the radial scale. Default value is set to 120.</td></tr>
<tr>
<td>
MajorDifference</td><td>
Float</td><td>
Gets or sets the major difference value.</td></tr>
<tr>
<td>
MinorDifference</td><td>
Float</td><td>
Gets or sets the minor difference value.</td></tr>
</table>

The following code sample illustrates how to use the above properties in the RadialGauge:

{% tabs %}

{% highlight C# %}



this.radialGauge1.MajorDifference = 20F;

this.radialGauge1.MaximumValue = 120F;

this.radialGauge1.MinimumValue = 0F;

this.radialGauge1.MinorDifference = 2F;

{% endhighlight %}

{% highlight VB %}


Me.radialGauge1.MajorDifference = 20F

Me.radialGauge1.MaximumValue = 120F

Me.radialGauge1.MinimumValue = 0F

Me.radialGauge1.MinorDifference = 2F

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img18.png)

## Visual styles

The Gauge control for Windows Forms includes four stunning skins for professional representation of gauges. You can easily modify the look and feel of the gauge component using the built-in visual styles and color schemes.

The styles are built-in for all gauges.

* Blue
* Black
* Silver
* Metro
* Office2016White
* Office2016Colorful
* Office2016DarkGray
* Office2016Black
* Custom

<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Enum</td><td>
Gets or sets the frame type.</td></tr>
</table>

**Black**

This option helps to set the Black theme.

{% tabs %}

{% highlight C# %}

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Black;

{% endhighlight %}

{% highlight VB %}

Me.radialGauge1.VisualStyle = 

Syncfusion.Windows.Forms.Gauge.ThemeStyle.Black

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img14.png)

**Blue**

This option helps to set the Blue theme.


{% tabs %}

{% highlight C# %}

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Blue;

{% endhighlight %}

{% highlight VB %}

Me.radialGauge1.VisualStyle = 

Syncfusion.Windows.Forms.Gauge.ThemeStyle.Blue

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img13.png)


**Silver**

This option helps to set the Silver theme.

{% tabs %}

{% highlight C# %}

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Silver;

{% endhighlight %}

{% highlight VB %}

Me.radialGauge1.VisualStyle = 

Syncfusion.Windows.Forms.Gauge.ThemeStyle.Silver

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img15.png)

**Metro**

This option helps to set the Metro theme.

{% tabs %}

{% highlight C# %}

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Metro;

{% endhighlight %}

{% highlight VB %}

Me.radialGauge1.VisualStyle = 

Syncfusion.Windows.Forms.Gauge.ThemeStyle.Metro

{% endhighlight %}

{% endtabs %}


![](Radial-Gauge_images/Radial-Gauge_img16.png)


**Office2016White**

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

//Office2016White

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

'Office2016White

Me.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016White

{% endhighlight %}

{% endtabs %}


 ![](Radial-Gauge_images/Radial-Gauge_img18.jpeg)


**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'Office2016Colorful

Me.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Colorful

{%endhighlight %}

{% endtabs %}

  ![](Radial-Gauge_images/Radial-Gauge_img19.jpeg)

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}

//Office2016DarkGray

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016DarkGray;

{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/Radial-Gauge_img20.jpg)


**Office2016Black**

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

//Office2016Black

this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

'Office2016Black

Me.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Black

{% endhighlight %}

{% endtabs %}


 ![](Radial-Gauge_images/Radial-Gauge_img21.jpg)

**Custom**

 RadialGauge provides an option to end user to create their own custom theme based on the requirement by setting the **VisualStyle** as **Custom**.

 Steps to Customize the theme in Design time.

 **Step 1:**  Need to add RadialGauge control to Form Designer.


![](Radial-Gauge_images/Radial-Gauge_img22.png)

 **Step 2:** Set the VisualStyle as Custom.

![](Radial-Gauge_images/Radial-Gauge_img23.png)

 **Step 3:** Need to add necessary Theme combination in ThemeBrush collection and it will update the Color customization details in RadialGauge control.

![](Radial-Gauge_images/Radial-Gauge_img24.png)

{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Gauge.RadialGaugeThemeBrush radialGaugeThemeBrush1 = new Syncfusion.Windows.Forms.Gauge.RadialGaugeThemeBrush();
radialGaugeThemeBrush1.ArcColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.BackgroundGradientEndColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
radialGaugeThemeBrush1.BackgroundGradientStartColor = System.Drawing.Color.FromArgb(((int)(((byte)(240)))), ((int)(((byte)(240)))), ((int)(((byte)(240)))));
radialGaugeThemeBrush1.InnerFrameGradientEndColor = System.Drawing.Color.FromArgb(((int)(((byte)(194)))), ((int)(((byte)(194)))), ((int)(((byte)(194)))));
radialGaugeThemeBrush1.InnerFrameGradientStartColor = System.Drawing.Color.FromArgb(((int)(((byte)(180)))), ((int)(((byte)(180)))), ((int)(((byte)(180)))));
radialGaugeThemeBrush1.InterLinesColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.LabelColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.MajorTickMarkColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.MinorTickMarkColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.NeedleColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.OuterFrameGradientEndColor = System.Drawing.Color.FromArgb(((int)(((byte)(172)))), ((int)(((byte)(172)))), ((int)(((byte)(172)))));
radialGaugeThemeBrush1.OuterFrameGradientStartColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
radialGaugeThemeBrush1.ScaleLabelColor = System.Drawing.Color.Gray;
radialGaugeThemeBrush1.ValueColor = System.Drawing.Color.Gray;
this.radialGauge1.ThemeBrush.Add(radialGaugeThemeBrush1);
this.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Custom;

{% endhighlight %}

{% highlight VB %}

Dim radialGaugeThemeBrush1 As Syncfusion.Windows.Forms.Gauge.RadialGaugeThemeBrush = New Syncfusion.Windows.Forms.Gauge.RadialGaugeThemeBrush()
radialGaugeThemeBrush1.ArcColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.BackgroundGradientEndColor = System.Drawing.Color.FromArgb((CType(((CType((255), Byte))), Integer)), (CType(((CType((128), Byte))), Integer)), (CType(((CType((128), Byte))), Integer)))
radialGaugeThemeBrush1.BackgroundGradientStartColor = System.Drawing.Color.FromArgb((CType(((CType((240), Byte))), Integer)), (CType(((CType((240), Byte))), Integer)), (CType(((CType((240), Byte))), Integer)))
radialGaugeThemeBrush1.InnerFrameGradientEndColor = System.Drawing.Color.FromArgb((CType(((CType((194), Byte))), Integer)), (CType(((CType((194), Byte))), Integer)), (CType(((CType((194), Byte))), Integer)))
radialGaugeThemeBrush1.InnerFrameGradientStartColor = System.Drawing.Color.FromArgb((CType(((CType((180), Byte))), Integer)), (CType(((CType((180), Byte))), Integer)), (CType(((CType((180), Byte))), Integer)))
radialGaugeThemeBrush1.InterLinesColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.LabelColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.MajorTickMarkColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.MinorTickMarkColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.NeedleColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.OuterFrameGradientEndColor = System.Drawing.Color.FromArgb((CType(((CType((172), Byte))), Integer)), (CType(((CType((172), Byte))), Integer)), (CType(((CType((172), Byte))), Integer)))
radialGaugeThemeBrush1.OuterFrameGradientStartColor = System.Drawing.Color.FromArgb((CType(((CType((229), Byte))), Integer)), (CType(((CType((229), Byte))), Integer)), (CType(((CType((229), Byte))), Integer)))
radialGaugeThemeBrush1.ScaleLabelColor = System.Drawing.Color.Gray
radialGaugeThemeBrush1.ValueColor = System.Drawing.Color.Gray
Me.radialGauge1.ThemeBrush.Add(radialGaugeThemeBrush1)
Me.radialGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Custom


{% endhighlight %}

{% endtabs %}

**Output**

![](Radial-Gauge_images/Radial-Gauge_img25.png)


## Data binding

You can bind any data source to the RadialGauge and map an index of a record to represent the actual value in RadialGauge. The DisplayMember and DisplayRecordIndex properties will map the DataColumn and DataRow of the binding source respectively to the Gauge control, which will then support high frequency data updates.

### Example

{% highlight C# %}

this.radialGauge1.DataSource = dataTable;

this.radialGauge1.DisplayRecordIndex = [Row Index];

this.radialGauge1.DisplayMember = [column name];

{% endhighlight %}

## Custom renderer

The appearance of the Radial Gauge is customized by using the `IRadialGaugeRenderer`. This interface provides few methods to control painting over the OuterArc, Needle, Major ticks, Minor ticks, Label, Ranges etc.

To customize the appearance,

1. Create a new custom renderer class and implement each of the members defined in `IRadialGaugeRenderer`.
2. Assign instance of your custom renderer to the `Renderer` property of Radial Gauge. By default, Radial Gauge is painted by using its default renderer.

{% tabs %}

{% highlight C# %}

CustomRenderer custom1= new CustomRenderer(this.radialGauge1);

radialGauge1.Renderer = custom;

{% endhighlight %}

{% highlight VB %}

Private custom1 As CustomRenderer  = New CustomRenderer(Me.radialGauge1)

radialGauge1.Renderer = custom

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/custom.jpeg)

## Frequently asked questions

### How to enable multiple needles to radial gauge

#### Adding multiple needles to radial gauge

The Radial Gauge control can be used for representing a range of values in circular form. In Radial Gauge, you can represent the range of values using multiple needles.



![C:/Users/ApoorvahR/Desktop/1.png](Radial-Gauge_images/Radial-Gauge_img17.png)



The following code example illustrates you on how to add multiple needles in Radial Gauge.

{% tabs %}

{% highlight C# %}

this.RadialGauge1.EnableCustomNeedles = true;

Syncfusion.Windows.Forms.Gauge.Needle needle1 = new Syncfusion.Windows.Forms.Gauge.Needle();

Syncfusion.Windows.Forms.Gauge.Needle needle2 = new Syncfusion.Windows.Forms.Gauge.Needle();

this.RadialGauge1.NeedleCollection.Add(needle1);

this.RadialGauge1.NeedleCollection.Add(needle2);

{% endhighlight %}

{% highlight VB %}

Me.RadialGauge1.EnableCustomNeedles = True

Dim needle1 As New Syncfusion.Windows.Forms.Gauge.Needle()

Dim needle2 As New Syncfusion.Windows.Forms.Gauge.Needle()

Me.RadialGauge1.NeedleCollection.Add(needle1)

Me.RadialGauge1.NeedleCollection.Add(needle2)

{% endhighlight %}

{% endtabs %}

#### Customization of needles in radial gauge

You can customize the Radial gauge needles using the Needles property.

##### Needle style

RadialGauge supports three needle style. They are

* Default
* Advanced
* Pointer

##### Needle color

You can customize the needle color by using the NeedleColor property.

##### Needle values

The Needle values can be assigned using Values property in Needle.

You can customize the needles in Radial Gauge by using the following code example.

{% tabs %}

{% highlight C# %}

needle1.NeedleColor = System.Drawing.Color.Gray;

needle1.NeedleStyle = Syncfusion.Windows.Forms.Gauge.NeedleStyle.Advanced;

this.RadialGauge1.NeedleCollection[1].Value = 5;

{% endhighlight %}


{%highlight VB %}

needle1.NeedleColor = Color.Gray

needle1.NeedleStyle = Syncfusion.Windows.Forms.Gauge.NeedleStyle.Advanced

Me.RadialGauge1.NeedleCollection(0).Value = 5

{% endhighlight %}

{% endtabs %}

### How to customize radial gauge appearance

You can customize the appearance of the Radial Gauge by using the `IRadialGaugeRenderer`.

{% tabs %}

{% highlight C# %}

CustomRenderer custom1= new CustomRenderer(this.radialGauge1);

radialGauge1.Renderer = custom1;


public class CustomRenderer : IRadialGaugeRenderer
    {
        /// </summary>
        /// Gets the radial gauge
        /// </summary>
        private RadialGauge m_RadialGauge;

        /// <summary>
        /// Used to set bounds for the Font
        /// </summary>
        Single fontBoundY1, fontBoundY2;
        
        /// <summary>
        /// Gets the Radial gauge
        /// </summary>
        internal RadialGauge RadialGauge
        {
            get
            {
                return m_RadialGauge;
            }
        }
        
        /// <summary>
        /// Constructor of the Renderer class
        /// </summary>
        /// <param name="radialGauge"></param>
        public CustomRenderer(RadialGauge radialGauge)
        {
            m_RadialGauge = radialGauge;
           
        }
        /// <summary>
        /// Updates the renderer method.
        /// </summary>
        /// <param name="e"></param>
        public void Update(PaintEventArgs e)
        {
            FindFontBounds(e.Graphics, RadialGauge.Font);
            DrawOuterArc(e.Graphics, 135, 270, new Point(140, 140), 115, 105);
            DrawNeedle(e.Graphics, 135, 270, 65, 4, new Point(140, 140));
            DrawLabel(e.Graphics, new Point(140, 140), 105);
            DrawRanges(e.Graphics, new System.Drawing.Drawing2D.GraphicsPath(), 135, 270, 90, new Point(140, 140));
            DrawLines(e.Graphics, new System.Drawing.Drawing2D.GraphicsPath(), 108, 135, 270, 3, new Point(140, 140), 80);
        }
        /// <summary>
        /// Used to calculate the text bounds 
        /// </summary>
        /// <param name="e">Paint event argument</param>
        /// <param name="m_font">Font used in Radial gauge</param>
        public void FindFontBounds(Graphics g, Font m_font)
        {
            //find upper and lower bounds for numeric characters
            Int32 c1;
            Int32 c2;
            Boolean boundFound;
            Bitmap b;
            SolidBrush backBrush = new SolidBrush(Color.White);
            SolidBrush foreBrush = new SolidBrush(Color.Black);
            SizeF boundingBox;

            boundingBox = g.MeasureString("0123456789", m_font, -1, StringFormat.GenericTypographic);
            b = new Bitmap((Int32)(boundingBox.Width), (Int32)(boundingBox.Height));
            g = Graphics.FromImage(b);
            g.FillRectangle(backBrush, 0.0F, 0.0F, boundingBox.Width, boundingBox.Height);
            g.DrawString("0123456789", m_font, foreBrush, 0.0F, 0.0F, StringFormat.GenericTypographic);

            fontBoundY1 = 0;
            fontBoundY2 = 0;
            c1 = 0;
            boundFound = false;
            while ((c1 < b.Height) && (!boundFound))
            {
                c2 = 0;
                while ((c2 < b.Width) && (!boundFound))
                {
                    if (b.GetPixel(c2, c1) != backBrush.Color)
                    {
                        fontBoundY1 = c1;
                        boundFound = true;
                    }
                    c2++;
                }
                c1++;
            }

            c1 = b.Height - 1;
            boundFound = false;
            while ((0 < c1) && (!boundFound))
            {
                c2 = 0;
                while ((c2 < b.Width) && (!boundFound))
                {
                    if (b.GetPixel(c2, c1) != backBrush.Color)
                    {
                        fontBoundY2 = c1;
                        boundFound = true;
                    }
                    c2++;
                }
                c1--;
            }
        }

        /// <summary>
        /// Method used to draw outer arc.
        /// </summary>
        /// <param name="e">Paint event argument</param>
        /// <param name="m_GaugeArcStart">Arc start position</param>
        /// <param name="m_GaugeArcEnd">Arc end position</param>
        /// <param name="m_Center">Center point for gauge</param>
        public void DrawOuterArc(Graphics e, Int32 m_GaugeArcStart, Int32 m_GaugeArcEnd, Point m_Center, Int32 m_GaugeArcRadius, int GaugeRadius)
        {
            e.SmoothingMode = SmoothingMode.AntiAlias;
            e.PixelOffsetMode = PixelOffsetMode.HighQuality;
            GraphicsPath path = new GraphicsPath();
            Color c = this.RadialGauge.Parent != null ? this.RadialGauge.Parent.BackColor : Color.Empty;
            Rectangle r = new Rectangle(0, 0, this.RadialGauge.Width, this.RadialGauge.Height);
            System.Drawing.Drawing2D.GraphicsPath basePath = new System.Drawing.Drawing2D.GraphicsPath();

            int x = this.RadialGauge.Width;
            int y = this.RadialGauge.Height;

            //Define rectangles inside which we will draw circles.

            Rectangle rect = new Rectangle(0 + 10, 0 + 10, (int)x - 20, (int)y - 20);
            Rectangle rector = new Rectangle(0 + 23, 0 + 23, (int)x - 46, (int)y - 46);
            Rectangle inner = new Rectangle(0 + 40, 0 + 40, (int)x - 80, (int)y - 80);

            //OUTER
            LinearGradientBrush graph = new LinearGradientBrush(rect, RadialGauge.OuterFrameGradientStartColor, RadialGauge.OuterFrameGradientEndColor, LinearGradientMode.Vertical);

            path.AddEllipse(rect);
            if (RadialGauge.TransparentBackGround)
                this.RadialGauge.Region = new Region(path);
            PathGradientBrush pg = new PathGradientBrush(path);

            pg.CenterColor = RadialGauge.BackgroundGradientStartColor;

            pg.SurroundColors = new Color[] { RadialGauge.BackgroundGradientEndColor };

            pg.FocusScales = new PointF(0.1f, 0.1f);

            Blend bevelBlend = new Blend();
            bevelBlend.Positions = new float[] { 0.0f, .2f, .4f, .6f, .8f, 1.0f };
            bevelBlend.Factors = new float[] { .2f, .4f, .6f, .6f, 1f, 1f };
            Rectangle lgRect = rect;
            lgRect.Inflate(1, 1);
            LinearGradientBrush innerBevelBrush = new LinearGradientBrush(lgRect,
                                                RadialGauge.InnerFrameGradientStartColor,
                                                RadialGauge.InnerFrameGradientEndColor,
                                                LinearGradientMode.Vertical);

            innerBevelBrush.Blend = bevelBlend;
            if (this.RadialGauge.ShowBackgroundFrame)
            {
                e.FillEllipse(graph, rect);
                e.FillEllipse(innerBevelBrush, rector);
                rector.Inflate(-3, -3);

                e.FillEllipse(pg, rector);
            }

            GraphicsPath gp = new GraphicsPath();

            if (m_GaugeArcRadius > 0)
            {
                e.DrawArc(new Pen(this.RadialGauge.GaugeArcColor, 4), new Rectangle(m_Center.X - GaugeRadius, m_Center.Y - GaugeRadius,
                   2 * GaugeRadius, 2 * GaugeRadius), m_GaugeArcStart, m_GaugeArcEnd);
            }
        }
    
        /// <summary>
        /// Method used to draw customization needle.
        /// </summary>
        /// <param name="graphics">Graphics</param>
        /// <param name="needle">Needle used in the gauge</param>
        /// <param name="m_gaugeArcStart">Arc start position</param>
        /// <param name="m_gaugeArcEnd">Arc end position</param>
        /// <param name="m_NeedleRadius">Needle radius</param>
        /// <param name="m_NeedleWidth">Needle width</param>
        /// <param name="m_center">Center point of the gauge</param>
        public void DrawCustomizationNeedle(Graphics graphics, Needle needle, Int32 m_gaugeArcStart, Int32 m_gaugeArcEnd, Int32 m_NeedleRadius, int m_NeedleWidth, Point m_center)
        {
            needle.Value = Math.Min(Math.Max(needle.Value, RadialGauge.MinimumValue), RadialGauge.MaximumValue);
            Single brushAngle = (Int32)(m_gaugeArcStart + (needle.Value - RadialGauge.MinimumValue) * m_gaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) % 360;
            Double needleAngle = brushAngle * Math.PI / 180;
            Point startPoint = new Point((Int32)(m_center.X - m_NeedleWidth / 8 * Math.Cos(needleAngle)),
                                        (Int32)(m_center.Y - m_NeedleWidth / 8 * Math.Sin(needleAngle)));
            Point endPoint = new Point((Int32)(m_center.X + m_NeedleWidth * Math.Cos(needleAngle)),
                                     (Int32)(m_center.Y + m_NeedleWidth * Math.Sin(needleAngle)));

            graphics.FillEllipse(new SolidBrush(needle.NeedleColor), m_center.X - m_NeedleWidth * 3, m_center.Y - m_NeedleWidth * 3, m_NeedleWidth * 6, m_NeedleWidth * 6);
            graphics.DrawLine(new Pen(needle.NeedleColor, m_NeedleWidth), m_center.X, m_center.Y, endPoint.X, endPoint.Y);
        }

        /// <summary>
        /// Method used to draw needle
        /// </summary>
        /// <param name="graphics">Graphics</param>
        /// <param name="m_GaugeArcStart">Arc start position</param>
        /// <param name="m_GaugeArcEnd">Arc end position</param>
        /// <param name="m_NeedleRadius">Needle radius</param>
        /// <param name="m_NeedleWidth">Needle width</param>
        /// <param name="m_Center">Center point of the gauge</param>
        public void DrawNeedle(Graphics graphics, Int32 m_GaugeArcStart, Int32 m_GaugeArcEnd, Int32 m_NeedleRadius, Int32 m_NeedleWidth, Point m_Center)
        {
            Single brushAngle = (Int32)(m_GaugeArcStart + (RadialGauge.Value - RadialGauge.MinimumValue) * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) % 360;
            Double needleAngle = brushAngle * Math.PI / 180;
            if (RadialGauge.ShowNeedle)
            {
                Point startPoint = new Point((Int32)(m_Center.X - m_NeedleRadius / 8 * Math.Cos(needleAngle)),
                                            (Int32)(m_Center.Y - m_NeedleRadius / 8 * Math.Sin(needleAngle)));
                Point endPoint = new Point((Int32)(m_Center.X + m_NeedleRadius * Math.Cos(needleAngle)),
                                         (Int32)(m_Center.Y + m_NeedleRadius * Math.Sin(needleAngle)));
                graphics.DrawLine(new Pen(this.RadialGauge.GaugeArcColor, 2), m_Center.X, m_Center.Y, endPoint.X, endPoint.Y);

                graphics.FillEllipse(new SolidBrush(this.RadialGauge.NeedleColor), m_Center.X - m_NeedleWidth * 3, m_Center.Y - m_NeedleWidth * 3, m_NeedleWidth * 6, m_NeedleWidth * 6);
            }
        }

        /// <summary>
        /// Used to draw the  label of the gauge
        /// </summary>
        /// <param name="e">paint event argument</param>
        /// <param name="m_Center">Center point of the gauge</param>
        public void DrawLabel(Graphics e, Point m_Center, int GaugeRadius)
        {
            SolidBrush br = new SolidBrush(this.RadialGauge.GaugeLableColor);
            SizeF s = e.MeasureString(RadialGauge.GaugeLabel, RadialGauge.GaugeLableFont);
            e.DrawString(RadialGauge.GaugeLabel, RadialGauge.GaugeLableFont, br,
                new Point((int)((m_Center.X) - (s.Width / 2)), (int)(m_Center.Y + GaugeRadius / 2) + 15));
            br.Dispose();
        }

        /// <summary>
        /// Used to draw the ranges for the Gauge
        /// </summary>
        /// <param name="gr">Graphics</param>
        /// <param name="gp">Graphics path</param>
        /// <param name="m_GaugeArcStart">Start position of the arc</param>
        /// <param name="m_GaugeArcEnd">End position of the arc</param>
        /// <param name="m_GaugeArcRadius">Radius of the arc</param>
        /// <param name="m_Center">Center of the gauge</param>
        public void DrawRanges(Graphics gr, GraphicsPath gp, Int32 m_GaugeArcStart, Int32 m_GaugeArcEnd, Int32 m_GaugeArcRadius, Point m_Center)
        {
            Single rangeStartAngle;
            Single rangeSweepAngle;

            foreach (Range ptrRange in RadialGauge.Ranges)
            {
                if (ptrRange.EndValue > ptrRange.StartValue)
                {
                    rangeStartAngle = m_GaugeArcStart + (ptrRange.StartValue - RadialGauge.MinimumValue) * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue);
                    rangeSweepAngle = (ptrRange.EndValue - ptrRange.StartValue) * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue);


                    Int32 line = m_GaugeArcRadius + RadialGauge.MajorTickMarkHeight;
                    gr.SmoothingMode = SmoothingMode.AntiAlias;
                    gr.PixelOffsetMode = PixelOffsetMode.HighQuality;
                    int m_GaugeArcRadius1 = m_GaugeArcRadius + RadialGauge.MajorTickMarkHeight;
                    gr.DrawArc(new Pen(ptrRange.Color, ptrRange.Height), new Rectangle(m_Center.X - m_GaugeArcRadius1, m_Center.Y - m_GaugeArcRadius1, 2 * m_GaugeArcRadius1, 2 * m_GaugeArcRadius1), rangeStartAngle, rangeSweepAngle);
                }
            }
        }

        /// <summary>
        /// Used to draw the tick marks of the gauge
        /// </summary>
        /// <param name="graphics">Graphics</param>
        /// <param name="gp">Graphics Path</param>
        /// <param name="m_GaugeArcRadius">Radius of the arc</param>
        /// <param name="m_GaugeArcStart">Start position of the arc</param>
        /// <param name="m_GaugeArcEnd">End position of the arc</param>
        /// <param name="m_MajorTickMarkWidth">Tick mark width</param>
        /// <param name="m_Center">Center of the gauge</param>
        public void DrawLines(Graphics graphics, GraphicsPath gp, Int32 m_GaugeArcRadius, Int32 m_GaugeArcStart, Int32 m_GaugeArcEnd, Int32 m_MajorTickMarkWidth, Point m_Center, int m_ScaleNumbersRadius)
        {
            String valueText = "";
            SizeF boundingBox;
            Single countValue = 0;
            int TempGaugeArcRadius = m_GaugeArcRadius;
            TempGaugeArcRadius = m_GaugeArcRadius+2;
            graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            while (countValue <= (RadialGauge.MaximumValue - RadialGauge.MinimumValue))
            {
                valueText = (RadialGauge.MinimumValue + countValue).ToString();
                graphics.ResetTransform();
                boundingBox = graphics.MeasureString(valueText, RadialGauge.Font, -1, StringFormat.GenericTypographic);

                Int32 line = TempGaugeArcRadius - RadialGauge.MajorTickMarkHeight;
                Int32 lineMinerValue = TempGaugeArcRadius - RadialGauge.MinorTickMarkHeight;
                Int32 lineMinerInterValue = TempGaugeArcRadius - RadialGauge.MinorInnerLinesHeight;
                gp.Reset();
                gp.AddEllipse(new Rectangle(m_Center.X - TempGaugeArcRadius, m_Center.Y - TempGaugeArcRadius, 2 * TempGaugeArcRadius, 2 * TempGaugeArcRadius));
                gp.Reverse();
                gp.AddEllipse(new Rectangle(m_Center.X - line, m_Center.Y - line, 2 * line, 2 * line));
                gp.Reverse();
                graphics.SetClip(gp);

                graphics.DrawLine(new Pen(this.RadialGauge.MajorTickMarkColor, m_MajorTickMarkWidth),
                               (Single)(m_Center.X),
                               (Single)(m_Center.Y),
                               (Single)(m_Center.X + 2 * lineMinerValue * Math.Cos((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0)),
                               (Single)(m_Center.Y + 2 * lineMinerValue * Math.Sin((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0)));

                gp.Reset();
                
                    gp.AddEllipse(new Rectangle(m_Center.X - TempGaugeArcRadius, m_Center.Y - TempGaugeArcRadius, 2 * TempGaugeArcRadius, 2 * TempGaugeArcRadius));
                    gp.Reverse();
                    gp.AddEllipse(new Rectangle(m_Center.X - lineMinerValue, m_Center.Y - lineMinerValue, 2 * lineMinerValue, 2 * lineMinerValue));
               
                gp.Reverse();
                graphics.SetClip(gp);
                graphics.SetClip(RadialGauge.ClientRectangle);

                if (RadialGauge.ShowScaleLabel)
                {
                    if (this.RadialGauge.TextOrientation != TextOrientation.Horizontal)
                    {
                        graphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
                        graphics.RotateTransform(90.0F + m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue));
                    }

                    graphics.TranslateTransform((Single)(m_Center.X + m_ScaleNumbersRadius * Math.Cos((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0f)),
                                           (Single)(m_Center.Y + m_ScaleNumbersRadius * Math.Sin((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0f)),
                                           System.Drawing.Drawing2D.MatrixOrder.Append);



                    graphics.DrawString(valueText, RadialGauge.Font, new SolidBrush(this.RadialGauge.ScaleLabelColor), -boundingBox.Width/2, -fontBoundY1 - (fontBoundY2 - fontBoundY1 + 1) / 2, StringFormat.GenericTypographic);
                }

                countValue += RadialGauge.MajorDifference;
            }
        }
       
        #endregion
    }


{% endhighlight %}


{% highlight VB %}


Private custom1 As CustomRenderer  = New CustomRenderer(Me.radialGauge1)

radialGauge1.Renderer = custom


Public Class CustomRenderer
		Implements IRadialGaugeRenderer
				''' </summary>
		''' Gets the radial gauge
		''' </summary>
		Private m_RadialGauge As RadialGauge

		''' <summary>
		''' Used to set bounds for the Font
		''' </summary>
		Private fontBoundY1, fontBoundY2 As Single
		
		''' <summary>
		''' Gets the Radial gauge
		''' </summary>
		Friend ReadOnly Property RadialGauge() As RadialGauge
			Get
				Return m_RadialGauge
			End Get
		End Property
		
		''' <summary>
		''' Constructor of the Renderer class
		''' </summary>
		''' <param name="radialGauge"></param>
		Public Sub New(ByVal radialGauge As RadialGauge)
			m_RadialGauge = radialGauge

		End Sub
		

		''' <summary>
		''' Updates the renderer method.
		''' </summary>
		''' <param name="e"></param>
		Public Sub Update(ByVal e As PaintEventArgs)
			FindFontBounds(e.Graphics, RadialGauge.Font)
			DrawOuterArc(e.Graphics, 135, 270, New Point(140, 140), 115, 105)
			DrawNeedle(e.Graphics, 135, 270, 65, 4, New Point(140, 140))
			DrawLabel(e.Graphics, New Point(140, 140), 105)
			DrawRanges(e.Graphics, New System.Drawing.Drawing2D.GraphicsPath(), 135, 270, 90, New Point(140, 140))
			DrawLines(e.Graphics, New System.Drawing.Drawing2D.GraphicsPath(), 108, 135, 270, 3, New Point(140, 140), 80)
		End Sub
		''' <summary>
		''' Used to calculate the text bounds 
		''' </summary>
		''' <param name="e">Paint event argument</param>
		''' <param name="m_font">Font used in Radial gauge</param>
		Public Sub FindFontBounds(ByVal g As Graphics, ByVal m_font As Font)
			'find upper and lower bounds for numeric characters
			Dim c1 As Int32
			Dim c2 As Int32
			Dim boundFound As Boolean
			Dim b As Bitmap
			Dim backBrush As New SolidBrush(Color.White)
			Dim foreBrush As New SolidBrush(Color.Black)
			Dim boundingBox As SizeF

			boundingBox = g.MeasureString("0123456789", m_font, -1, StringFormat.GenericTypographic)
			b = New Bitmap(CInt(Fix(boundingBox.Width)), CInt(Fix(boundingBox.Height)))
			g = Graphics.FromImage(b)
			g.FillRectangle(backBrush, 0.0F, 0.0F, boundingBox.Width, boundingBox.Height)
			g.DrawString("0123456789", m_font, foreBrush, 0.0F, 0.0F, StringFormat.GenericTypographic)

			fontBoundY1 = 0
			fontBoundY2 = 0
			c1 = 0
			boundFound = False
			Do While (c1 < b.Height) AndAlso ((Not boundFound))
				c2 = 0
				Do While (c2 < b.Width) AndAlso ((Not boundFound))
					If b.GetPixel(c2, c1) <> backBrush.Color Then
						fontBoundY1 = c1
						boundFound = True
					End If
					c2 += 1
				Loop
				c1 += 1
			Loop

			c1 = b.Height - 1
			boundFound = False
			Do While (0 < c1) AndAlso ((Not boundFound))
				c2 = 0
				Do While (c2 < b.Width) AndAlso ((Not boundFound))
					If b.GetPixel(c2, c1) <> backBrush.Color Then
						fontBoundY2 = c1
						boundFound = True
					End If
					c2 += 1
				Loop
				c1 -= 1
			Loop
		End Sub

		''' <summary>
		''' Method used to draw outer arc.
		''' </summary>
		''' <param name="e">Paint event argument</param>
		''' <param name="m_GaugeArcStart">Arc start position</param>
		''' <param name="m_GaugeArcEnd">Arc end position</param>
		''' <param name="m_Center">Center point for gauge</param>
		Public Sub DrawOuterArc(ByVal e As Graphics, ByVal m_GaugeArcStart As Int32, ByVal m_GaugeArcEnd As Int32, ByVal m_Center As Point, ByVal m_GaugeArcRadius As Int32, ByVal GaugeRadius As Integer)
			e.SmoothingMode = SmoothingMode.AntiAlias
			e.PixelOffsetMode = PixelOffsetMode.HighQuality
			Dim path As New GraphicsPath()
			Dim c As Color = If(Me.RadialGauge.Parent IsNot Nothing, Me.RadialGauge.Parent.BackColor, Color.Empty)
			Dim r As New Rectangle(0, 0, Me.RadialGauge.Width, Me.RadialGauge.Height)
			Dim basePath As New System.Drawing.Drawing2D.GraphicsPath()

			Dim x As Integer = Me.RadialGauge.Width
			Dim y As Integer = Me.RadialGauge.Height

			'Define rectangles inside which we will draw circles.

			Dim rect As New Rectangle(0 + 10, 0 + 10, CInt(Fix(x)) - 20, CInt(Fix(y)) - 20)
			Dim rector As New Rectangle(0 + 23, 0 + 23, CInt(Fix(x)) - 46, CInt(Fix(y)) - 46)
			Dim inner As New Rectangle(0 + 40, 0 + 40, CInt(Fix(x)) - 80, CInt(Fix(y)) - 80)

			'OUTER
			Dim graph As New LinearGradientBrush(rect, RadialGauge.OuterFrameGradientStartColor, RadialGauge.OuterFrameGradientEndColor, LinearGradientMode.Vertical)

			path.AddEllipse(rect)
			If RadialGauge.TransparentBackGround Then
				Me.RadialGauge.Region = New Region(path)
			End If
			Dim pg As New PathGradientBrush(path)

			pg.CenterColor = RadialGauge.BackgroundGradientStartColor

			pg.SurroundColors = New Color() { RadialGauge.BackgroundGradientEndColor }

			pg.FocusScales = New PointF(0.1f, 0.1f)

			Dim bevelBlend As New Blend()
			bevelBlend.Positions = New Single() { 0.0f,.2f,.4f,.6f,.8f, 1.0f }
			bevelBlend.Factors = New Single() {.2f,.4f,.6f,.6f, 1f, 1f }
			Dim lgRect As Rectangle = rect
			lgRect.Inflate(1, 1)
			Dim innerBevelBrush As New LinearGradientBrush(graphRect, RadialGauge.InnerFrameGradientStartColor, RadialGauge.InnerFrameGradientEndColor, LinearGradientMode.Vertical)

			innerBevelBrush.Blend = bevelBlend
			If Me.RadialGauge.ShowBackgroundFrame Then
				e.FillEllipse(graph, rect)
				e.FillEllipse(innerBevelBrush, rector)
				rector.Inflate(-3, -3)

				e.FillEllipse(pg, rector)
			End If

			Dim gp As New GraphicsPath()

			If m_GaugeArcRadius > 0 Then
				e.DrawArc(New Pen(Me.RadialGauge.GaugeArcColor, 4), New Rectangle(m_Center.X - GaugeRadius, m_Center.Y - GaugeRadius, 2 * GaugeRadius, 2 * GaugeRadius), m_GaugeArcStart, m_GaugeArcEnd)
			End If
		End Sub

		''' <summary>
		''' Method used to draw customization needle.
		''' </summary>
		''' <param name="graphics">Graphics</param>
		''' <param name="needle">Needle used in the gauge</param>
		''' <param name="m_gaugeArcStart">Arc start position</param>
		''' <param name="m_gaugeArcEnd">Arc end position</param>
		''' <param name="m_NeedleRadius">Needle radius</param>
		''' <param name="m_NeedleWidth">Needle width</param>
		''' <param name="m_center">Center point of the gauge</param>
		Public Sub DrawCustomizationNeedle(ByVal graphics As Graphics, ByVal needle As Needle, ByVal m_gaugeArcStart As Int32, ByVal m_gaugeArcEnd As Int32, ByVal m_NeedleRadius As Int32, ByVal m_NeedleWidth As Integer, ByVal m_center As Point)
			needle.Value = Math.Min(Math.Max(needle.Value, RadialGauge.MinimumValue), RadialGauge.MaximumValue)
			Dim brushAngle As Single = CInt(Fix(m_gaugeArcStart + (needle.Value - RadialGauge.MinimumValue) * m_gaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue))) Mod 360
			Dim needleAngle As Double = brushAngle * Math.PI / 180
			Dim startPoint As New Point(CInt(Fix(m_center.X - m_NeedleWidth \ 8 * Math.Cos(needleAngle))), CInt(Fix(m_center.Y - m_NeedleWidth \ 8 * Math.Sin(needleAngle))))
			Dim endPoint As New Point(CInt(Fix(m_center.X + m_NeedleWidth * Math.Cos(needleAngle))), CInt(Fix(m_center.Y + m_NeedleWidth * Math.Sin(needleAngle))))

			graphics.FillEllipse(New SolidBrush(needle.NeedleColor), m_center.X - m_NeedleWidth * 3, m_center.Y - m_NeedleWidth * 3, m_NeedleWidth * 6, m_NeedleWidth * 6)
			graphics.DrawLine(New Pen(needle.NeedleColor, m_NeedleWidth), m_center.X, m_center.Y, endPoint.X, endPoint.Y)
		End Sub

		''' <summary>
		''' Method used to draw needle
		''' </summary>
		''' <param name="graphics">Graphics</param>
		''' <param name="m_GaugeArcStart">Arc start position</param>
		''' <param name="m_GaugeArcEnd">Arc end position</param>
		''' <param name="m_NeedleRadius">Needle radius</param>
		''' <param name="m_NeedleWidth">Needle width</param>
		''' <param name="m_Center">Center point of the gauge</param>
		Public Sub DrawNeedle(ByVal graphics As Graphics, ByVal m_GaugeArcStart As Int32, ByVal m_GaugeArcEnd As Int32, ByVal m_NeedleRadius As Int32, ByVal m_NeedleWidth As Int32, ByVal m_Center As Point)
			Dim brushAngle As Single = CInt(Fix(m_GaugeArcStart + (RadialGauge.Value - RadialGauge.MinimumValue) * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue))) Mod 360
			Dim needleAngle As Double = brushAngle * Math.PI / 180
			If RadialGauge.ShowNeedle Then
				Dim startPoint As New Point(CInt(Fix(m_Center.X - m_NeedleRadius \ 8 * Math.Cos(needleAngle))), CInt(Fix(m_Center.Y - m_NeedleRadius \ 8 * Math.Sin(needleAngle))))
				Dim endPoint As New Point(CInt(Fix(m_Center.X + m_NeedleRadius * Math.Cos(needleAngle))), CInt(Fix(m_Center.Y + m_NeedleRadius * Math.Sin(needleAngle))))
				graphics.DrawLine(New Pen(Me.RadialGauge.GaugeArcColor, 2), m_Center.X, m_Center.Y, endPoint.X, endPoint.Y)

				graphics.FillEllipse(New SolidBrush(Me.RadialGauge.NeedleColor), m_Center.X - m_NeedleWidth * 3, m_Center.Y - m_NeedleWidth * 3, m_NeedleWidth * 6, m_NeedleWidth * 6)
			End If
		End Sub

		''' <summary>
		''' Used to draw the  label of the gauge
		''' </summary>
		''' <param name="e">paint event argument</param>
		''' <param name="m_Center">Center point of the gauge</param>
		Public Sub DrawLabel(ByVal e As Graphics, ByVal m_Center As Point, ByVal GaugeRadius As Integer)
			Dim br As New SolidBrush(Me.RadialGauge.GaugeLableColor)
			Dim s As SizeF = e.MeasureString(RadialGauge.GaugeLabel, RadialGauge.GaugeLableFont)
			e.DrawString(RadialGauge.GaugeLabel, RadialGauge.GaugeLableFont, br, New Point(CInt(Fix((m_Center.X) - (s.Width \ 2))), CInt(Fix(m_Center.Y + GaugeRadius \ 2)) + 15))
			br.Dispose()
		End Sub

		''' <summary>
		''' Used to draw the ranges for the Gauge
		''' </summary>
		''' <param name="gr">Graphics</param>
		''' <param name="gp">Graphics path</param>
		''' <param name="m_GaugeArcStart">Start position of the arc</param>
		''' <param name="m_GaugeArcEnd">End position of the arc</param>
		''' <param name="m_GaugeArcRadius">Radius of the arc</param>
		''' <param name="m_Center">Center of the gauge</param>
		Public Sub DrawRanges(ByVal gr As Graphics, ByVal gp As GraphicsPath, ByVal m_GaugeArcStart As Int32, ByVal m_GaugeArcEnd As Int32, ByVal m_GaugeArcRadius As Int32, ByVal m_Center As Point)
			Dim rangeStartAngle As Single
			Dim rangeSweepAngle As Single

			For Each ptrRange As Range In RadialGauge.Ranges
				If ptrRange.EndValue > ptrRange.StartValue Then
					rangeStartAngle = m_GaugeArcStart + (ptrRange.StartValue - RadialGauge.MinimumValue) * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)
					rangeSweepAngle = (ptrRange.EndValue - ptrRange.StartValue) * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)


					Dim line As Int32 = m_GaugeArcRadius + RadialGauge.MajorTickMarkHeight
					gr.SmoothingMode = SmoothingMode.AntiAlias
					gr.PixelOffsetMode = PixelOffsetMode.HighQuality
					Dim m_GaugeArcRadius1 As Integer = m_GaugeArcRadius + RadialGauge.MajorTickMarkHeight
					gr.DrawArc(New Pen(ptrRange.Color, ptrRange.Height), New Rectangle(m_Center.X - m_GaugeArcRadius1, m_Center.Y - m_GaugeArcRadius1, 2 * m_GaugeArcRadius1, 2 * m_GaugeArcRadius1), rangeStartAngle, rangeSweepAngle)
				End If
			Next ptrRange
		End Sub

		''' <summary>
		''' Used to draw the tick marks of the gauge
		''' </summary>
		''' <param name="graphics">Graphics</param>
		''' <param name="gp">Graphics Path</param>
		''' <param name="m_GaugeArcRadius">Radius of the arc</param>
		''' <param name="m_GaugeArcStart">Start position of the arc</param>
		''' <param name="m_GaugeArcEnd">End position of the arc</param>
		''' <param name="m_MajorTickMarkWidth">Tick mark width</param>
		''' <param name="m_Center">Center of the gauge</param>
		Public Sub DrawLines(ByVal graphics As Graphics, ByVal gp As GraphicsPath, ByVal m_GaugeArcRadius As Int32, ByVal m_GaugeArcStart As Int32, ByVal m_GaugeArcEnd As Int32, ByVal m_MajorTickMarkWidth As Int32, ByVal m_Center As Point, ByVal m_ScaleNumbersRadius As Integer)
			Dim valueText As String = ""
			Dim boundingBox As SizeF
			Dim countValue As Single = 0
			Dim TempGaugeArcRadius As Integer = m_GaugeArcRadius
			TempGaugeArcRadius = m_GaugeArcRadius+2
			graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality
			Do While countValue <= (RadialGauge.MaximumValue - RadialGauge.MinimumValue)
				valueText = (RadialGauge.MinimumValue + countValue).ToString()
				graphics.ResetTransform()
				boundingBox = graphics.MeasureString(valueText, RadialGauge.Font, -1, StringFormat.GenericTypographic)

				Dim line As Int32 = TempGaugeArcRadius - RadialGauge.MajorTickMarkHeight
				Dim lineMinerValue As Int32 = TempGaugeArcRadius - RadialGauge.MinorTickMarkHeight
				Dim lineMinerInterValue As Int32 = TempGaugeArcRadius - RadialGauge.MinorInnerLinesHeight
				gp.Reset()
				gp.AddEllipse(New Rectangle(m_Center.X - TempGaugeArcRadius, m_Center.Y - TempGaugeArcRadius, 2 * TempGaugeArcRadius, 2 * TempGaugeArcRadius))
				gp.Reverse()
				gp.AddEllipse(New Rectangle(m_Center.X - line, m_Center.Y - line, 2 * line, 2 * line))
				gp.Reverse()
				graphics.SetClip(gp)

				graphics.DrawLine(New Pen(Me.RadialGauge.MajorTickMarkColor, m_MajorTickMarkWidth), CType(m_Center.X, Single), CType(m_Center.Y, Single), CType(m_Center.X + 2 * lineMinerValue * Math.Cos((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0), Single), CType(m_Center.Y + 2 * lineMinerValue * Math.Sin((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0), Single))

				gp.Reset()

					gp.AddEllipse(New Rectangle(m_Center.X - TempGaugeArcRadius, m_Center.Y - TempGaugeArcRadius, 2 * TempGaugeArcRadius, 2 * TempGaugeArcRadius))
					gp.Reverse()
					gp.AddEllipse(New Rectangle(m_Center.X - lineMinerValue, m_Center.Y - lineMinerValue, 2 * lineMinerValue, 2 * lineMinerValue))

				gp.Reverse()
				graphics.SetClip(gp)
				graphics.SetClip(RadialGauge.ClientRectangle)

				If RadialGauge.ShowScaleLabel Then
					If Me.RadialGauge.TextOrientation <> TextOrientation.Horizontal Then
						graphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias
						graphics.RotateTransform(90.0F + m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue))
					End If

					graphics.TranslateTransform(CType(m_Center.X + m_ScaleNumbersRadius * Math.Cos((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0f), Single), CType(m_Center.Y + m_ScaleNumbersRadius * Math.Sin((m_GaugeArcStart + countValue * m_GaugeArcEnd / (RadialGauge.MaximumValue - RadialGauge.MinimumValue)) * Math.PI / 180.0f), Single), System.Drawing.Drawing2D.MatrixOrder.Append)



					graphics.DrawString(valueText, RadialGauge.Font, New SolidBrush(Me.RadialGauge.ScaleLabelColor), -boundingBox.Width\2, -fontBoundY1 - (fontBoundY2 - fontBoundY1 + 1) / 2, StringFormat.GenericTypographic)
				End If

				countValue += RadialGauge.MajorDifference
			Loop
		End Sub

		End Class


{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/custom.jpeg)

### How to customize the start angle and sweep angle of the arc in radial gauge

It can be customized by using its properties named `StartAngle` and `SweepAngle`.

{% tabs %}

{% highlight C# %}

// Specifies the StartAngle of the arc.

this.radialGauge1.StartAngle = 150;

// Specifies the length of the arc.

this.radialGauge1.SweepAngle = 200;

{% endhighlight %}

{% highlight VB %}

' Specifies the StartAngle of the arc.

Me.radialGauge1.StartAngle = 150

' Specifies the length of the arc.

Me.radialGauge1.SweepAngle = 200

{% endhighlight %}

{% endtabs %}

![](Radial-Gauge_images/arc.png)




