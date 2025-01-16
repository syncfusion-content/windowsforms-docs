---
layout: post
title: Load On Demand in Windows Forms MultiColumn TreeView | Syncfusion
description: Learn about Load On Demand support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Load On Demand in Windows Forms MultiColumn TreeView

LoadOnDemand feature is to give a delay in loading a node in a Tree, before the user initiates a node to expand.

By setting LoadOnDemand property to true, the plus (+) and minus (-) of all the nodes will be visible in the beginning. By handling the BeforeExpand event of the nodes, sub nodes can be added to the respective nodes. Now the tree will display or hide the plus or minus based on whether the children are added.

**Property Table**

<table>
<tr>
<th>
MultiColumnTreeView Properties</th><th>
Description</th></tr>
<tr>
<td>
LoadOnDemand</td><td>
Specifies if the tree should follow the LoadOnDemand paradigm.</td></tr>
<tr>
<td>
AddSeparatorAtEnd</td><td>
Indicates if the TreeNodeAdv.GetPath method adds a separator at the end of the path string returned.</td></tr>
</table>

**Methods Table**

<table>
<tr>
<th>
TreeNodeAdv Methods</th><th>
Description</th></tr>
<tr>
<td>
GetPath</td><td>
Method which is used to derive the path string for a specific node.</td></tr>
</table>

## Retrieving Node Path

In the BeforeExpand event the user can retrieve the path string for a specific node using the TreeNodeAdv.GetPath method where the user can also specify the separator.

The vital thing in this sample is that the MultiColumnTreeView.AddSeparatorAtEnd property must be set to True to add a “\” character at the end of the path of the node, when calling the Node.GetPath method.

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.LoadOnDemand = true;
this.multiColumnTreeView1.AddSeparatorAtEnd = true;
this.multiColumnTreeView1.BeforeExpand += MultiColumnTreeView1_BeforeExpand;


private void MultiColumnTreeView1_BeforeExpand(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvCancelableNodeEventArgs e)
{
if (e.Node.ExpandedOnce) return;
// Retrieves the path for the specific node.

//Get the Path of the node and AddSeparatorAtEnd Property set to true
string path = e.Node.GetPath("\\");

//Get an Array of Directories from the current directory path
ArrayList dis = new ArrayList(Directory.GetDirectories(path));

//Add the Directories as a node
for (int i = 0; i < dis.Count; i++)
{
string dirt = (string)dis[i];
int lastIndex = dirt.LastIndexOf("\\") + 1;
Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdv node = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdv(dirt.Substring(lastIndex));
e.Node.Nodes.Add(node);
}
}

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.LoadOnDemand = True
Me.multiColumnTreeView1.AddSeparatorAtEnd = True
Me.multiColumnTreeView1.BeforeExpand += MultiColumnTreeView1_BeforeExpand

Private Sub MultiColumnTreeView1_BeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvCancelableNodeEventArgs)
    If e.Node.ExpandedOnce Then Return
    Dim path As String = e.Node.GetPath("\")
    Dim dis As ArrayList = New ArrayList(Directory.GetDirectories(path))

    For i As Integer = 0 To dis.Count - 1
        Dim dirt As String = CStr(dis(i))
        Dim lastIndex As Integer = dirt.LastIndexOf("\") + 1
        Dim node As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdv = New Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdv(dirt.Substring(lastIndex))
        e.Node.Nodes.Add(node)
    Next
End Sub

{% endhighlight %}

{% endtabs %}

