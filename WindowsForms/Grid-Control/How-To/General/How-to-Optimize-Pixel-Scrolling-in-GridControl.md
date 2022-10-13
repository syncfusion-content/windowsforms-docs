---
layout: post
title: Optimize-Pixel-Scrolling-in-GridControl | Windows Forms | Syncfusion
description: Learn here all about how to optimize pixel scrolling in gridcontrol using Syncfusion Windows Forms and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to optimize pixel scrolling in GridControl

The grid's base class pixel scrolling is not optimized for large row scenarios. In the derived GridControl, you will have to override a couple of virtual methods to make it perform well and use binary tree structures to quickly get the row index for an absolute pixel position and vice versa.

Follow the steps that are given below to do this.

1. To Create Custom derived GridControl and to override the following methods for Optimized Vertical scrolling.

   * RowIndexToVScrollPixelPos(int rowIndex)
   * VScrollPixelPosToRowIndex(int pixelPos, out int rowIndex, out int pixelDelta)
   * GetVScrollPixelHeight()
{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
public class DerivedGridControl : GridControl 
{
    ///Gets the Scroll Position for the pixel scrolling of a row. 
    
    public override int RowIndexToVScrollPixelPos(int rowIndex) 
   { 
		//Takes separate height for column headers into account. 
		  rowIndex = Math.Min(rowIndex, Model.RowCount); 

		  if (rowIndex > 0) return (rowIndex - 1) * Model.Rows.DefaultSize + Model.RowHeights[0]; 

		  else 
			  return Model.RowHeights[0]; 
	}

	///Gets the value for the vertical pixel Position. 

	public override int GetVScrollPixelHeight() 
	{ 
	//Checks the number of rows in the Grid.
    if (Model.RowCount == 0) return 0; 

	//Returns the vertical pixel Position. 
    return (Model.RowCount - 1) * Model.Rows.DefaultSize + Model.RowHeights[0]; 
	 }

	///Gets the row and pixel Delta to the scroll position of the row for the specified scroll position. 

   public override void VScrollPixelPosToRowIndex(int pixelPos, out int rowIndex, out int pixelDelta) 
   { 
		if (pixelPos < pixelPos - Model.RowHeights[0]) 
		{ 
			 rowIndex = 0; pixelDelta = pixelPos; 
		} 
		rowIndex = (pixelPos - Model.RowHeights[0]) / Model.Rows.DefaultSize + 1; pixelDelta = (pixelPos - Model.RowHeights[0]) %                 Model.Rows.DefaultSize; 
    } 
}
{% endhighlight %}
 
{% highlight vb %}  

Public Class DerivedGridControl : Inherits GridControl

'Gets the Scroll Position for the pixel scrolling of a row.
Public Overrides Function RowIndexToVScrollPixelPos(ByVal rowIndex As Integer) As Integer

'Takes separate height for column headers into account.
rowIndex = Math.Min(rowIndex, Model.RowCount)
If rowIndex > 0 Then
Return (rowIndex - 1) * Model.Rows.DefaultSize + 
Model.RowHeights(0)
Else
Return Model.RowHeights(0)
End If
End Function

'''Gets the value for vertical pixel Position.
Public Overrides Function GetVScrollPixelHeight() As Integer

'Checks the number of rows in the Grid.
If Model.RowCount = 0 Then
Return 0
End If

'Returns the vertical pixel Position.
Return (Model.RowCount - 1) * Model.Rows.DefaultSize + 
Model.RowHeights(0)
End Function

'''Gets the row and pixel Delta to the scroll position of the row for the specified scroll position.
Public Overrides Sub VScrollPixelPosToRowIndex(ByVal pixelPos As 
Integer, ByRef rowIndex As 
Integer, ByRef pixelDelta As Integer)
If pixelPos < pixelPos - Model.RowHeights(0) Then
rowIndex = 0
pixelDelta = pixelPos
End If
rowIndex = (pixelPos - Model.RowHeights(0)) / 
Model.Rows.DefaultSize + 1
pixelDelta = (pixelPos - Model.RowHeights(0)) Mod 
Model.Rows.DefaultSize
End Sub
End Class
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. Assign the new custom control to the GridControl.
{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}
				
//Sets the derived GridControl to the grid.
this.gridControl1 = new VerticalScrollOptimization.DerivedGridControl();
{% endhighlight %}

{% highlight vb %}

'Sets the derived GridControl to the grid.
Me.GridControl1 = New VerticalScrollOptimization.DerivedGridControl
{% endhighlight %} 
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

3. Set the VScrollPixel property to TRUE.
{% capture codesnippet3 %}
{% tabs %}
{% highlight c# %}

//Enables pixel scrolling.
this.gridControl1.VScrollPixel = true;
{% endhighlight %}

{% highlight vb %}

'Enables pixel scrolling.
Me.GridControl1.VScrollPixel = True
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}
   