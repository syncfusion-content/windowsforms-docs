---
 layout: post
title: How-to-find-the-way-for-the-disappearance-of-the-focus-rectangle-if-the-focus-is-lost-in-the-treeviewadv | WindowsForms | Syncfusion
description: how to find the way for the disappearance of the focus rectangle if the focus is lost in the treeviewadv
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to find the way for the disappearance of the focus rectangle if the focus is lost in the treeViewAdv

This can be done by setting e.Active to false in BeforeNodePaint Event Handler.

{% highlight c# %}



// Set the TreeViewAdv's OwnerDrawNodes property to true.



this.treeViewAdv1.OwnerDrawNodes = true;



//Handle the TreeViewAdv's BeforeNodePaint event as shown below :



private void treeViewAdv1_BeforeNodePaint(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvPaintEventArgs e)

{

e.Active = false;

}

{% endhighlight %}

{% highlight vbnet %}



'Declare the new node object. 

Private NewNode As Syncfusion.Windows.Forms.Tools.TreeNodeAdv = New Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node") 

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

    Dim NewNode As TreeNodeAdv = New TreeNodeAdv() 



    ' Use Insert method to add nodes at particular index.

    Me.treeViewAdv1.Nodes.Insert(2, NewNode) 

End Sub 

{% endhighlight %}

