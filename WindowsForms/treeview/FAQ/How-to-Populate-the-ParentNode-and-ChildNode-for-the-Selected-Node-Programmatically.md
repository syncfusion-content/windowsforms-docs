---
 layout: post
title: How-to-Populate-the-ParentNode-and-ChildNode-for-t | WindowsForms | Syncfusion
description: how to populate the parentnode and childnode for the selected node programmatically
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Populate the ParentNode and ChildNode for the Selected Node Programmatically

This can be done through code as shown below, by setting the selected node to be the present node and then if the present node is equal to null, the new ChildNode is created and added.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, System.EventArgs e) 
{ 
    TreeNodeAdv presentNode = this.treeViewAdv1.SelectedNode; 
    if(presentNode == null) 
         return; 

// Adding new child nodes.
    TreeNodeAdv newNode = new TreeNodeAdv("NewChild"); 
    presentNode.Nodes.Add(newNode); 
} 
private void button2_Click(object sender, System.EventArgs e) 
{ 

// Adding new parent nodes.
     TreeNodeAdv node = new TreeNodeAdv("Parent node"); 
     this.treeViewAdv1.Nodes.Add(node); 
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 
Dim presentNode As TreeNodeAdv = Me.treeViewAdv1.SelectedNode 
If presentNode Is Nothing Then 
Return 
End If 

' Adding new child nodes.
Dim newNode As TreeNodeAdv = New TreeNodeAdv("NewChild")presentNode.Nodes.Add(newNode) 
End Sub 
Private Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

' Adding new parent nodes.
Dim node As TreeNodeAdv = New TreeNodeAdv("Parent node") 
Me.treeViewAdv1.Nodes.Add(node) 
End Sub 

{% endhighlight %}
{% endtabs %}