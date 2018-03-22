---
layout: post
title: Printing in GridControl
description: Printing options in GridControl
platform: windowsforms
control: Grid
documentation: ug
---

# Printing Options 

Essential Grid provides support to print column and row header and horizontal and vertical lines. 

## Printing column header

You can print column header using PrintColumnHeader property. 

The following code illustrates how to print column header in GridControl: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintColumnHeader = true;

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print column header in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintColumnHeader = true;

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print the column header GridGrouping control: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintColumnHeader = true;

{% endhighlight %}
{% endtabs %}

## Printing row header

You can print row header using PrintRowHeader__property. 

The following code illustrates how to print row header in GridControl: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintRowHeader = true;

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print the row header in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintRowHeader = true;

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print row header GridGrouping control: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintRowHeader = true;

{% endhighlight %}
{% endtabs %}

## Printing horizontal lines

You can print horizontal lines using PrintHorizontalLines property. 

The following code illustrates how to print horizontal lines in GridControl: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintHorizontalLines = true; 

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print horizontal lines in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintHorizontalLines = true;

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print horizontal lines GridGrouping control: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintHorizontalLines = true;

{% endhighlight %}
{% endtabs %}

## Printing vertical lines 

You can print vertical lines using PrintVerticalLines__property. 

The following code illustrates how to print vertical lines in GridControl: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintVerticalLines = true;

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print vertical lines in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintVerticalLines = true;

{% endhighlight %}
{% endtabs %}

 The following code illustrates how to print vertical lines GridGrouping control: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintVerticalLines = true;

{% endhighlight %}
{% endtabs %}


