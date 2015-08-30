---
layout: post
title: Drag-Column-Header
description: drag column header
platform: windowsform
control: Grid
documentation: ug
---

# Drag Column Header

In Grid control, column header can be dragged to a new position by clicking on it, similar to how the fields in Microsoft Outlook are dragged without selecting the columns. This feature can be enabled in Grid control by adding DragColumnHeader option under ControllerOptions property. The event QueryAllowDragColumnHeader can be handled, while performing the drag operation.

The following code examples illustrate this feature.

{% highlight c# %}



this.gridControl1.ControllerOptions |= GridControllerOptions.DragColumnHeader;

void gridControl1_QueryAllowDragColumnHeader(object sender, GridQueryDragColumnHeaderEventArgs e)

{

if (e.Reason != GridQueryDragColumnHeaderReason.HitTest)

System.Diagnostics.Debug.WriteLine("gridControl1_QueryAllowDragColumnHeader: " + e.ToString());

}

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.ControllerOptions = Me.gridControl1.ControllerOptions Or GridControllerOptions.DragColumnHeader

Private Sub gridControl1_QueryAllowDragColumnHeader(ByVal sender As Object, ByVal e As                                                    GridQueryDragColumnHeaderEventArgs)

    If e.Reason <> GridQueryDragColumnHeaderReason.HitTest Then

        System.Diagnostics.Debug.WriteLine("gridControl1_QueryAllowDragColumnHeader: " & e.ToString())

    End If

End Sub

{% endhighlight %}

 The following screen shot illustrates how to drag the column header.

![](Grid-Control_images/Grid-Control_img222.jpeg)

