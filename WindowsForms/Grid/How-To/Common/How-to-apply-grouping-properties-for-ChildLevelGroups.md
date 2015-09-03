---
layout: post
title: How to apply grouping properties for ChildLevelGroups
description: how to apply grouping properties for childlevelgroups
platform: windowsform
control: GridGroupingControl
documentation: ug
---

# How to apply grouping properties for ChildLevelGroups

Grouping properties for ChildLevelGroups can be applied using the code snippet below.

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
{% highlight vbnet %}



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