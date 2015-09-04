---
layout: post
title: Grid-Model-Options
description: grid model options 
platform: windowsforms
control: Tools
documentation: ug
---

# Grid Model Options 

This section provides information on how to write syntax for the following GridModel Options:

* ActivateCurrentCellBehavior
* AllowScrollCurrentCellInView
* AlphaBlendSelectionColor
* ClickedOnDisabledCellBehavior
* ShowCurrentCellBorderBehavior
* DefaultGridBorderStyle

## Activating Current Cell Behavior

The following code illustrates how to activate current cell behavior:


{% highlight c# %}

this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;

{% endhighlight %}

## Allow scroll for Current cell view

The following code illustrates how to allow scroll for current cell view:

this.gridGroupingControl1.AllowScrollCurrentCellInView = GridScrollCurrentCellReason.Activate;

{% highlight c# %}



{% endhighlight %}

## Alpha Blend Selection Color

The following code illustrates how to select alpha blend selection color: 

{% highlight c# %}

this.gridGroupingControl1.AlphaBlendSelectionColor = Color.Red;

{% endhighlight %}

## ClickedOnDisabledCellBehavior

The following code illustrates how to define the current cell behavior when disabled cell is clicked: 

{% highlight c# %}

this.gridGroupingControl1.ClickedOnDisabledCellBehavior = GridClickedOnDisabledCellBehavior.Default;

{% endhighlight %}



## Show Current Cell Border Behavior

The following code illustrates how to show current cell border behavior: 

{% highlight c# %}

this.gridGroupingControl1.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.HideAlways;

{% endhighlight %}



## Default Grid Border Style

The following code illustrates how to set default grid border style: 


{% highlight c# %}

this.gridGroupingControl1.DefaultGridBorderStyle = GridBorderStyle.None;

{% endhighlight %}




