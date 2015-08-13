---
layout: post
title: Features
description: features
platform: WindowsForms
control: Bullet Graph
documentation: ug
---

# Range Settings 

Ranges for a Bullet Graph are a collection of qualitative ranges. A qualitative range is a visual element that ends at a specified RangeEnd at the start of the previous range’s RangeEnd. The qualitative ranges are arranged according to each RangeEnd value.

### Customizing Range:

The width of the ranges are customized by setting the QualitativeRangesSize property. By changing RangeStroke of the qualitative range, the stroke of the range is personalized. By setting the RangeOpacity of the qualitative range, the opacity of the range is modified.

{% highlight c# %}

            BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;            

            bulletgraph.FeaturedMeasure = 4.5;

            bulletgraph.ComparativeMeasure = 7;      

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });            

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_Elements.png](Features_images/Features_img7.png)

### Binding RangeStroke to Ticks and Labels:

By setting BindWithRangeStrokeToLabels, the stroke of the labels is set related to the stroke of the specified ranges. Similarly, by setting BindWithRangeStrokeToTicks, the stroke of the ticks is set related to the stroke of the specified ranges.

{% highlight c# %}

            BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FeaturedMeasure = 4.5;

            bulletgraph.ComparativeMeasure = 7;

            bulletgraph.MajorTickStroke = Color.Black;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });  

			bulletgraph.BindRangeStrokeToTicks = true;

            bulletgraph.BindRangeStrokeToLabels = true;          

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_BindRangeStrokeToTicksLabels.png](Features_images/Features_img8.png)
