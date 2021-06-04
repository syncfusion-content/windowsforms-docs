---
layout: post
title: Digital Gauge in Windows Forms Radial Gauge control | Syncfusion
description: Learn about Digital Gauge support in Syncfusion Windows Forms Radial Gauge (Gauge) control and more details.
platform: WindowsForms
control: Gauge
documentation: ug
---

# Digital Gauge in Windows Forms Radial Gauge (Gauge)

[DigitalGauge](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html) control is used to display alphanumeric characters in digital (LED Display) mode. It is used to display a range of values that uses character in combination with numbers.

## Key features

* **Segment spacing** - Provides option to set user defined spacing between segments through a float value.

* **Character type** - Provides option to display characters in different segment styles.

* **Character count** - Provides option to customize the number of characters to be displayed.

* **Customization option** - Supports color and visibility customization of all elements.

* **Visual style** - Supports rich set of visual styles to customize the look and feel.

**Getting started**

This section describes how to add [DigitalGauge](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html) control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#digital-gauge) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages)


**Creating simple application with DigitalGauge**

You can create the Windows Forms application with [DigitalGauge](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html) control as follows:

1. [Creating project](#creating-the-project)
2. [Add control via designer](#adding-control-via-designer)
3. [Add control manually using code](#adding-control-manually-using-code)

**Creating the project**

Create a new Windows Forms project in the Visual Studio to display the DigitalGauge with basic functionalities.

## Add control via designer

The [DigitalGauge](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html) control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Gauge.Windows.dll
* Syncfusion.Shared.Base.dll

![Drag and Drop Digital Gauge from Toolbox](Digital-Gauge_images/DigitalGauge_img2.png)

![Digital Gauge for Windows Forms with smart tag support for designer](Digital-Gauge_images/DigitalGauge_img3.png)


## Add control manually using code

To add control manually in C#, follow the given steps:

**Step 1** : Add the following required assembly references to the project:

* Syncfusion.Gauge.Windows.dll
* Syncfusion.Shared.Base.dll

**Step 2** : Include the namespaces **Syncfusion.Windows.Forms.Gauge**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Gauge;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Gauge

{% endhighlight  %}

{% endtabs %} 

**Step 3** : Create [DigitalGauge](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html) control instance and add it to the form.

{% tabs %}

{% highlight C# %}

DigitalGauge digitalGauge1 = new DigitalGauge();

this.Controls.Add(digitalGauge1);

{% endhighlight %}

{% highlight VB %}

Dim digitalGauge1 As DigitalGauge = New DigitalGauge

Me.Controls.Add(digitalGauge1)

{% endhighlight %}

{% endtabs %}

![Digital Gauge for Windows Forms](Digital-Gauge_images/DigitalGauge_img1.png)

##  Concepts and features

This section illustrates the features of the digital gauge with different visual styles and sample code. It contains the following topics:

* Visual styles
* Character Type
* Character Count
* Segment Spacing
* Show Invisible Segments
* Round Corner Radius

### Visual styles

The Gauge control for Windows Forms includes four stunning skins for professional representation of gauges. You can easily modify the look and feel of the gauge component using the [VisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_VisualStyle) property.

The styles are built-in for all gauges.

* Black
* Silver
* Blue
* Metro
* Office2016White
* Office2016Colorful
* Office2016DarkGray
* Office2016Black
* Custom

**Black**

This option helps to set the Black theme.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Black;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Black

{% endhighlight %}

{% endtabs %}

![Digital Gauge with black theme](Digital-Gauge_images/Digital-Gauge_img1.png)


**Blue**

This option helps to set the Blue theme.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Blue;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Blue

{% endhighlight %}

{% endtabs %}

![Office style Digital Gauge](Digital-Gauge_images/Digital-Gauge_img2.png)


**Silver**

This option helps to set the Silver theme.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Silver;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Silver

{% endhighlight %}

{% endtabs %}

![Digital Gauge with silver background](Digital-Gauge_images/Digital-Gauge_img3.png)


**Metro**

This option helps to set the Metro theme.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Metro;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Metro

{% endhighlight %}

{% endtabs %}

![Metro theme digital gauge](Digital-Gauge_images/Digital-Gauge_img4.png)

**Office2016White**

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

//Office2016White

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

'Office2016White

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016White

{% endhighlight %}

{% endtabs %}


 ![Office 2016 white theme digital gauge](Digital-Gauge_images/Digital-Gauge_img13.png)


**Office2016Colorful**

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

// Office2016Colorful

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'Office2016Colorful

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

 ![Office 2016 Colorful theme digital gauge](Digital-Gauge_images/Digital-Gauge_img16.png)

**Office2016DarkGray**

This option helps to set the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}

//Office2016DarkGray

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016DarkGray;

{% endhighlight %}

{% highlight VB %}

'Office2016DarkGray

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![Office 2016 dark gray theme digital gauge](Digital-Gauge_images/Digital-Gauge_img14.png)

**Office2016Black**

This option helps to set the office2016Black theme.

{% tabs %}

{% highlight C# %}

//Office2016Black

this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

'Office2016Black

Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![Office 2016 black theme digital gauge](Digital-Gauge_images/Digital-Gauge_img15.png)

**Custom**

 Gauge also provides an option to end user to create their own custom theme based on the requirement by setting the [VisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_VisualStyle) property as Custom.

 **Steps to customize the theme in design time**

 **Step 1:**  Need to add DigitalGauge control to Form Designer.


![Digital Gauge in designer](Digital-Gauge_images/Digital-Gauge_img17.png)

 **Step 2:** Set the VisualStyle as Custom.

![Customized Digital Gauge with smart tag](Digital-Gauge_images/Digital-Gauge_img18.png)

 **Step 3:** Need to add necessary Theme combination in ThemeBrush collection and it will update the Color customization details in DigitalGauge control.

![Customized Digital Gauge in designer](Digital-Gauge_images/Digital-Gauge_img19.png)

{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Gauge.DigitalGaugeThemeBrush digitalGaugeThemeBrush1 = new Syncfusion.Windows.Forms.Gauge.DigitalGaugeThemeBrush();
this.digitalGauge1 = new Syncfusion.Windows.Forms.Gauge.DigitalGauge();
this.digitalGauge1.BackgroundGradientEndColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
this.digitalGauge1.DisplayRecordIndex = 0;
this.digitalGauge1.ForeColor = System.Drawing.Color.Yellow;
this.digitalGauge1.FrameBorderColor = System.Drawing.Color.Red;
this.digitalGauge1.Location = new System.Drawing.Point(201, 106);
this.digitalGauge1.MaximumSize = new System.Drawing.Size(500, 180);
this.digitalGauge1.MinimumSize = new System.Drawing.Size(90, 90);
this.digitalGauge1.Name = "digitalGauge1";
this.digitalGauge1.Size = new System.Drawing.Size(180, 90);
this.digitalGauge1.TabIndex = 0;
digitalGaugeThemeBrush1.BackgroundGradientEndColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
digitalGaugeThemeBrush1.BackgroundGradientStartColor = System.Drawing.Color.FromArgb(((int)(((byte)(240)))), ((int)(((byte)(240)))), ((int)(((byte)(240)))));
digitalGaugeThemeBrush1.ForeColor = System.Drawing.Color.Yellow;
digitalGaugeThemeBrush1.FrameBorderColor = System.Drawing.Color.Red;
digitalGaugeThemeBrush1.InactiveTextColor = System.Drawing.Color.Transparent;digitalGaugeThemeBrush1.OuterFrameGradientEndColor = System.Drawing.Color.FromArgb(((int)(((byte)(172)))), ((int)(((byte)(172)))), ((int)(((byte)(172)))));
digitalGaugeThemeBrush1.OuterFrameGradientStartColor = System.Drawing.Color.FromArgb(((int)(((byte)(229)))), ((int)(((byte)(229)))), ((int)(((byte)(229)))));
this.digitalGauge1.ThemeBrush.Add(digitalGaugeThemeBrush1);
this.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Custom;

{% endhighlight %}

{% highlight VB %}

Dim digitalGaugeThemeBrush1 As Syncfusion.Windows.Forms.Gauge.DigitalGaugeThemeBrush =  New Syncfusion.Windows.Forms.Gauge.DigitalGaugeThemeBrush() 
Me.digitalGauge1 = New Syncfusion.Windows.Forms.Gauge.DigitalGauge()
Me.digitalGauge1.BackgroundGradientEndColor = System.Drawing.Color.FromArgb((CType(((CType((192), Byte))), Integer)), (CType(((CType((0), Byte))), Integer)), (CType(((CType((192), Byte))), Integer)))
Me.digitalGauge1.DisplayRecordIndex = 0
Me.digitalGauge1.ForeColor = System.Drawing.Color.Yellow
Me.digitalGauge1.FrameBorderColor = System.Drawing.Color.Red
Me.digitalGauge1.Location = New System.Drawing.Point(201, 106)
Me.digitalGauge1.MaximumSize = New System.Drawing.Size(500, 180)
Me.digitalGauge1.MinimumSize = New System.Drawing.Size(90, 90)
Me.digitalGauge1.Name = "digitalGauge1"
Me.digitalGauge1.Size = New System.Drawing.Size(180, 90)
Me.digitalGauge1.TabIndex = 0
digitalGaugeThemeBrush1.BackgroundGradientEndColor = System.Drawing.Color.FromArgb((CType(((CType((192), Byte))), Integer)), (CType(((CType((0), Byte))), Integer)), (CType(((CType((192), Byte))), Integer)))
digitalGaugeThemeBrush1.BackgroundGradientStartColor = System.Drawing.Color.FromArgb((CType(((CType((240), Byte))), Integer)), (CType(((CType((240), Byte))), Integer)), (CType(((CType((240), Byte))), Integer)))
digitalGaugeThemeBrush1.ForeColor = System.Drawing.Color.Yellow
digitalGaugeThemeBrush1.FrameBorderColor = System.Drawing.Color.Red
digitalGaugeThemeBrush1.InactiveTextColor = System.Drawing.Color.TransparentdigitalGaugeThemeBrush1.OuterFrameGradientEndColor = System.Drawing.Color.FromArgb((CType(((CType((172), Byte))), Integer)), (CType(((CType((172), Byte))), Integer)), (CType(((CType((172), Byte))), Integer)))
digitalGaugeThemeBrush1.OuterFrameGradientStartColor = System.Drawing.Color.FromArgb((CType(((CType((229), Byte))), Integer)), (CType(((CType((229), Byte))), Integer)), (CType(((CType((229), Byte))), Integer)))
Me.digitalGauge1.ThemeBrush.Add(digitalGaugeThemeBrush1)
Me.digitalGauge1.VisualStyle = Syncfusion.Windows.Forms.Gauge.ThemeStyle.Custom


{% endhighlight %}

{% endtabs %}

**Output:**

![Customized Digital Gauge with gradient background](Digital-Gauge_images/Digital-Gauge_img21.png)

### Character type

Character types are used to customize the digital segments.

#### Customizing scales

You can customize the segments in the digital gauge using the [CharacterType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_CharacterType) property.

Different segments can be applied using the [CharacterType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_CharacterType) property. The digital gauge control contains four segment types:

* Dot matrix
* Seven segments
* Fourteen segments
* Sixteen segments

#### Dot matrix

In a digital gauge, the value can be displayed in dot matrix format by setting the character type as DotMatrixSegment.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.DotMatrixSegment;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.DotMatrixSegment

{% endhighlight %}

{% endtabs %}

![Digital gauge with dotted character](Digital-Gauge_images/Digital-Gauge_img5.png)

#### Seven segments

In a digital gauge, the value can be displayed in a seven-segment format by setting the character type as SevenSegment.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SevenSegment;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SevenSegment

{% endhighlight %}

{% endtabs %}

![Digital gauge with seven segment character](Digital-Gauge_images/Digital-Gauge_img6.png)

#### Fourteen segments

In a digital gauge, the value can be displayed in a fourteen-segment format by setting the character type as FourteenSegment.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.FourteenSegment;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.FourteenSegment

{% endhighlight %}

{% endtabs %}

![Digital gauge with fourteen segment character](Digital-Gauge_images/Digital-Gauge_img7.png)


#### Sixteen segments

In a digital gauge, the value can be displayed in a sixteen-segment format by setting the character type as SixteenSegment.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SixteenSegment;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.CharacterType = Syncfusion.Windows.Forms.Gauge.CharacterType.SixteenSegment

{% endhighlight %}

{% endtabs %}

![Digital gauge with sixteen segment character](Digital-Gauge_images/Digital-Gauge_img8.png)

### Character count

The [CharacterCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_CharacterCount) property can be used to restrict the number of characters that can be displayed in a digital gauge.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.CharacterCount = 4;

this.digitalGauge1.Value = “123456”;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.CharacterCount = 4
Me.digitalGauge1.Value = 123456

{% endhighlight %}

{% endtabs %}

![Digital gauge with four characters](Digital-Gauge_images/Digital-Gauge_img9.png)

### Segment spacing

The [SegmentSpacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_SegmentSpacing) property is used to determine the spacing between the characters displayed in the digital gauge.

{% tabs %}

{% highlight C# %}

  this.digitalGauge1.CharacterCount = 2;

  this.digitalGauge1.OverrideFontSize = false;

  this.digitalGauge1.Value = “123456”;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.CharacterCount = 2

Me.digitalGauge1.OverrideFontSize = false
Me.digitalGauge1.Value = 123456

{% endhighlight %}

{% endtabs %}

![Digital gauge with space between segments](Digital-Gauge_images/Digital-Gauge_img10.png)

### Show visible segments

The [ShowInvisibleSegments](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_ShowInvisibleSegments) property can be enabled to make the segments that are not drawn visible. This property can be disabled by setting it to `false`.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.ShowInvisibleSegments = true;

{% endhighlight %}

{% highlight VB %}

 Me.digitalGauge1.ShowInvisibleSegments = true

{% endhighlight %}

{% endtabs %}

![Digital guage value showing invisible segments](Digital-Gauge_images/Digital-Gauge_img11.png)

### RoundCornerRadius

The [RoundCornerRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_RoundCornerRadius) property of the digital gauge is used to draw digital gauge with rounded edges.

{% tabs %}

{% highlight C# %}

this.digitalGauge1.RoundCornerRadius = 50;

{% endhighlight %}

{% highlight VB %}

Me.digitalGauge1.RoundCornerRadius = 50

{% endhighlight %}

{% endtabs %}

![Digital gauge frame with rounder corners](Digital-Gauge_images/Digital-Gauge_img12.png)

### Data binding

You can bind any data source to the digital gauge and map an index of a record to represent the actual value in the gauge. The [DisplayMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_DisplayMember) and [DisplayRecordIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Gauge.DigitalGauge.html#Syncfusion_Windows_Forms_Gauge_DigitalGauge_DisplayRecordIndex) properties map the DataColumn and DataRow of the bound data source, respectively, to the Gauge control. Data-bound gauges support high frequency data updates.

{% highlight C# %}
this.digitalGauge1.DataSource = dataTable;
this.digitalGauge1.DisplayRecordIndex = [Row Index];
this.digitalGauge1.DisplayMember = [column name];
{% endhighlight %}

