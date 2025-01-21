---
layout: post
title: Filtering in Windows Forms MultiColumn TreeView control | Syncfusion®
description: Learn about Filtering support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Filtering in Windows Forms MultiColumn TreeView

Filtering is the process of retrieving the values from a collection that satisfies the specified condition.

## Filter Level

You can filter the nodes based on level using the [FilterLevel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html#Syncfusion_Windows_Forms_Tools_MultiColumnTreeView_MultiColumnTreeView_FilterLevel) property.

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.FilterLevel = FilterLevel.All;

{% endhighlight %}

{% highlight VB %}

Me.multiColumnTreeView1.FilterLevel = FilterLevel.All

{% endhighlight %}

{% endtabs %}

* Root - Filter will be applied only to root nodes in [MultiColumnTreeView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html). All other nodes will be invisible in view.

* All - Filter will be applied to all the nodes in [MultiColumnTreeView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html). If a parent node does not match the filter condition, filter will not be applied for child nodes. Else, filter will be applied to its child nodes also.

* Extended - Filter will be applied to all the nodes in [MultiColumnTreeView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html). If a node matches the filter condition, its all ancestors will also be displayed even though the parent node does not match the filter condition.

N> You can change the `FilterLevel` at run time.

## Apply filter

Filtering can be achieved by setting the [Filter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html#Syncfusion_Windows_Forms_Tools_MultiColumnTreeView_MultiColumnTreeView_Filter) delegate and calling the [RefreshFilter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html#Syncfusion_Windows_Forms_Tools_MultiColumnTreeView_MultiColumnTreeView_RefreshFilter) method.

{% tabs %}

{% highlight C# %}

public bool FilterNodes(object o)
{
  var nodeadv = o as TreeNodeAdv;
  int value = int.Parse(nodeadv.SubItems[2].Text.ToString());
  if (value > 23000)
    return true;
  return false;
}

private void button1_Click(object sender, EventArgs e)
{
  if (multiColumnTreeView1 != null)
  {
    multiColumnTreeView1.Filter = FilterNodes;
    multiColumnTreeView1.RefreshFilter();
  }
}

{% endhighlight %}      

{% highlight VB %}

Public Function FilterNodes(ByVal o As Object) As Boolean
  Dim nodeadv = TryCast(o, TreeNodeAdv)
  Dim value As Integer = Integer.Parse(nodeadv.SubItems(2).Text.ToString())
  If value > 23000 Then Return True
  Return False
End Function 

Private Sub button2_Click(ByVal sender As Object, ByVal e As EventArgs)
  If multiColumnTreeView1 IsNot Nothing Then
    multiColumnTreeView1.Filter = Nothing
    multiColumnTreeView1.RefreshFilter()
  End If
End Sub

{% endhighlight %}

{% endtabs %}

Here, the `FilterNodes` delegate filters the node based on Salary. The `FilterNodes` delegate is assigned to  [Filter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html#Syncfusion_Windows_Forms_Tools_MultiColumnTreeView_MultiColumnTreeView_Filter) predicate to filter the nodes. After that, [RefreshFilter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView.html#Syncfusion_Windows_Forms_Tools_MultiColumnTreeView_MultiColumnTreeView_RefreshFilter) method is called to refresh the nodes.

![WindowsForms MultiColumnTreeView Filtering](Filtering_images/WindowsForms-MultiColumnTreeView-Filtering.png)

## Clear filter

You can clear the filters applied in nodes by setting the `Filter` delegate to null and calling the `RefreshFilter` method.

{% tabs %}
{% highlight c# %}

multiColumnTreeView1.Filter = null;
multiColumnTreeView1.RefreshFilter();

{% endhighlight %}

{% highlight VB %}

multiColumnTreeView1.Filter = Nothing
multiColumnTreeView1.RefreshFilter()

{% endhighlight %}
{% endtabs %}

N> [View sample in GitHub](https://github.com/SyncfusionExamples/Filtering-support-in-MultiColumnTreeView).
