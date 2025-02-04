---
layout: post
title: How-to-arrange-the-Tab-groups-equally | WindowsForms | Syncfusion®
description: how to arrange the tab groups equally using tabbedmdimanager
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to arrange the Tab groups equally using TabbedMDIManager

TabbedMDIManager has [AdjustTabGroupWeightsEqually](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_AdjustTabGroupWeightsEqually) method to arrange the Tab groups equally.

Method table

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

{% tabs %}

{% highlight C# %}


private void AddGroupButton_click(object sender, EventArgs e)

{

    this.tabbedMDIManager.TabbedGroups.Add(new TabbedGroup("TabGroup2"));

    ChildForm f = new ChildForm();

    this.tabbedMDIManager.TabbedGroups["TabGroup2"].AddForm(f);

    this.tabbedMDIManager.AdjustTabGroupWeightsEqually();  

}

{% endhighlight %}

{% highlight VB %}



Private Sub AddGroupButton_click(ByVal sender As Object, ByVal e As EventArgs)

     	Me.tabbedMDIManager.TabbedGroups.Add(New TabbedGroup("TabGroup2"))

Dim f As ChildForm = New ChildForm()

Me.tabbedMDIManager.TabbedGroups("TabGroup2").AddForm(f)

Me.tabbedMDIManager.AdjustTabGroupWeightsEqually()

End Sub

{% endhighlight %}

{% endtabs %}
