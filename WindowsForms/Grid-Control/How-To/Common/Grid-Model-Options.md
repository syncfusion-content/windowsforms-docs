---
layout: post
title: Grid-Model-Options in Windows Forms GridControl | Syncfusion
description: Learn here all about grid model options support of Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# Grid Model Options in Windows Forms GridControl

This section provides information on how to write syntax for the following GridModel Options:

* ActivateCurrentCellBehavior
* AllowScrollCurrentCellInView
* AlphaBlendSelectionColor
* ClickedOnDisabledCellBehavior
* ShowCurrentCellBorderBehavior
* DefaultGridBorderStyle

## Activating current cell behavior

The following code illustrates how to activate current cell behavior:

{% tabs %}
{% highlight c# %}

this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;

{% endhighlight %}

{% highlight vb %}

Me.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll

{% endhighlight %}
{% endtabs %}

## Allow scroll for current cell view

The following code illustrates how to allow scroll for current cell view:

{% tabs %}
{% highlight c# %}

this.gridGroupingControl1.AllowScrollCurrentCellInView = GridScrollCurrentCellReason.Activate;

{% endhighlight %}

{% highlight vb %}

Me.gridGroupingControl1.AllowScrollCurrentCellInView = GridScrollCurrentCellReason.Activate

{% endhighlight %}
{% endtabs %}

## Alpha blend selection color

The following code illustrates how to select alpha blend selection color: 

{% tabs %}
{% highlight c# %}

this.gridGroupingControl1.AlphaBlendSelectionColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

Me.gridGroupingControl1.AlphaBlendSelectionColor = Color.Red

{% endhighlight %}
{% endtabs %}

## ClickedOnDisabledCellBehavior

The following code illustrates how to define the current cell behavior when disabled cell is clicked: 

{% tabs %}
{% highlight c# %}

this.gridGroupingControl1.ClickedOnDisabledCellBehavior = GridClickedOnDisabledCellBehavior.Default;

{% endhighlight %}

{% highlight vb %}

Me.gridGroupingControl1.ClickedOnDisabledCellBehavior = GridClickedOnDisabledCellBehavior.Default

{% endhighlight %}
{% endtabs %}

## Show current cell border behavior

The following code illustrates how to show current cell border behavior: 

{% tabs %}
{% highlight c# %}

this.gridGroupingControl1.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.HideAlways;

{% endhighlight %}

{% highlight vb %}

Me.gridGroupingControl1.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.HideAlways

{% endhighlight %}
{% endtabs %}

## Default Grid border style

The following code illustrates how to set default grid border style: 

{% tabs %}
{% highlight c# %}

this.gridGroupingControl1.DefaultGridBorderStyle = GridBorderStyle.None;

{% endhighlight %}

{% highlight vb %}

Me.gridGroupingControl1.DefaultGridBorderStyle = GridBorderStyle.None

{% endhighlight %}
{% endtabs %}
