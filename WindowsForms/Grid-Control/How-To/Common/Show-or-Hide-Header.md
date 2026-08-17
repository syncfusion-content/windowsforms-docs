---
layout: post
title: Show or Hide Headers in Windows Forms GridControl | Syncfusion®
description: Show or hide row and column headers in Syncfusion® Windows Forms GridControl using header visibility properties and customize grid layout and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Show or Hide Headers in Windows Forms GridControl

You can show or hide row and column headers using _ShowColumnHeaders_and_ShowRowHeaders_ properties. 

## Column header

To show column header set ShowColumnHeaders property to true. 

The following code illustrates how to show column header in GridControl: 

{% tabs %}
{% highlight c# %}

gridControl1.ShowColumnHeaders = true;

{% endhighlight %}

{% highlight vb %}

gridControl1.ShowColumnHeaders = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to show column header in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.ShowColumnHeaders = true;

{% endhighlight %}

{% highlight vb %}

gridDataBoundGrid.ShowColumnHeaders = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to show column header in GridGrouping control: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.ShowColumnHeaders = true;

{% endhighlight %}

{% highlight vb %}

gridGroupingControl1.ShowColumnHeaders = True

{% endhighlight %}
{% endtabs %}

## Row header

To show the row header, set ShowRowHeaders property to true. 

The following code illustrates how to show row header in GridControl: 

{% tabs %}
{% highlight c# %}

gridControl1.ShowRowHeaders = true;

{% endhighlight %}

{% highlight vb %}

gridControl1.ShowRowHeaders = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to show row header in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.ShowRowHeaders = true;

{% endhighlight %}

{% highlight vb %}

gridDataBoundGrid.ShowRowHeaders = True

{% endhighlight %}
{% endtabs %}


The following code illustrates how to show the row header in GridGrouping control:

{% tabs %}
{% highlight c# %} 

gridGroupingControl1.ShowRowHeaders = true;

{% endhighlight %}

{% highlight vb %} 

gridGroupingControl1.ShowRowHeaders = True

{% endhighlight %}
{% endtabs %}

