---
layout: post
title: Hide or Unhide Columns in WinForms GridGroupingControl | Syncfusion®
description: Hide or unhide columns in Syncfusion® Windows Forms GridGroupingControl, its visible column management, column display settings, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Hide or Unhide Columns in WinForms GridGroupingControl

The TableDescriptor object has VisibleColumns collection that you can use to control the columns that are visible. You can hide or unhide columns using the following code.

{% tabs %}
{% highlight C# %}

//Hides.
this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1");

//Unhide.
this.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1");

{% endhighlight %}

{% highlight vb %}

'Hides.
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1")

'Unhide.
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1")

{% endhighlight %}
{% endtabs %}
