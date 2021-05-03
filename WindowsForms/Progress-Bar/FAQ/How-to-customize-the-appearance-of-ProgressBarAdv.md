---
layout: post
title: How to customize the appearance of ProgressBarAdv | Syncfusion
description: How to customize the appearance of Syncfusion Essential Studio ProgressBarAdv control, its elements and more details.
platform: WindowsForms
control: Notification Package 
documentation: ug
---

# customize the appearance of ProgressBarAdv

This page explains How to customize the appearance of ProgressBarAdv and more details.

## How to customize the appearance of ProgressBarAdv?

The ProgressBarAdv control appearance can be customized as like in Win 8 application. You can achieve this using the following code example.

{% tabs %}

{% highlight C# %}

            this.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.Metro;

            this.progressBarAdv1.GradientStartColor = Color.FromArgb(16, 138, 66);

            this.progressBarAdv1.GradientEndColor = Color.FromArgb(16, 138, 66);

            this.progressBarAdv1.BackGradientStartColor = Color.FromArgb(206, 206, 208);

            this.progressBarAdv1.BackGradientEndColor = Color.FromArgb(206, 206, 208);

            this.progressBarAdv1.BorderColor = Color.FromArgb(206, 206, 208);

{% endhighlight %}

{% highlight VB %}
 
             Me.ProgressBarAdv1.ProgressStyle = ProgressBarStyles.Metro

             Me.ProgressBarAdv1.GradientStartColor = Color.FromArgb(16, 138, 66)

             Me.ProgressBarAdv1.GradientEndColor = Color.FromArgb(16, 138, 66)

             Me.ProgressBarAdv1.BackGradientStartColor = Color.FromArgb(206, 206, 208)

             Me.ProgressBarAdv1.BackGradientEndColor = Color.FromArgb(206, 206, 208)

             Me.ProgressBarAdv1.Size = New Size(400, 10)


{% endhighlight %}

{% endtabs %}

![Overview_img29](Overview_images/Overview_img29.png)
