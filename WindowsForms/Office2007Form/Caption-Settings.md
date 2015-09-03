---
layout: post
title: Caption-Settings
description: caption settings
platform: windowsforms
control: Office2007 Form
documentation: ug
---

# Caption Settings

The Office2007Form's caption can be aligned to left, right or center using CaptionAlign property. It font style can be specified in CaptionFont property.


{% highlight c# %}

this.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center;

this.CaptionFont = new System.Drawing.Font("Arial", 12.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight vbnet %}

Me.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center 

Me.CaptionFont = New System.Drawing.Font("Arial", 12.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0))) 

{% endhighlight %}

![](Caption-Settings_images/Caption-Settings_img1.jpeg)