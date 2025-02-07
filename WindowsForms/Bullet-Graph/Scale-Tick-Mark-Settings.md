---
layout: post
title: Scale Tick Mark in Windows Forms Bullet Graph control | Syncfusion<sup>®</sup>
description: Learn about Scale Tick Mark Settings support in Syncfusion<sup>®</sup> Windows Forms Bullet Graph control and more details.
platform: windowsforms
control: Bullet Graph
documentation: ug
---

# Scale Tick Mark Settings in Windows Forms Bullet Graph

Quantitative scale is displayed with two types of ticks: 

Major ticks, the primary scale indicators.

Minor ticks, the secondary scale indicators that fall in between the major ticks.

### Customizing Ticks:

The stroke of the major and minor ticks is customized by setting the MajorTickStroke and MinorTickStroke properties. The size is modified by using the MajorTickSize and MinorTickSize properties. By setting MajorTickStrokeThickness and MinorTickStrokeThickness, the stroke’s thickness is customized.

{% highlight c# %}

BulletGraph bullet = new BulletGraph();

bullet.Dock = DockStyle.Fill;            

bullet.FeaturedMeasure = 4.5;

bullet.ComparativeMeasure = 7;            

bullet.MajorTickStroke = Color.Black;

bullet.MajorTickSize = 15;

bullet.MinorTickSize = 10;

bullet.MajorTickStroke = Color.Red;

bullet.MinorTickStroke = Color.Green;

bullet.MinorTicksPerInterval = 3;

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });  

this.Controls.Add(bullet);

{% endhighlight %}

![Features_img9](Features_images/Features_img9.png)

### TickPosition:

The ticks in the scale are placed above or below the ranges of the quantitative scale by choosing the options available in the TickPosition property. 

They are:

* Below (Default)
* Above
* Cross

{% highlight c# %}

BulletGraph bullet = new BulletGraph();

bullet.Dock = DockStyle.Fill;

bullet.ComparativeMeasure = 7;

bullet.TickPosition = BulletGraphTicksPosition.Cross;

bullet.MajorTickSize = 30;

bullet.MinorTickSize = 30;

bullet.MinorTicksPerInterval = 3;

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });                          

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });               

this.Controls.Add(bullet);

{% endhighlight %}

![Features_img10](Features_images/Features_img10.png)
