---
layout: post
title: Programmatic Grouping in WinForms GridGroupingControl | Syncfusion®
description: Group a column programmatically in Syncfusion® Windows Forms GridGroupingControl, its grouped columns, sorting direction, group drop area, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Group a Column Programmatically in WinForms GridGroupingControl

To group a column programmatically, use the following code.

{% tabs %}
{% highlight C# %}

//Shows the GroupDropArea.
this.gridGroupingControl1.ShowGroupDropArea = true;

//Groups by "Col1".
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending);

{% endhighlight %}

{% highlight vb %}

'Shows the GroupDropArea.
Me.gridGroupingControl1.ShowGroupDropArea = True

'Groups by "Col1".
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending)

{% endhighlight %}
{% endtabs %}
