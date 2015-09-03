---
layout: post
title: How-to-Align-Image-Button-at-the-Centre-of-a-Cell
description: how to align image button at the centre of a cell 
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Align Image Button at the Centre of a Cell 

To align the button at the center of the cell, customize the model and the renderer of the cell. Specify the bounds of the button using the OnLayout() method. The following code illustrates how to align the button at the center of the grid cell: 


{% highlight c# %}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		TraceUtil.TraceCurrentMethodInfo(rowIndex, colIndex, style, innerBounds, buttonsBounds);
		Rectangle rect = GridUtil.CenterInRect(innerBounds, this.Model.ButtonBarSize);
		int width = rect.Width / 2;
		buttonsBounds[0] = new Rectangle(rect.X, rect.Y, width, rect.Height);
		return innerBounds;
	}

{% endhighlight %}

{% highlight vbnet %}
		Protected Overrides Function OnLayout(ByVal rowIndex As Integer, ByVal colIndex As Integer, ByVal style As GridStyleInfo, ByVal innerBounds As Rectangle, ByVal buttonsBounds As Rectangle()) As Rectangle            
			TraceUtil.TraceCurrentMethodInfo(rowIndex, colIndex, style, innerBounds, buttonsBounds)            
			Dim rect As Rectangle = GridUtil.CenterInRect(innerBounds, Me.Model.ButtonBarSize)            
			Dim width As Integer = rect.Width / 2            
			buttonsBounds(0) = New Rectangle(rect.X, rect.Y, width, rect.Height)            
			Return innerBounds        
		End Function

{% endhighlight %}


