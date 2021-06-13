---
layout: post
title: How to Make a Cell Display '...' if it is Not Wide Enough | Syncfusion
description: Learn here all about how to make a cell display '...' if it is not wide enough in Syncfusion Windows Forms gridcontrol control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Make a Cell Display '...' if it is Not Wide Enough

### Introduction

You must set GridStyleInfo'sTrimming property to achieve this. To enable trimming for the whole grid, set this property in TableStyle. To enable trimming on a column, row, or cell basis, set this style property using techniques that are appropriate for the grid that you are using as discussed in the topics on changing BackColor.

{% tabs %}
{% highlight c# %}

//Sets Ellipsis Text for the whole grid.
this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;
this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;

{% endhighlight %}

{% highlight vb %}

'Sets Ellipsis Text for the whole grid.
Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord
Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord

{% endhighlight %}
{% endtabs %}
