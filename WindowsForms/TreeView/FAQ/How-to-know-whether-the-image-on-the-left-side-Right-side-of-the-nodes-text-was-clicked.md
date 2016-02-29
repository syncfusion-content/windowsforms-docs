---
layout: post
title: How-to-know-whether-the-image-on-the-left-side-Right-side-of-the-node's-text-was-clicked | Windows Forms | Syncfusion
description: how to know whether the image on the left side / right side of the node's text was clicked
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to know whether the image on the left side / Right side of the node's text was clicked

This can be done using the below code snippet.

{% highlight c# %}



//The user could use the Left Image of a node as a clickable area to use

// it as a button associated with that particular tree node



private void treeViewAdv1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)

{

    TreeNodeAdv node = this.treeViewAdv1.SelectedNode;

    Point imgpt = new Point(node.TextAndImageBounds.X, node.TextAndImageBounds.Y);

    Size imgSize = new Size(this.imageList1.ImageSize.Width, this.imageList1.ImageSize.Height);

    Rectangle imgrec = new Rectangle(imgpt, imgSize);

    Point clickpt = new Point(e.X, e.Y);

    if (imgrec.Contains(clickpt) == true)

    {

        Console.WriteLine("Clicked on " + node.Text + "'s left image");

    }

}



//The user could use the Right Image of a node as a clickable area to use

// it as a button associated with that particular tree node



private void treeViewAdv1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)

{

    TreeNodeAdv node = this.treeViewAdv1.SelectedNode;

    Point imgpt = new Point(node.RightImagesX, node.TextBounds.Y);

    Size imgSize = new Size(this.imageList1.ImageSize.Width, this.imageList1.ImageSize.Height);

    Rectangle imgrec = new Rectangle(imgpt, imgSize);

    Point clickpt = new Point(e.X, e.Y);

    if (imgrec.Contains(clickpt) == true)

    {

        MessageBox.Show("Clicked on " + node.Text + "'s right image");

        Console.WriteLine("Clicked on " + node.Text + "'s right image");

    }

}

{% endhighlight %}

{% highlight vbnet %}



'The user could use the Left Image of a node as a clickable area to use

' it as a button associated with that particular tree node



Private Sub treeViewAdv1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles treeViewAdv1.MouseUp

    Dim node As TreeNodeAdv = Me.treeViewAdv1.SelectedNode

    Dim imgpt As Point = New Point(node.TextAndImageBounds.X, node.TextAndImageBounds.Y)

    Dim imgSize As Size = New Size(Me.imageList1.ImageSize.Width, Me.imageList1.ImageSize.Height)

    Dim imgrec As Rectangle = New Rectangle(imgpt, imgSize)

    Dim clickpt As Point = New Point(e.X, e.Y)

    If imgrec.Contains(clickpt) = True Then

        Console.WriteLine("Clicked on " & node.Text & "'s left image")

    End If

End Sub



'The user could use the Right Image of a node as a clickable area to use

' it as a button associated with that particular tree node



Private Sub treeViewAdv1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles treeViewAdv1.MouseUp

    Dim node As TreeNodeAdv = Me.treeViewAdv1.SelectedNode

    Dim imgpt As Point = New Point(node.RightImagesX, node.TextBounds.Y)

    Dim imgSize As Size = New Size(Me.imageList1.ImageSize.Width, Me.imageList1.ImageSize.Height)

    Dim imgrec As Rectangle = New Rectangle(imgpt, imgSize)

    Dim clickpt As Point = New Point(e.X, e.Y)

    If imgrec.Contains(clickpt) = True Then

        MessageBox.Show("Clicked on " & node.Text & "'s right image")

        Console.WriteLine("Clicked on " & node.Text & "'s right image")

    End If

End Sub

{% endhighlight %}

