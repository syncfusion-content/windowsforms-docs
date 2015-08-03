---
layout: post
title: Features
description: features
platform: WindowsForms
control: Bullet Graph
documentation: ug
---

# Features

## Orientation

The view of the Bullet Graph is changed by setting the Orientation property. Quantitative scale contains two major components: Ticks and Labels. The length of the quantitative scale is customized by using the QuantitativeScaleLength property. The direction of the quantitative scale is personalized by making use of the FlowDirection property it’s either Forward or Backward.

{% highlight c# %}

			BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FlowDirection = BulletGraphFlowDirection.Forward;

            bulletgraph.Orientation = Orientation.Horizontal;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bulletgraph);

{% endhighlight %}

<table>
<tr>
<td>
{{' ![D:/Help UGs/BulletGraph/WF/BG_Ver.bmp](Features_images/Features_img1.png)' | markdownify }}

</td><td>
{{' ![D:/Help UGs/BulletGraph/WF/BG_Hor.bmp](Features_images/Features_img2.png)' | markdownify }}

</td></tr>
</table>

## Caption Settings

The Caption for a Bullet Graph specifies a unique label describing the value represented in the BulletGraph. 

{% highlight c# %}

			BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.Caption = " Revenue YTD \n $ in thousands";

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_Caption.bmp](Features_images/Features_img3.png)

### Caption Position

The caption in the Bullet Graph is placed at the start or end of the quantitative scale by choosing from one of the two options available in the CaptionPosition property. They are:

* Near (Default)
* Far

{% highlight c# %}

            BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.Caption = " Revenue YTD \n $ in thousands";

            bulletgraph.CaptionPosition = BulletGraphCaptionPosition.Far;            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_Caption_Far.bmp](Features_images/Features_img4.png)



## Measure Settings (Featured / Comparative Measure)

### Featured Measure:

Featured Measure displays the primary data, or the current value of the data that you are measuring. It should usually be encoded as a bar, like the bar on a bar graph, and be prominent.

#### Customizing Featured Measure:

The value of the Featured Measure of the BulletGraph is set by the FeaturedMeasure property. By setting the FeaturedMeasureBarStroke property, the stroke of the FeatureMeasure bar is customized. The thickness of the Featured Measure bar is modified by using FeaturedMeasureBarStrokeThickness.


{% highlight c# %}

            BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FeaturedMeasure = 5;

            bulletgraph.FeaturedMeasureBarStroke = Color.Red;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_FM.bmp](Features_images/Features_img5.png)

### Comparative Measure:

Comparative Measure should be less visually dominant than the Featured Measure. It should always be encoded as a short line that runs perpendicular to the orientation of the graph. A good example is a target for YTD revenue. Whenever the Featured Measure intersects a Comparative Measure, the Comparative Measure appears behind the Featured Measure.

#### Customizing Comparative Measure:

The value of the Comparative Measure is set by using the ComparativeMeasure property. By setting the ComparativeMeasureSymbolStroke property, the stroke of the Comparative Measure symbol is customized. The thickness of the Comparative Measure symbol is modified by using ComparativeMeasureSymbolStrokeThickness.

{% highlight c# %}

            BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.ComparativeMeasure = 5;

            bulletgraph.ComparativeMeasureSymbolStroke = Color.Red;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_CM.bmp](Features_images/Features_img6.png)

## Range Settings 

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

## Scale Tick Mark Settings

Quantitative scale is displayed with two types of ticks: 

Major ticks, the primary scale indicators.

Minor ticks, the secondary scale indicators that fall in between the major ticks.

### Customizing Ticks:

The stroke of the major and minor ticks is customized by setting the MajorTickStroke and MinorTickStroke properties. The size is modified by using the MajorTickSize and MinorTickSize properties. By setting MajorTickStrokeThickness and MinorTickStrokeThickness, the stroke’s thickness is customized.

{% highlight c# %}

			BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;            

            bulletgraph.FeaturedMeasure = 4.5;

            bulletgraph.ComparativeMeasure = 7;            

            bulletgraph.MajorTickStroke = Color.Black;

            bulletgraph.MajorTickSize = 15;

            bulletgraph.MinorTickSize = 10;

            bulletgraph.MajorTickStroke = Color.Red;

            bulletgraph.MinorTickStroke = Color.Green;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });  

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_Tick.png](Features_images/Features_img9.png)

### TickPosition:

The ticks in the scale are placed above or below the ranges of the quantitative scale by choosing the options available in the TickPosition property. 

They are:

* Below (Default)
* Above
* Cross

{% highlight c# %}

			BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.ComparativeMeasure = 7;

            bulletgraph.TickPosition = BulletGraphTicksPosition.Cross;

            bulletgraph.MajorTickSize = 30;

            bulletgraph.MinorTickSize = 30;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });                          

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });               

            this.Controls.Add(bulletgraph);

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_TickPos.bmp](Features_images/Features_img10.png)

## Scale Label settings

### Labels:

A quantitative scale label specifies the numeric value according to the major ticks in the range of the scale.

### Customizing Labels:

The label’s offset is changed by using the LabelOffset property. The foreground of the label is customized by setting LabelStroke. By setting LabelSize, the font size of the labels is modified. 

{% highlight c# %}

			BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FeaturedMeasure = 5;

            bulletgraph.ComparativeMeasure = 7;

            bulletgraph.LabelOffset = 5;

            bulletgraph.LabelFontSize = 10;

            bulletgraph.LabelFormat = "#0 K";

            bulletgraph.LabelStroke =Color.Red;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });

            this.Controls.Add(bulletgraph); 

{% endhighlight %} 

![D:/Help UGs/BulletGraph/WF/BG_Label.bmp](Features_images/Features_img11.png)

### Label Position

The labels in the scale are placed above or below the qualitative ranges by choosing the following options available in the LabelPosition property. 

* Below (Default)
* Above

{% highlight c# %}

			BulletGraph bulletgraph = new BulletGraph();

            bulletgraph.Dock = DockStyle.Fill;

            bulletgraph.FeaturedMeasure = 5;

            bulletgraph.ComparativeMeasure = 7;

            bulletgraph.LabelPosition = BulletGraphLabelsPosition.Above;

            bulletgraph.MinorTicksPerInterval = 3;

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 4, RangeCaption = "Bad", RangeStroke = Color.Red });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeCaption = "Satisfactory", RangeStroke = Color.Yellow });

            bulletgraph.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeCaption = "Good", RangeStroke = Color.Green });

            this.Controls.Add(bulletgraph);   

{% endhighlight %}

![D:/Help UGs/BulletGraph/WF/BG_LabelPos.bmp](Features_images/Features_img12.png)