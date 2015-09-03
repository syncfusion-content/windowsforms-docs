---
layout: post
title: How-to-Make-a-Cell-Display--if-it-is-Not-Wide-Enou
description: how to make a cell display '...' if it is not wide enough
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Make a Cell Display '...' if it is Not Wide Enough

### Introduction

You must set GridStyleInfo'sTrimming property to achieve this. To enable trimming for the whole grid, set this property in TableStyle. To enable trimming on a column, row, or cell basis, set this style property using techniques that are appropriate for the grid that you are using as discussed in the topics on changing backcolor.

#### Example

{% highlight c# %}



//Sets Ellipsis Text for the whole grid.

this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;

this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;


{% endhighlight %}

{% highlight vbnet %}



'Sets Ellipsis Text for the whole grid.

Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord
Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord


{% endhighlight %}

