---
layout: post
title: How-to-customize-the-appearance-of-ProgressBarAdv | WindowsForms | Syncfusion
description: how to customize the appearance of progressbaradv
platform: WindowsForms
control: Notification Package 
documentation: ug
---

# How to customize the appearance of ProgressBarAdv?

The ProgressBarAdv control appearance can be customized as like in Win 8 application. You can achieve this using the following code example.

{% highlight c# %}

            this.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.Metro;

            this.progressBarAdv1.GradientStartColor = Color.FromArgb(16, 138, 66);

            this.progressBarAdv1.GradientEndColor = Color.FromArgb(16, 138, 66);

            this.progressBarAdv1.BackGradientStartColor = Color.FromArgb(206, 206, 208);

            this.progressBarAdv1.BackGradientEndColor = Color.FromArgb(206, 206, 208);

            this.progressBarAdv1.BorderColor = Color.FromArgb(206, 206, 208);

{% endhighlight %}

{% highlight vbnet %}
 
             Me.ProgressBarAdv1.ProgressStyle = ProgressBarStyles.Metro

             Me.ProgressBarAdv1.GradientStartColor = Color.FromArgb(16, 138, 66)

             Me.ProgressBarAdv1.GradientEndColor = Color.FromArgb(16, 138, 66)

             Me.ProgressBarAdv1.BackGradientStartColor = Color.FromArgb(206, 206, 208)

             Me.ProgressBarAdv1.BackGradientEndColor = Color.FromArgb(206, 206, 208)

             Me.ProgressBarAdv1.Size = New Size(400, 10)


{% endhighlight %}


![](Overview_images/Overview_img29.png) 