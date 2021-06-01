---
 layout: post
title: How-to-force-a-treeNodeAdv-to-stay-in-edit-mode-until-user-enters-an-unique-name | WindowsForms | Syncfusion
description: how to force a treenodeadv to stay in edit mode until user enters an unique name
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Force a TreeNodeAdv to Stay in Edit Mode until User Enters an Unique Name 

This can be done using the below code snippet.

{% tabs %}
{% highlight c# %}

//It can be done by handling the TreeViewAdv's NodeEditorValidating Event.

//If the user enters the unique name the edit mode will get canceled or else the node will stay in the edit mode .
private void treeViewAdv1_NodeEditorValidating_1(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs e)
{
    if (e.Label == "Syncfusion")
    {
        e.Cancel = false;
        MessageBox.Show("Unique");
        e.ContinueEditing = false;
    }
    else
    {

// Cancel the label edit action, inform the user, and place the node in edit mode again. //
        e.Cancel = true;
        MessageBox.Show("Name is not unique");

// To end editing mode, do this:
        e.ContinueEditing = true;
    }
}

{% endhighlight %}

{% highlight vb %}

'It can be done by handling the TreeViewAdv's NodeEditorValidating Event.

'If the user enters the unique name the edit mode will get canceled or else the node will stay in the edit mode .
Private Sub treeViewAdv1_NodeEditorValidating_1(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs)
If e.Label = "Syncfusion" Then
e.Cancel = False
MessageBox.Show("Unique")
e.ContinueEditing = False
Else

' Cancel the label edit action, inform the user, and place the node in edit mode again. 
e.Cancel = True
MessageBox.Show("Name is not unique")

' To end editing mode, do this:
e.ContinueEditing = True
End If
End Sub

{% endhighlight %}
{% endtabs %}
