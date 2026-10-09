---
layout: post
title: How to Limit Characters in Windows Forms TreeNodeAdv | Syncfusion
description: Limit the characters that the user can type for editing the TreeNodeAdv using LabelEdit in Syncfusion® Windows Forms TreeViewAdv.
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to Limit Characters in Windows Forms TreeNodeAdv

This can be done using the below code snippet.

{% tabs %}
{% highlight c# %}

//It can be done using the following code snippet in the NodeEditorValidateString event to restrict a user from

//entering characters beyond a limit in a Label Editing.

//If the length of the node label is less than or equal 5,the editing continues or else it is canceled.
private void treeViewAdv1_NodeEditorValidateString(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs e)
{
    if (e.Label.Length <= 5)
        e.ContinueEditing = true;
    else
        e.Cancel = true;
}

{% endhighlight %}

{% highlight vb %}

'It can be done using the following code snippet in the NodeEditorValidateString event to restrict a user from

'entering characters beyond a limit in a Label Editing.

'If the length of the node label is less than or equal 5,the editing continues or else it is canceled.
Private Sub treeViewAdv1_NodeEditorValidateString(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs)
If e.Label.Length <= 5 Then
e.ContinueEditing = True
Else
e.Cancel = True
End If
End Sub

{% endhighlight %}
{% endtabs %}
