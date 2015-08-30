---
layout: post
title: OLE-Drag-and-Drop
description: ole drag-and-drop
platform: windowsform
control: Grid
documentation: ug
---

### OLE Drag-and-Drop

Essential Grid offers support functionality like Object Linking and Embedding (OLE) Drag-and-Drop. A range in one grid can be selected and dragged to another grid or into a Rich Edit Box. The following screen shot shows selected region of grid that has been dragged and dropped into another grid:

![](Grid-Control_images/Grid-Control_img223.jpeg)





The following code example illustrates this feature.

{% highlight c# %}



gridControl1.AllowDrop = true;

gridControl2.AllowDrop = true;



private void gridControl1_DragOver(object sender, DragEventArgs e)

{

    e.Effect = DragDropEffects.Copy;

}



private void gridControl2_DragOver(object sender, DragEventArgs e)

{

    e.Effect = DragDropEffects.Copy;

}

{% endhighlight %}

{% highlight vbnet %}



gridControl1.AllowDrop = True

gridControl2.AllowDrop = True



private void gridControl1_DragOver(Object sender, DragEventArgs e)

e.Effect = DragDropEffects.Copy



private void gridControl2_DragOver(Object sender, DragEventArgs e)

e.Effect = DragDropEffects.Copy

{% endhighlight %}


