---
layout: post
title: Child Group Properties in WinForms GridGroupingControl | Syncfusion®
description: Apply grouping properties for ChildLevelGroups in Syncfusion® WinForms GridGroupingControl, its child group options, captions, footers, filter bars, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Apply Child Group Properties in WinForms GridGroupingControl

Grouping properties for ChildLevelGroups can be applied using the code snippet below.

{% tabs %}
{% highlight c# %}

//Hides the caption text of the group.
this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaption=false;

//Hides the plus or minus sign from the group.
this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaptionPlusMinus=false;

//Adds the Filter Bar to the Child level groups.
this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowFilterBar=true;

//Hides the AddNewRecord field before details row.
this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowAddNewRecordBeforeDetails=false;

//Shows the footer of the group.
this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowGroupFooter=true;

{% endhighlight  %}

{% highlight vb %}

'Hides the caption text of the group.
Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaption=False

'Hides the plus or minus symbols present in the group.
Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaptionPlusMinus=False

'Shows the FilterBar.
Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowFilterBar=True

'Hides the AddNewRecord before details.
Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowAddNewRecordBeforeDetails=False

'Shows the group footer.
Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowGroupFooter=True

{% endhighlight  %}
{% endtabs %}

