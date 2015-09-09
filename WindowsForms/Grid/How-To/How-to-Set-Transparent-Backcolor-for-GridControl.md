---
layout: post
title: How-to-Set-Transparent-Backcolor-for-GridControl
description: how to set transparent backcolor for gridcontrol
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Set Transparent Backcolor for GridControl

## Introduction

Setting the transparent [backcolor](/WindowsForms/Grid/Cell-Style-Architecture#backcolor) for a GridControl can be done easily with simple code.

### Example

{% highlight c# %}



//Sets up Transparent Background.

this.gridControl1.SupportsTransparentBackColor = true;
this.gridControl1.TransparentBackground = true;



//Sets Color for the Transparent Background.
this.gridControl1.Properties.BackgroundColor = Color.FromArgb(0, 1, 1, 1);
this.gridControl1.BackColor = Color.FromArgb(0, SystemColors.Window);

{% endhighlight  %}

{% highlight vbnet %}



'Sets up Transparent Background.

Me.gridControl1.SupportsTransparentBackColor = True
Me.gridControl1.TransparentBackground = True



'Sets Color for the Transparent Background.
Me.gridControl1.Properties.BackgroundColor = Color.FromArgb(0, 1, 1, 1)
Me.gridControl1.BackColor = Color.FromArgb(0, SystemColors.Window)


{% endhighlight  %}
