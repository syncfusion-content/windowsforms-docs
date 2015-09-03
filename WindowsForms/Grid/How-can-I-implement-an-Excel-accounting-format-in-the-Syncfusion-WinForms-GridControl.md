---
layout: post
title: How-can-I-implement-an-Excel-accounting-format-in-the-Syncfusion-WinForms-GridControl
description: how can i implement an excel accounting format in the syncfusion winforms gridcontrol?
platform: windowsform
control: GridControl
documentation: ug
---

# How can I implement an Excel accounting format in the Syncfusion WinForms GridControl?

We can achieve this behavior by setting the cell type to Currency. The currency symbol is removed from the cell data with the following code:


{% highlight c#  %}
this.gridControl1[i, j].CurrencyEdit.CurrencySymbol = "";

{% endhighlight   %}
{% highlight vbnet  %}



Me.gridControl1[i, j].CurrencyEdit.CurrencySymbol = "";

{% endhighlight   %}

The CurrencyDecimalDigits property is used and the digits after the decimal point are set using the code below:

{% highlight c#  %}

this.gridControl1[i, j].CurrencyEdit.CurrencyDecimalDigits = 2;


{% endhighlight  %}
{% highlight vbnet  %}




Me.gridControl1[i, j].CurrencyEdit.CurrencyDecimalDigits = 2;

{% endhighlight   %}



By default the contents are left-aligned, so the horizontal alignment is set to Right.

{% highlight c#  %}

this.gridControl1.ColStyles[j].HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;

{% endhighlight   %}
{% highlight vbnet  %}



Me.gridControl1.ColStyles[j].HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;

{% endhighlight   %}

