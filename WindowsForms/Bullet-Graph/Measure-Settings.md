---
layout: post
title: Measure Settings in Windows Forms Bullet Graph control | Syncfusion<sup>®</sup>
description: Learn about Measure Settings (Featured / Comparative Measure) support in Syncfusion<sup>®</sup> Windows Forms Bullet Graph control and more details.
platform: windowsforms
control: Bullet Graph
documentation: ug
---


# Measure Settings in Windows Forms Bullet Graph

### Featured Measure:

Featured Measure displays the primary data, or the current value of the data that you are measuring. It should usually be encoded as a bar, like the bar on a bar graph, and be prominent.

#### Customizing Featured Measure:

The value of the Featured Measure of the BulletGraph is set by the FeaturedMeasure property. By setting the FeaturedMeasureBarStroke property, the stroke of the FeatureMeasure bar is customized. The thickness of the Featured Measure bar is modified by using FeaturedMeasureBarStrokeThickness.


{% highlight c# %}

            BulletGraph bullet = new BulletGraph();

            bullet.Dock = DockStyle.Fill;

            bullet.FeaturedMeasure = 5;

            bullet.FeaturedMeasureBarStroke = Color.Red;

            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bullet);

{% endhighlight %}

![Features_img5](Features_images/Features_img5.png)

### Comparative Measure:

Comparative Measure should be less visually dominant than the Featured Measure. It should always be encoded as a short line that runs perpendicular to the orientation of the graph. A good example is a target for YTD revenue. Whenever the Featured Measure intersects a Comparative Measure, the Comparative Measure appears behind the Featured Measure.

#### Customizing Comparative Measure:

The value of the Comparative Measure is set by using the ComparativeMeasure property. By setting the ComparativeMeasureSymbolStroke property, the stroke of the Comparative Measure symbol is customized. The thickness of the Comparative Measure symbol is modified by using ComparativeMeasureSymbolStrokeThickness.

{% highlight c# %}

BulletGraph bullet = new BulletGraph();

bullet.Dock = DockStyle.Fill;

bullet.ComparativeMeasure = 5;

bullet.ComparativeMeasureSymbolStroke = Color.Red;

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

this.Controls.Add(bullet);

{% endhighlight %}

![Features_img6](Features_images/Features_img6.png)
