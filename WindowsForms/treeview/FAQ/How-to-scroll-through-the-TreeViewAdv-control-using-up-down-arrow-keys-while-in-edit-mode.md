---
layout: post
title: How-to-scroll-through-the-TreeViewAdv-control-usin | WindowsForms | Syncfusion
description: how to scroll through the treeviewadv control using up / down arrow keys while in edit mode
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Scroll through the TreeViewAdv Control using Up/Down Arrow Keys while in Edit Mode

The user could navigate through the nodes in the TreeViewAdv control using the keyboard while in editing mode, by using the following code snippet.

{% tabs %}
{% highlight c# %}

private void treeViewAdv1_BeforeEdit(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeEditEventArgs e)
{
    TempNode = e.Node;
    TextBox t = e.TextBox;

//To handle the Keys while editing the node 
    t.KeyDown += new KeyEventHandler(t_KeyDown);
}
private void t_KeyDown(object sender, KeyEventArgs e)
{
    TextBox t = sender as TextBox;
    if (e.KeyData == Keys.Down || e.KeyData == Keys.Up)
    {

//To Stop the editing 
        this.treeViewAdv1.EndEdit(true);
        
//To replace the edited contents into the selected node. 
        TempNode.Text = t.Text;

//End the event 
        e.Handled = true;
    }
} 

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_BeforeEdit(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeEditEventArgs)
TempNode = e.Node
Dim t As TextBox = e.TextBox

'To handle the Keys while editing the node 
AddHandler t.KeyDown, AddressOf t_KeyDown
End Sub
Private Sub t_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
Dim t As TextBox = CType(IIf(TypeOf sender Is TextBox, sender, Nothing), TextBox)
If e.KeyData = Keys.Down OrElse e.KeyData = Keys.Up Then

'To Stop the editing 
Me.treeViewAdv1.EndEdit(True)

'To replace the edited contents into the selected node. 
TempNode.Text = t.Text

'End the event 
e.Handled = True
End If
End Sub

{% endhighlight %}
{% endtabs %}
