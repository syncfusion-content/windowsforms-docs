---
layout: post
title: How-to-disable-Tooltip-for-particular-nodes-of-the-TreenodeAdv | WindowsForms | Syncfusion
description: how to disable tooltip for particular nodes of the treenodeadv
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to disable Tooltip for Particular Nodes of the TreeNodeAdv

The TreeViewAdv control provides an option to disable tooltips for particular nodes. 

Disable ToolTips for particular nodes

The tooltip for some of the nodes, which have a HelpText can be disabled by handling the ToolTipControl_BeforePopup event.

Here in the TreeViewAdv, for some of the nodes, the e.Cancel property is set to true by getting the node's position in the ToolTipControl's BeforePopup event handler where the tooltips for the respective nodes are disabled. The tooltips for the same nodes can be enabled by setting the e.Cancel = false in the tooltip control's BeforePopup Event.

{% tabs %}
{% highlight c# %}

private void ToolTipControl_BeforePopup(object sender, CancelEventArgs e) 
{ 
     Point pt=this.treeViewAdv1.PointToClient(new Point(MousePosition.X,MousePosition.Y)); 
     TreeNodeAdv node=this.treeViewAdv1.GetNodeAtPoint(pt); 
     if(node!=null) 
     { 
         if(node.Text=="Node1" || node.Text=="Node3"||node.Text=="Node5"||node.Text=="Node7") 
         { 

// Set e.Cancel property to true after getting the node's position. 
               e.Cancel=true; 
         } 
     } 
}

{% endhighlight %}

{% highlight vb %}

Private Sub ToolTipControl_BeforePopup(ByVal sender As Object, ByVal e As CancelEventArgs) 
Dim pt As Point=Me.treeViewAdv1.PointToClient(New Point(MousePosition.X,MousePosition.Y)) 
Dim node As TreeNodeAdv=Me.treeViewAdv1.GetNodeAtPoint(pt) 
If Not node Is Nothing Then 
If node.Text="Node1" OrElse node.Text="Node3" OrElse node.Text="Node5" OrElse node.Text="Node7" Then 

'Set e.Cancel property to true after getting the node's position. 
e.Cancel=True 
End If 
End If 
End Sub

{% endhighlight %}
{% endtabs %}
