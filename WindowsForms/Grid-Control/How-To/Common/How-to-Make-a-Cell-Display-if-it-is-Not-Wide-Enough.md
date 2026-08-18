---
layout: post
title: Display Ellipsis Text in Windows Forms GridControl | Syncfusion®
description: Display ellipsis text when cell content exceeds the available width in Syncfusion® Windows Forms GridControl using trimming settings and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Display Ellipsis Text in Windows Forms GridControl

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
