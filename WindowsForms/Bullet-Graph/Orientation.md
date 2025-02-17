---
layout: post
title: Orientation in Windows Forms Bullet Graph control | Syncfusion®
description: Learn about Orientation support in Syncfusion® Essential Studio® Windows Forms Bullet Graph control and more details.
platform: windowsforms
control: Bullet Graph
documentation: ug
---

# Orientation in Windows Forms Bullet Graph

The view of the Bullet Graph is changed by setting the Orientation property. Quantitative scale contains two major components: Ticks and Labels. The length of the quantitative scale is customized by using the QuantitativeScaleLength property. The direction of the quantitative scale is personalized by making use of the FlowDirection property it’s either Forward or Backward.

{% highlight c# %}

    BulletGraph bullet = new BulletGraph();

    bullet.Dock = DockStyle.Fill;

    bullet.FlowDirection = BulletGraphFlowDirection.Forward;

    bullet.Orientation = Orientation.Horizontal;

     bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 3, RangeStroke = Color.LightGray });

    bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 7, RangeStroke = Color.Gray });

    bullet.QualitativeRanges.Add(new QualitativeRange() { RangeEnd = 10, RangeStroke = Color.DarkGray });                    

    this.Controls.Add(bullet);

{% endhighlight %}

<table>
<tr>
<td>
{{' ![Windows Forms BulletGraph Features Image1](Features_images/Features_img1.png)' | markdownify }}

</td><td>
{{' ![Windows Forms BulletGraph Features Image2](Features_images/Features_img2.png)' | markdownify }}

</td></tr>
</table>
