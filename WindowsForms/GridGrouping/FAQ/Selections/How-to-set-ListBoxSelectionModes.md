---
layout: post
title: How-to-set-ListBoxSelectionModes | Windows Forms | Syncfusion
description: how to set listboxselectionmodes
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Set ListBoxSelectionModes

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
