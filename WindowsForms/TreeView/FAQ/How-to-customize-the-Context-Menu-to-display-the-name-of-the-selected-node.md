---
layout: post
title: How-to-customize-the-Context-Menu-to-display-the-name-of-the-selected-node-when-right-clicked-on-it | WindowsForms | Syncfusion
description: how to customize the context menu to display the name of the selected node when right clicked on it
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to customize the Context Menu to Display the Name of the Selected Node when Right Clicked on it

The user could customize the context menu to display the name of the selected node when right-clicked on the SelectedNode by handling the MouseDown Event handler in the following way. The user have to get the right click point of the SelectedNode. Then if the SelectedNode is not equal to null, then a new menu item is created and added, such that the item displays the SelectedNode's text name. For displaying only the SelectedNode text at a time when right clicked, the menu items must be cleared.

{% tabs %}
{% highlight c# %}

private void treeViewAdv1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)
{
    if (e.Button == MouseButtons.Right)
    {
//Clear the ContextMenu MenuItems
        this.contextMenu1.MenuItems.Clear();
        this.treeViewAdv1.SelectedNode = this.treeViewAdv1.GetNodeAtPoint(new Point(e.X, e.Y));

//If the selected node is not equal to null, check for the condition
        if (this.treeViewAdv1.SelectedNode != null)
        {

//Create MenuItem for the SelectedNode
            MenuItem menu = new MenuItem(this.treeViewAdv1.SelectedNode.Text);
            this.contextMenu1.MenuItems.Add(menu);
        }
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)
If e.Button = MouseButtons.Right Then

'Clear the ContextMenu MenuItems
Me.contextMenu1.MenuItems.Clear()
Me.treeViewAdv1.SelectedNode = Me.treeViewAdv1.GetNodeAtPoint(New Point(e.X, e.Y))

'If the selected node is not equal to null, check for the condition
If Not Me.treeViewAdv1.SelectedNode Is Nothing Then

'Create MenuItem for the SelectedNode
Dim menu As MenuItem = New MenuItem(Me.treeViewAdv1.SelectedNode.Text)
Me.contextMenu1.MenuItems.Add(menu)
End If
End If
End Sub

{% endhighlight %}
{% endtabs %}
