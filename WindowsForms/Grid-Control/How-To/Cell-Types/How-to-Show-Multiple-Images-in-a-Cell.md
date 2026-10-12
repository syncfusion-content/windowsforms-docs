---
layout: post
title: Show Multiple Images Cell in Windows Forms Grid Control | Syncfusion®
description: Show multiple images in a cell in Syncfusion® Windows Forms Grid Control using image cell types and the CellDrawn event and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Show Multiple Images in a Cell in Windows Forms Grid Control

To show multiple Images in a cell, you need to handle CellDrawn Event. Follow the steps that are given below to achieve this.

1. Sets the CellType to GridCellTypeName.Image.
{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

//Sets the CellType to Image Type.
this.gridControl1[3,3].CellType = GridCellTypeName.Image;

{% endhighlight  %}
				
{% highlight vb %}

'Sets the CellType to Image Type.
Me.gridControl1(3,3).CellType = GridCellTypeName.Image

{% endhighlight  %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. In the CellDrawn EventHandler, draw the combined bitmap using DrawImage function.
{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

private void gridControl1_CellDrawn(object sender, Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs e)
{

	if( e.RowIndex == 3 && e.ColIndex == 3)
	{
		//Draws the image to the Cell.
		e.Graphics.DrawImage(bitmap ,e.Bounds.X,e.Bounds.Y );
	 }
}

{% endhighlight  %}
				
{% highlight vb %}

Private Sub gridControl1_CellDrawn(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs)
	If e.RowIndex = 3 And e.ColIndex = 3 Then
 
    'Draws the image to the Cell.
	e.Graphics.DrawImage(bitmap,e.Bounds.X,e.Bounds.Y)
	End If
End Sub

{% endhighlight  %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}