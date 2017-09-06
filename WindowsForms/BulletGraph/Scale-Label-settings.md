---
layout: post
title: Features | Windows Forms | Syncfusion
description: features
platform: windowsforms
control: Bullet Graph
documentation: ug
---


# Scale Label settings

### Labels:

A quantitative scale label specifies the numeric value according to the major ticks in the range of the scale.

### Customizing Labels:

The label’s offset is changed by using the LabelOffset property. The foreground of the label is customized by setting LabelStroke. By setting LabelSize, the font size of the labels is modified. 

{% highlight c# %}

BulletGraph bullet = new BulletGraph();

bullet.Dock = DockStyle.Fill;

bullet.FeaturedMeasure = 5;

bullet.ComparativeMeasure = 7;

bullet.LabelOffset = 5;

bullet.LabelFontSize = 10;

bullet.LabelFormat = "#0 K";

bullet.LabelStroke =Color.Red;

bullet.MinorTicksPerInterval = 3;

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });

this.Controls.Add(bullet); 

{% endhighlight %} 

![](Features_images/Features_img11.png)

### Label Position

The labels in the scale are placed above or below the qualitative ranges by choosing the following options available in the LabelPosition property. 

* Below (Default)
* Above

{% highlight c# %}

BulletGraph bullet = new BulletGraph();

bullet.Dock = DockStyle.Fill;

bullet.FeaturedMeasure = 5;

bullet.ComparativeMeasure = 7;

bullet.LabelPosition = BulletGraphLabelsPosition.Above;

bullet.MinorTicksPerInterval = 3;

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });

this.Controls.Add(bullet);   

{% endhighlight %}

![](Features_images/Features_img12.png)