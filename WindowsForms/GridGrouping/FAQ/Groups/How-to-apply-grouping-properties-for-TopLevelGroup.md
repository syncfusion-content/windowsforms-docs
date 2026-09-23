---
layout: post
title: TopLevel GroupProperties in WinForms GridGroupingControl | Syncfusion®
description: Apply grouping properties for TopLevelGroups in Syncfusion® WinForms GridGroupingControl, its top-level group options, captions, footers, filter bars, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Apply TopLevel Group Properties in WinForms GridGroupingControl

Grouping properties for TopLevelGroups can be applied using the code snippet below.

{% tabs %}
{% highlight c# %}

//Hides the AddNewRecord field before details row.
this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowAddNewRecordBeforeDetails=false;

//Hides the Header cells.
this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowColumnHeaders=false;

//Adds the Filter Bar to the Child level groups.
this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowFilterBar=true;

//Sets the caption.
this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.CaptionText="Custom";

//Shows the group footer.
this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowGroupFooter=true;

{% endhighlight  %}

{% highlight vb %}

'Hides the AddNewRecord before details.
Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowAddNewRecordBeforeDetails=False

'Hides the column headers.
Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowColumnHeaders=False

'Adds the Filter Bar to the Top level groups.
Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowFilterBar=True

'Sets the caption.
Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.CaptionText="Custom"

'Shows the group footer.
Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowGroupFooter=True

{% endhighlight  %}
{% endtabs %}
