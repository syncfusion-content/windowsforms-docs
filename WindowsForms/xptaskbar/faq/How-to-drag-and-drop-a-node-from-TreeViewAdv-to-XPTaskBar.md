---
layout: post
title: Drag and drop a node from TreeViewAdv in XPTaskBar | Syncfusion®
description: Drag and drop a node from TreeViewAdv in Syncfusion® Essential Studio WindowsForms XPTaskBar control, its elements, and more.
platform: windowsforms
control: XPTaskBar
documentation: ug
---
# How to drag and drop a node from TreeViewAdv to XPTaskBar

This can be achieved by handling the ItemDrag event of TreeViewAdv and DragDrop event of the XPTaskBar.

{% tabs %}

{% highlight C# %}

private void treeViewAdv1_ItemDrag(object sender, System.Windows.Forms.ItemDragEventArgs e)

{

    TreeViewAdv treeViewAdv = (TreeViewAdv)sender;

    TreeNodeAdv[] nodes = (TreeNodeAdv[])e.Item;

    TreeNodeAdv node = nodes[0];

    this.treeViewAdv1.DoDragDrop(node.Text, DragDropEffects.All);

}

 

private void xPTaskBar1_DragOver(object sender, System.Windows.Forms.DragEventArgs e)

{

    e.Effect = DragDropEffects.All;

}

 

private void xPTaskBar1_DragDrop(object sender, System.Windows.Forms.DragEventArgs e)

{

    if (e.Data.GetDataPresent(DataFormats.StringFormat))

    {

        string str = System.Convert.ToString(e.Data.GetData(DataFormats.StringFormat));

        Point pt = xpTaskBarBox3.PointToClient(new Point(e.X, e.Y));

        Syncfusion.Windows.Forms.Tools.XPTaskBarItem taskItem = xpTaskBarBox3.HitTest(pt);

        taskItem.Text = str;

    }

} 

{% endhighlight %}

{% endtabs %}