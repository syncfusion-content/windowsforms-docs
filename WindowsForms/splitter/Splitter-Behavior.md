---
layout: post
title: Splitter Behavior in Windows Forms Splitter control | Syncfusion
description: Learn about Splitter Behavior support in Syncfusion Windows Forms Splitter control and more details.
platform: WindowsForms
control: Splitter
documentation: ug
---

# Splitter Behavior in Windows Forms Splitter

The splitter in the SplitterControl can be supported with Row splitter and Column splitter or both.

* None
* SplitColumns
* SplitRows
* Both

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

this.splitterControl1.SplitBars = DynamicSplitBars.SplitColumns;

{% endhighlight %}

{% highlight VB %}


Me.splitterControl1.SplitBars = DynamicSplitBars.SplitColumns

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}