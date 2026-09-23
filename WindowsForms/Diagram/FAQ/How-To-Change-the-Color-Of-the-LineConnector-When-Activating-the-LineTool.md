---
layout: post
title: How to change the color of Lines in WinForms Diagram | Syncfusion®
description: Learn how to change the LineConnector color when activating the LineTool in the Syncfusion® Windows Forms Diagram control using custom tool logic.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Change the Color of Connector in Windows Forms Diagram

This page explains about How To Change the Color Of the LineConnector When Activating the LineTool and more details.

## How To Change the Color Of the LineConnector When Activating the LineTool

We can change the color of the LineConnector while activating the LineTool using the LineTool and LineBase class. In the Mouse up event of the LineTool class, change the color of the link. 

Refer to the following code snippet in CustomLineConnector class.

{% tabs %}

{% highlight c# %}

public override Tool ProcessMouseUp( MouseEventArgs evtArgs ) 

{ 

    CompleteAction( ptStart, ptEnd ); 

} 

private void CompleteAction( PointF ptStart, PointF ptEnd ) 

{ 

    Node node = CreateNode( ptStart, ptEnd ); 

    node.LineStyle.LineColor = Color.Red; 

} 

// To activate the LineTool in MainForm.cs.

MyLineTool linetool = new MyLineTool(this.diagram1.Controller); 

this.diagram1.Controller.RegisterTool(linetool); 

this.diagram1.Controller.ActivateTool(linetool); 


{% endhighlight %}

{% highlight vbnet %}

Public Overloads Function ProcessMouseUp(ByVal evtArgs As MouseEventArgs) As Syncfusion.Windows.Forms.Diagram.Tool

CompleteAction(ptStart, ptEnd)

End Function

Private Sub CompleteAction(ByVal ptStart As PointF, ByVal ptEnd As PointF)

Dim node As Syncfusion.Windows.Forms.Diagram.Node = CreateNode(ptStart, ptEnd)

node.LineStyle.LineColor = Color.Red

End Sub

' To activate the LineTool in MainForm.cs.

Dim linetool As New MyLineTool(Me.diagram1.Controller)

Me.diagram1.Controller.RegisterTool(linetool) 

Me.diagram1.Controller.ActivateTool(linetool) 

{% endhighlight %}

{% endtabs %}

![How-To-Change-the-Color-Of-the-LineConnector-When-_img1](How-To-Change-the-Color-Of-the-LineConnector-When-_images/How-To-Change-the-Color-Of-the-LineConnector-When-_img1.jpeg)

LineColor = &#34;Red&#34;
{:.captiontext}

