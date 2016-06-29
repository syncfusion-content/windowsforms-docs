---
layout: post
title: How-can-I-implement-an-Excel-accounting-format-in-the-Syncfusion-WinForms-GridControl | Windows Forms | Syncfusion
description: how can i implement an excel accounting format in the syncfusion winforms gridcontrol
platform: windowsforms
control: Grid
documentation: ug
---

# How can I implement an Excel accounting format in the Syncfusion WinForms GridControl?

We can achieve this behavior by setting the cell type to Currency. The currency symbol is removed from the cell data with the following code:

{% tabs %}
{% highlight c# %}

this.gridControl1[i, j].CurrencyEdit.CurrencySymbol = "";

{% endhighlight %}

{% highlight vb %}

Me.gridControl1[i, j].CurrencyEdit.CurrencySymbol = "";

{% endhighlight %}
{% endtabs %}

The CurrencyDecimalDigits property is used and the digits after the decimal point are set using the code below:

{% tabs %}
{% highlight c# %}

this.gridControl1[i, j].CurrencyEdit.CurrencyDecimalDigits = 2;


{% endhighlight %}



{% highlight vb %}

Me.gridControl1[i, j].CurrencyEdit.CurrencyDecimalDigits = 2;


{% endhighlight %}
{% endtabs %}

By default the contents are left-aligned, so the horizontal alignment is set to Right.

{% tabs %}
{% highlight c# %}

this.gridControl1.ColStyles[j].HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;


{% endhighlight %}

{% highlight vb %}

Me.gridControl1.ColStyles[j].HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;


{% endhighlight %}
{% endtabs %}
