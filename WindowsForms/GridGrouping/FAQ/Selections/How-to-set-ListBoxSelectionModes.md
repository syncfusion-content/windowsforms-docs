---
layout: post
title: ListBoxSelectionModes in WinForms GridGroupingControl | Syncfusion®
description: Set ListBoxSelectionModes in Syncfusion® WinForms GridGroupingControl, its single and multiple record selection behavior, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Set ListBoxSelectionModes in WinForms GridGroupingControl

To set ListBoxSelectionModes property that determines the selection behavior, use the following code.

{% tabs %}
{% highlight c# %}

//Selects Single record.
this.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One;

//Selects MultiRecords.
this.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiSimple;

//Selects MultiExtendedRecords.
this.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiExtended;

{% endhighlight %}

{% highlight vb %}

'Selects Single record.
Me.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One

'Selects MultiRecords.
Me.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiSimple

'Selects MultiExtendedRecords.
Me.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiExtended

{% endhighlight %}
{% endtabs %}
