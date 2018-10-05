---
layout: post
title: How-to-show-or-hide-the-tabs-in-the-series-style-d | Windows Forms | Syncfusion
description: how to show or hide the tabs in the series style dialog in a chart
platform: windowsforms
control: chart
documentation: ug
---

# How to show or hide the tabs in the series style dialog in a Chart

The tabs in the series style dialog can be shown or hidden using the below properties settings.

{% tabs %}

{% highlight c# %}

this.chartControl1.StyleDialogOptions.ShowBorderTab = true;

this.chartControl1.StyleDialogOptions.ShowTextTab = false;

this.chartControl1.StyleDialogOptions.ShowFancyToolTipsTab = false;

this.chartControl1.StyleDialogOptions.ShowInteriorTab = false;

this.chartControl1.StyleDialogOptions.ShowShadowTab = false;

this.chartControl1.StyleDialogOptions.ShowSymbolTab = false;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.StyleDialogOptions.ShowBorderTab = True

Me.chartControl1.StyleDialogOptions.ShowTextTab = False

Me.chartControl1.StyleDialogOptions.ShowFancyToolTipsTab = False

Me.chartControl1.StyleDialogOptions.ShowInteriorTab = False

Me.chartControl1.StyleDialogOptions.ShowShadowTab = False

Me.chartControl1.StyleDialogOptions.ShowSymbolTab = False

{% endhighlight %}

{% endtabs %}

