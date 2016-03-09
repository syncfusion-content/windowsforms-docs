---
layout: post
title: Digital-Gauge | WindowsForms | Syncfusion
description: digital gauge
platform: WindowsForms
control: Gauge
documentation: ug
---

# Digital Gauge

Digital gauges are perfect for displaying alphanumeric values. All the elements in a digital gauge, including the CharacterCount, CharacterType, RoundCornerRadius, and ShowInvisibleSegments, can be fully customized with data-binding support.

The digital gauge control includes the following elements: SegmentSpacing, ShowInvisibleSegments, Value, and VisualStyle. All the elements are optional for displaying the value. 

### Feature Summary

Here is a brief overview of various features of the DigitalGauge control:

* SegmentSpacing - Specifies the space between the gauge segments. 
* VisualStyle - Allows you to specify the visual style for the digital gauge.
* CharacterType - Provides different segment styles for the digital gauge.
* CharacterCount - Provides the number of characters that can be displayed.

##  Concepts and Features


This section illustrates the features of the digital gauge with different visual styles and sample code. It contains the following topics:

* Digital Gauge Visual Style
* Character Type
* Character Count
* Segment Spacing
* Show Invisible Segments
* Round Corner Radius

### Visual Styles


Different visual styles can be applied using the VisualStyle property. The Digital Gauge control features five visual styles:

* Black
* Silver
* Blue
* Metro
* Default

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


##### Code Sample

{% highlight c# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Black;


{% endhighlight %}


{% highlight vbnet %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Black

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img1.png)





##### Code Sample

{% highlight c# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Blue;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Blue

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img2.png)



##### Code Sample

{% highlight c# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Silver;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Silver

{% endhighlight %}


![](Digital-Gauge_images/Digital-Gauge_img3.png)



#####  Code Sample

{% highlight c# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Metro;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Metro

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img4.png)



### Character Type

Character types are used to customize the digital segments. 

#### Customizing Scales

You can customize the segments in the digital gauge using the following property:

<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
CharacterType</td><td>
enum</td><td>
Gets or sets the character type.</td></tr>
</table>


Different segments can be applied using the CharacterType property. The digital gauge control contains four segment types:

* Dot matrix
* Seven segments
* Fourteen segments
* Sixteen segments

#### Dot Matrix


In a digital gauge, the value can be displayed in dot matrix format by setting the character type as DotMatrixSegment.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.DotMatrixSegment;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.DotMatrixSegment

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img5.png)



#### Seven Segments

In a digital gauge, the value can be displayed in a seven-segment format by setting the character type as SevenSegment.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SevenSegment;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SevenSegment

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img6.png)



#### Fourteen Segments

In a digital gauge, the value can be displayed in a fourteen-segment format by setting the character type as FourteenSegment.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.FourteenSegment;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.FourteenSegment

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img7.png)





#### Sixteen Segments

In a digital gauge, the value can be displayed in a sixteen-segment format by setting the character type as SixteenSegment.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SixteenSegment;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SixteenSegment

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img8.png)



### Character Count

The CharacterCount property can be used to restrict the number of characters that can be displayed in a digital gauge.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.CharacterCount = 4;

this.digitalGauge1.Value = “123456”;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.CharacterCount = 4
Me.digitalGauge1.Value = 123456

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img9.png)



### Segment Spacing

The SegmentSpacing property is used to determine the spacing between the characters displayed in the digital gauge.

##### Code Sample

{% highlight c# %}

  this.digitalGauge1.CharacterCount = 2;

  this.digitalGauge1.OverrideFontSize = false;

  this.digitalGauge1.Value = “123456”;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.CharacterCount = 2

Me.digitalGauge1.OverrideFontSize = false
Me.digitalGauge1.Value = 123456

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img10.png)



### Show Visible Segments 

The ShowInvisibleSegments property can be enabled to make the segments that are not drawn visible. This property can be disabled by setting it to false.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.ShowInvisibleSegments = true;

{% endhighlight %}

{% highlight vbnet %}

 Me.digitalGauge1.ShowInvisibleSegments = true

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img11.png)



### RoundCornerRadius

The RoundCornerRadius property of the digital gauge is used to draw digital gauge with rounded edges.

##### Code Sample

{% highlight c# %}

this.digitalGauge1.RoundCornerRadius = 50;

{% endhighlight %}

{% highlight vbnet %}

Me.digitalGauge1.RoundCornerRadius = 50

{% endhighlight %}

![](Digital-Gauge_images/Digital-Gauge_img12.png)



### Data Binding

You can bind any data source to the digital gauge and map an index of a record to represent the actual value in the gauge. The DisplayMember and DisplayRecordIndex properties map the DataColumn and DataRow of the bound data source, respectively, to the Gauge control. Data-bound gauges support high frequency data updates.

##### Example

{% highlight c# %}

this.digitalGauge1.DataSource = dataTable;

            this.digitalGauge1.DisplayRecordIndex = [Row Index];

            this.digitalGauge1.DisplayMember = [column name];

{% endhighlight %}

