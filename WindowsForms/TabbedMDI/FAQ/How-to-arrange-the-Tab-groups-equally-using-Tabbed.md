---
layout: post
title: How-to-arrange-the-Tab-groups-equally-using-Tabbed | WindowsForms | Syncfusion
description: how to arrange the tab groups equally using tabbedmdimanager
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

# How to arrange the Tab groups equally using TabbedMDIManager

TabbedMDIManager has AdjustTabGroupWeightsEqually() method to arrange the Tabgroups equally.

_Table_ _860_: _Method Table_

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
AdjustTabGroupWeightsEqually</td><td>
Adjusts the TabGroups weights equally</td></tr>
</table>


{% highlight c# %}



private void AddGroupButton_click(object sender, EventArgs e)

{

    this.tabbedMDIManager.TabbedGroups.Add(new TabbedGroup("TabGroup2"));

    ChildForm f = new ChildForm();

    this.tabbedMDIManager.TabbedGroups["TabGroup2"].AddForm(f);

    this.tabbedMDIManager.AdjustTabGroupWeightsEqually();  

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub AddGroupButton_click(ByVal sender As Object, ByVal e As EventArgs)

     	Me.tabbedMDIManager.TabbedGroups.Add(New TabbedGroup("TabGroup2"))

Dim f As ChildForm = New ChildForm()

Me.tabbedMDIManager.TabbedGroups("TabGroup2").AddForm(f)

Me.tabbedMDIManager.AdjustTabGroupWeightsEqually()

End Sub

{% endhighlight %}

