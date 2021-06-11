---
layout: post
title: How to set transparent BackColor for GridControl | Syncfusion
description: Learn here all about how to set transparent backcolor for gridcontrol of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to set transparent BackColor for GridControl

Setting the transparent [BackColor](/windowsforms/Grid/Cell-Style-Architecture#backcolor) for a GridControl can be done easily with simple code.

{% tabs %}
{% highlight c# %}

//Sets up Transparent Background.
this.gridControl1.SupportsTransparentBackColor = true;
this.gridControl1.TransparentBackground = true;

//Sets Color for the Transparent Background.
this.gridControl1.Properties.BackgroundColor = Color.FromArgb(0, 1, 1, 1);
this.gridControl1.BackColor = Color.FromArgb(0, SystemColors.Window);

{% endhighlight  %}

{% highlight vb %}

'Sets up Transparent Background.
Me.gridControl1.SupportsTransparentBackColor = True
Me.gridControl1.TransparentBackground = True

'Sets Color for the Transparent Background.
Me.gridControl1.Properties.BackgroundColor = Color.FromArgb(0, 1, 1, 1)
Me.gridControl1.BackColor = Color.FromArgb(0, SystemColors.Window)

{% endhighlight  %}
{% endtabs %}