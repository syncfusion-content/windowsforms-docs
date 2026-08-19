---
layout: post
title: Excel Accounting Format in Windows Forms Grid Control | Syncfusion®
description: Implement Excel accounting format in Syncfusion® Windows Forms Grid Control using currency cell settings, decimal precision, and alignment options and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Implement Excel Accounting Format in Windows Forms Grid Control

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
