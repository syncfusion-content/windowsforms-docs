---
layout: post
title: Rendering Mode
description: This section describes the types of smith chart.
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# Rendering Mode

Smith chart provides options for plotting both impedance and admittance by using the [`RenderingMode`](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.SfSmithChart~RenderingMode.html) property.

By using the rendering mode, you can change the type of the Smith chart. The default mode of Smith chart is impedance.

## Impedance Smith chart	

Impedance Smith chart is composed of two families of circles, normalized resistance circles, and normalized reactance curves.

Positive values of reactance lie on the upper region whereas negative values lie on the lower region of Smith chart.

{% tabs %}

{% highlight c# %}

SfSmithChart chart = new SfSmithChart();

chart.RenderingMode = RenderingMode.Impedance;

{% endhighlight %}

{% highlight vb.net %}

Dim chart As New SfSmithChart()

chart.RenderingMode = RenderingMode.Impedance

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Impedance.png](RenderingMode_images/RenderingMode_img1.jpeg)


## Admittance Smith chart

Admittance Smith chart is composed of two families of circles, normalized conductance circles, and normalized susceptance curves.

Positive values of susceptance lie on the lower region whereas negative values lie on the upper region of Smith chart.

{% tabs %}

{% highlight c# %}

SfSmithChart chart = new SfSmithChart();

chart.RenderingMode = RenderingMode.Admittance;

{% endhighlight %}

{% highlight vb.net %}

Dim chart As New SfSmithChart()

chart.RenderingMode = RenderingMode.Admittance

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Admittance.png](RenderingMode_images/RenderingMode_img2.jpeg)


