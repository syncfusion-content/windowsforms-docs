---
layout: post
title: How-to-prevent-a-node-from-being-selected | Windows Forms | Syncfusion
description: how to prevent a node from being selected
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to prevent a node from being selected

This can be done using BeforeSelect event.

{% highlight c# %}



// Handle the TreeViewAdv's BeforeSelect event

// and cancel selection if condition is not met



this.treeViewAdv1.BeforeSelect += new Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeSelectEventHandler(this.treeViewAdv1_BeforeSelect);



private void treeViewAdv1_BeforeSelect(object sender, Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableSelectionEventArgs args)

{

 if (args.SelectedNodes[0].Text == "Node0"||args.SelectedNodes[0].Text=="Node4"

||args.SelectedNodes[0].Text=="Node7"||args.SelectedNodes[0].Text=="Node10")

 args.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the TreeViewAdv's BeforeSelect event

' and cancel selection if condition is not met



Me.treeViewAdv1.BeforeSelect += New Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeSelectEventHandler(Me.treeViewAdv1_BeforeSelect)



Private Sub treeViewAdv1_BeforeSelect(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableSelectionEventArgs)

    If args.SelectedNodes(0).Text = "Node0" OrElse args.SelectedNodes(0).Text = "Node4" Then

OrElse args.SelectedNodes(0).Text="Node7" OrElse args.SelectedNodes(0).Text="Node10" Then

        args.Cancel = True

    End If

End Sub

{% endhighlight %}

