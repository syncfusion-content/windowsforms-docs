---
 layout: post
title: How-to-know-whether-the-image-on-the-left-side-Right-side-of-the-node's-text-was-clicked | WindowsForms | Syncfusion
description: how to know whether the image on the left side / right side of the node's text was clicked
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Know whether the Image on the Left Side/Right Side of the Node's Text was Clicked

This can be done using the below code snippet.

{% tabs %}
{% highlight c# %}

//The user could use the Left Image of a node as a clickable area to use

// it as a button associated with that particular tree node
private void treeViewAdv1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)
{
    TreeNodeAdv node = this.treeViewAdv1.SelectedNode;
    Point image = new Point(node.TextAndImageBounds.X, node.TextAndImageBounds.Y);
    Size imgSize = new Size(this.imageList1.ImageSize.Width, this.imageList1.ImageSize.Height);
    Rectangle rect = new Rectangle(image, imgSize);
    Point click = new Point(e.X, e.Y);
    if (rect.Contains(click) == true)
    {
        Console.WriteLine("Clicked on " + node.Text + "'s left image");
    }
}

//The user could use the Right Image of a node as a clickable area to use

// it as a button associated with that particular tree node
private void treeViewAdv1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)
{
    TreeNodeAdv node = this.treeViewAdv1.SelectedNode;
    Point image = new Point(node.RightImagesX, node.TextBounds.Y);
    Size imgSize = new Size(this.imageList1.ImageSize.Width, this.imageList1.ImageSize.Height);
    Rectangle rect = new Rectangle(image imgSize);
    Point click = new Point(e.X, e.Y);
    if (rect.Contains(click) == true)
    {
        MessageBox.Show("Clicked on " + node.Text + "'s right image");
        Console.WriteLine("Clicked on " + node.Text + "'s right image");
    }
}

{% endhighlight %}

{% highlight vb %}

'The user could use the Left Image of a node as a clickable area to use

' it as a button associated with that particular tree node
Private Sub treeViewAdv1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles treeViewAdv1.MouseUp
Dim node As TreeNodeAdv = Me.treeViewAdv1.SelectedNode
Dim image As Point = New Point(node.TextAndImageBounds.X, node.TextAndImageBounds.Y)
Dim imgSize As Size = New Size(Me.imageList1.ImageSize.Width, Me.imageList1.ImageSize.Height)
Dim image As Rectangle = New Rectangle(image, imgSize)
Dim click As Point = New Point(e.X, e.Y)
If image.Contains(click) = True Then
Console.WriteLine("Clicked on " & node.Text & "'s left image")
End If
End Sub

'The user could use the Right Image of a node as a clickable area to use

' it as a button associated with that particular tree node
Private Sub treeViewAdv1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles treeViewAdv1.MouseUp
Dim node As TreeNodeAdv = Me.treeViewAdv1.SelectedNode
Dim image As Point = New Point(node.RightImagesX, node.TextBounds.Y)
Dim imgSize As Size = New Size(Me.imageList1.ImageSize.Width, Me.imageList1.ImageSize.Height)
Dim rect As Rectangle = New Rectangle(image, imgSize)
Dim click As Point = New Point(e.X, e.Y)
If rect.Contains(click) = True Then
MessageBox.Show("Clicked on " & node.Text & "'s right image")
Console.WriteLine("Clicked on " & node.Text & "'s right image")
End If
End Sub

{% endhighlight %}
{% endtabs %}
