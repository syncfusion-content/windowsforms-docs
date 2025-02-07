---
layout: post
title: Caption Settings in Windows Forms Bullet Graph control | Syncfusion<sup>®</sup>
description: Learn about Caption Settings support in Syncfusion<sup>®</sup> Windows Forms Bullet Graph control and more details.
platform: windowsforms
control: Bullet Graph
documentation: ug
---


# Caption Settings in Windows Forms Bullet Graph

The Caption for a Bullet Graph specifies a unique label describing the value represented in the BulletGraph. 

{% highlight c# %}

			BulletGraph bullet = new BulletGraph();

            bullet.Dock = DockStyle.Fill;

            bullet.Caption = " Revenue YTD \n $ in thousands";

            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

            this.Controls.Add(bullet);

{% endhighlight %}

![Features_img3](Features_images/Features_img3.png)

### Caption Position

The caption in the Bullet Graph is placed at the start or end of the quantitative scale by choosing from one of the two options available in the CaptionPosition property. They are:

* Near (Default)
* Far

{% highlight c# %}

     BulletGraph bullet = new BulletGraph();

     bullet.Dock = DockStyle.Fill;

     bullet.Caption = " Revenue YTD \n $ in thousands";

     bullet.CaptionPosition = BulletGraphCaptionPosition.Far;            bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

    bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

    bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

    this.Controls.Add(bullet);

{% endhighlight %}

![Features_img4](Features_images/Features_img4.png)
