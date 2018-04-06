---
layout: post
title: Cell Types in GridControl
description: how to show multiple images in a cell
platform: windowsforms
control: Grid
documentation: ug
---

# How to show multiple images in a cell

To show multiple Images in a cell, you need to handle CellDrawn Event. Follow the steps that are given below to achieve this.

1.Sets the CellType to GridCellTypeName.Image.

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

2.In the CellDrawn EventHandler, draw the combined bitmap using DrawImage function.

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