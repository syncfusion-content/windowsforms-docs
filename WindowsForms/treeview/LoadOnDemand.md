---
layout: post
title: LoadOnDemand in Windows Forms TreeView control | Syncfusion®
description: Learn about LoadOnDemand support in Syncfusion® Windows Forms TreeView control, its elements and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# LoadOnDemand in Windows Forms TreeView

LoadOnDemand feature is to give a delay in loading nodes of the tree before the user initiates a node to expand.

By setting `LoadOnDemand` property to true, the plus(+) and minus(-) of all the nodes will be visible in the beginning. By handling the `BeforeExpand` event of the nodes, sub nodes can be added to the respective nodes. Now the tree will display or hide the plus or minus based on whether the children are added or not. 

<b>Property Table</b>

<table>
<tr>
<th>
TreeViewAdv Properties</th><th>
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

<b>Methods Table</b>

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

### Retrieving Node Path

In the `BeforeExpand` event the user can retrieve the path string for a specific node using the TreeNodeAdv.GetPath method where the user can also specify the separator.

The vital thing in this sample is that the `TreeViewAdv.AddSeparatorAtEnd` property must be set to True to add a “\” character at the end of the path of the node, when calling the `Node.GetPath` method.

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.LoadOnDemand = true;
this.treeViewAdv1.AddSeparatorAtEnd = true;
private void treeViewAdv1_BeforeExpand(object sender, Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableNodeEventArgs e)
{
    if(e.Node.ExpandedOnce) return;
// Retrieves the path for the specific node.

//Get the Path of the node and AddSeparatorAtEnd Property set to true
    string path = e.Node.GetPath("\\");

//Get an Array of Directories from the current directory path
    ArrayList dis = new  ArrayList(Directory.GetDirectories(path));

//Add the Directories as a node in TreeViewAdv
    for(int i=0;i<dis.Count;i++)
    {
        string dirt = (string)dis[i];
        int lastIndex = dirt.LastIndexOf("\\")+1;
        TreeNodeAdv node = new TreeNodeAdv(dirt.Substring(lastIndex));
        e.Node.Nodes.Add(node);
    }
}
private void treeViewAdv2_AfterSelect(object sender, EventArgs e)
{
    if(this.treeViewAdv2.SelectedNode!=null)
    {
        Rectangle bounds = this.treeViewAdv2.SelectedNode.Bounds;
        this.listBox1.Items.Clear();
        try
        {
            this.listBox1.Items.AddRange(Directory.GetFiles(this.treeViewAdv2.SelectedNode.GetPath("\\")));
        }
        catch{}	// Exception will be thrown in the user renamed the dis and then selects them. Lose the exception.
    }
}

{% endhighlight %}

{% highlight vb %}

Me.treeViewAdv1.LoadOnDemand = True
Me.treeViewAdv1.AddSeparatorAtEnd = True
Private Sub treeViewAdv2_BeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableNodeEventArgs) Handles treeViewAdv2.BeforeExpand

'Checking Whether the Node has been expanded at least once
If e.Node.ExpandedOnce Then
Return
End If

'Retrieves the path for the specific node.

'Get the Path of the node and AddSeparatorAtEnd Property set to true
Dim path As String = e.Node.GetPath("\")

'Get an Array of Directories from the current directory path
Dim dis As ArrayList = New ArrayList(Directory.GetDirectories(path))

'Add the Directories as a node in TreeViewAdv
Dim i As Integer = 0
Do While i < dis.Count
Dim dirt As String = CStr(dis(i))
Dim lastIndex As Integer = dirt.LastIndexOf("\") + 1
Dim node As TreeNodeAdv = New TreeNodeAdv(dirt.Substring(lastIndex))
e.Node.Nodes.Add(node)
i += 1
Loop
End Sub
Private Sub treeViewAdv2_AfterSelect(ByVal sender As Object, ByVal e As EventArgs) Handles treeViewAdv2.AfterSelect
If Not Me.treeViewAdv2.SelectedNode Is Nothing Then
Dim bounds As Rectangle = Me.treeViewAdv2.SelectedNode.Bounds
Me.listBox1.Items.Clear()
Try
Me.listBox1.Items.AddRange(Directory.GetFiles(Me.treeViewAdv2.SelectedNode.GetPath("\")))
Catch ' Exception will be thrown in the user renamed the dis and then selects them. Lose the exception.
End Try
End If
End Sub

{% endhighlight %}
{% endtabs %}
