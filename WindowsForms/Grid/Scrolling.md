---
layout: post
title: Scrolling of GridControl for Syncfusion Essential Windows Forms
description: This section explains on how to enable scrolling and custom scrollbars in GridControl.
platform: windowsforms
control: GridControl
documentation: ug
---

# Scrolling
GridControl has provide the built in support for scrolling. This section will explain about types of scrolling and different types of scrollbars available for Gridcontrol.

## Enable Auto Scrolling 
The auto scrolling can be enabled or disabled for both horizontal and vertical scrollbars by setting the [AutoScrolling](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~AutoScrolling.html) property to `ScrollBars.Both`. This can also enabled separately for horizontal and vertical scrollbars.
{% tabs %}
{% highlight c# %}
//Enables AutoScrolling.
this.gridControl1.AutoScrolling = ScrollBars.Both;
{% endhighlight %}
{% highlight vb %}
'Enables AutoScrolling.
Me.gridControl1.AutoScrolling = ScrollBars.Both
{% endhighlight %}
{% endtabs %}

## Pixel scrolling 
By default the grid will scroll to the next cell position. So that the grid can perform the scrolling based on the index of the cells. The Pixel scrolling is used to scroll the contents of the grid pixel by pixel. 
{% tabs %}
{% highlight c# %}
//Enable Pixel Scrolling
this.gridControl1.VScrollPixel = true;
this.gridControl1.HScrollPixel = true;
{% endhighlight %}
{% highlight vb %}
'Enable Pixel Scrolling
Me.gridControl1.VScrollPixel = True
Me.gridControl1.HScrollPixel = True
{% endhighlight %}
{% endtabs %}

N> In normal scrolling, the hidden rows and columns are considered as existing rows and columns. So that it will takes a long time to scroll the multiple hidden rows/column. Whereas the pixel scrolling will excludes the hidden rows and columns while scrolling the grid and also improve the performance.

### Optimized Pixel Scrolling
The pixel scrolling is not optimized for large row scenarios. To optimize the pixel scrolling set create the derived GridControl and override a couple of virtual methods to make it perform well. Also use the binary tree structures to quickly get the row index for an absolute pixel position and vice versa.

The following methods are need to be override in the derived GridControl for Optimized Vertical scrolling,

* [RowIndexToVScrollPixelPos](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl~RowIndexToVScrollPixelPos.html)(int rowIndex)
* [VScrollPixelPosToRowIndex](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl~VScrollPixelPosToRowIndex.html)(int pixelPos, out int rowIndex, out int pixelDelta)
* [GetVScrollPixelHeight](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl~GetVScrollPixelHeight.html)()
 
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
        rowIndex = (pixelPos - Model.RowHeights[0]) / Model.Rows.DefaultSize + 1; pixelDelta = (pixelPos - Model.RowHeights[0]) % Model.Rows.DefaultSize;
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class DerivedGridControl
	Inherits GridControl
	'''Gets the Scroll Position for the pixel scrolling of a row. 
	Public Overrides Function RowIndexToVScrollPixelPos(ByVal rowIndex As Integer) As Integer

		'Takes separate height for column headers into account. 
		rowIndex = Math.Min(rowIndex, Model.RowCount)
		If rowIndex > 0 Then
			Return (rowIndex - 1) * Model.Rows.DefaultSize + Model.RowHeights(0)
		Else
			Return Model.RowHeights(0)
		End If
	End Function

	'Gets the value for the vertical pixel Position. 
	Public Overrides Function GetVScrollPixelHeight() As Integer

		'Checks the number of rows in the Grid.
		If Model.RowCount = 0 Then
			Return 0
		End If

		'Returns the vertical pixel Position. 
		Return (Model.RowCount - 1) * Model.Rows.DefaultSize + Model.RowHeights(0)
	End Function

	'Gets the row and pixel Delta to the scroll position of the row for the specified scroll position. 
	Public Overrides Sub VScrollPixelPosToRowIndex(ByVal pixelPos As Integer, <System.Runtime.InteropServices.Out()> ByRef rowIndex As Integer, <System.Runtime.InteropServices.Out()> ByRef pixelDelta As Integer)
		If pixelPos < pixelPos - Model.RowHeights(0) Then
			rowIndex = 0
			pixelDelta = pixelPos
		End If
		rowIndex = (pixelPos - Model.RowHeights(0)) / Model.Rows.DefaultSize + 1
		pixelDelta = (pixelPos - Model.RowHeights(0)) Mod Model.Rows.DefaultSize
	End Sub
End Class
{% endhighlight %}
{% endtabs %}
2.Assign the New custom control to the GridControl.
{% tabs %}
{% highlight c# %}
//Sets the derived GridControl to the grid.
this.gridControl1 = new VscrollOptimization.DerivedGridControl();
{% endhighlight %}
{% highlight vb %}
'Sets the derived GridControl to the grid.
Me.gridControl1 = New VscrollOptimization.DerivedGridControl()
{% endhighlight %}
{% endtabs %}
3. Set the `VScrollPixel` property to true.
{% tabs %}
{% highlight c# %}
//Enables pixel scrolling.
this.gridControl1.VScrollPixel = true;
{% endhighlight %}
{% highlight vb %}
'Enables pixel scrolling.
Me.gridControl1.VScrollPixel = True
{% endhighlight %}
{% endtabs %}

## Scrolling Options
This topic will discuss about the properties and methods available for scrolling in GridControl. 

### Setting the Visibility of Scrollbars
The visibility of the vertical and horizontal scrollbars of the grid can be get/set by using the [VScroll](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~VScroll.html) and [HScroll](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~HScroll.html) properties. It will return `true` while displaying the scrollbars otherwise return false.
{% tabs %}
{% highlight c# %}
//Get the visibility of the Horizontal and vertical scrollbars
bool hasVScroll = this.gridControl1.VScroll;
bool hasHScroll = this.gridControl1.HScroll;
{% endhighlight %}
{% highlight vb %}
'Get the visibility of the Horizontal and vertical scrollbars
Dim hasVScroll As Boolean = Me.gridControl1.VScroll
Dim hasHScroll As Boolean = Me.gridControl1.HScroll
{% endhighlight %}
{% endtabs %}

### Enable Real Time Scrolling
The grid can be scroll to the horizontal and vertical direction by tracking the thumbs of the scrollbar. The grid will scroll the grid contents when leaving the thumb track. To update the contents of the grid when tracking the thumbs, set the [VerticalThumbTrack](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~VerticalThumbTrack.html) and [HorizontalThumbTrack](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~HorizontalThumbTrack.html) value as `true`.
{% tabs %}
{% highlight c# %}
//Used to repaint the grid while scrolling the thumb track
this.gridControl1.VerticalThumbTrack = true;
this.gridControl1.HorizontalThumbTrack = true;
{% endhighlight %}
{% highlight vb %}
'Used to repaint the grid while scrolling the thumb track
Me.gridControl1.VerticalThumbTrack = True
Me.gridControl1.HorizontalThumbTrack = True
{% endhighlight %}
{% endtabs %}

N> The Metro scrollbars have the real time scrolling as default behavior.

### Scroll and View a Specific Cell 
To scroll the contents of the grid to the particular cell, use the [ScrollCellInView](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ScrollCellInView.html) method. This method is used to get the given cell or range of cells into the view.
{% tabs %}
{% highlight c# %}
int rowIndex = 15;
int colIndex = 4;

//Scroll the cell in view
this.gridControl1.ScrollCellInView(rowIndex, colIndex);

//Move the current cell into the specific index
this.gridControl1.ScrollCellInView(rowIndex, colIndex, GridScrollCurrentCellReason.MoveTo);
{% endhighlight %}
{% highlight vb %}
Dim rowIndex As Integer = 15
Dim colIndex As Integer = 4

'Scroll the cell in view
Me.gridControl1.ScrollCellInView(rowIndex, colIndex)

'Move the current cell into the specific index
Me.gridControl1.ScrollCellInView(rowIndex, colIndex, GridScrollCurrentCellReason.MoveTo)
{% endhighlight %}
{% endtabs %}
It can be used to scrolling the grid to the top of the given range as of follows,
{% tabs %}
{% highlight c# %}
GridRangeInfo range = GridRangeInfo.Row(14);
//Scroll the content of the grid using the 14th row
this.gridControl1.ScrollCellInView(range);
{% endhighlight %}
{% highlight vb %}
Dim range As GridRangeInfo = GridRangeInfo.Row(14)
'Scroll the content of the grid using the 14th row
Me.gridControl1.ScrollCellInView(range)
{% endhighlight %}
{% endtabs %}

## Displaying Scroll Tips
The scroll tips can be displayed while dragging a horizontal/vertical scroll bar thumb by setting the [HorizontalScrollTips](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~HorizontalScrollTips.html)/[VerticalScrollTips](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~VerticalScrollTips.html) property to `true`. The default value is set to *false*.
{% tabs %}
{% highlight c# %}
// Display the horizontal and Vertical Scroll tips
this.gridControl1.HorizontalScrollTips = true;
this.gridControl1.VerticalScrollTips = true;
{% endhighlight %}
{% highlight vb %}
' Display the horizontal and Vertical Scroll tips
Me.gridControl1.HorizontalScrollTips = True
Me.gridControl1.VerticalScrollTips = True
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img1.jpeg)

The scroll tips text can be changed by setting the [ScrollTipFormat](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~ScrollTipFormat.html) property value as of follows,
{% tabs %}
{% highlight c# %}
//Sets the text to be displayed in the ScrollTip window with a place holder for scroll position.
this.gridControl1.ScrollTipFormat = "Cell {0}";
{% endhighlight %}
{% highlight vb %}
'Sets the text to be displayed in the ScrollTip window with a place holder for scroll position.
Me.gridControl1.ScrollTipFormat = "Cell {0}"
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img2.jpeg)

### Setting Scroll Behavior for Frozen Cells
The scrolling behavior of the current cell moves within the frozen range using the arrow keys can be set by enabling the [ScrollFrozen](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~ScrollFrozen.html) property. The default value is set to `true`.
{% tabs %}
{% highlight c# %}
//Defines scroll behavior in frozen cells.
this.gridControl1.ScrollFrozen = true;
{% endhighlight %}
{% highlight vb %}
'Defines scroll behavior in frozen cells.
Me.gridControl1.ScrollFrozen = True
{% endhighlight %}
{% endtabs %}

### Scroll Current Cell into View When its Activated
The current cell can be scrolled to the view when it is activated by setting the [AllowScrollCurrentCellInView](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~AllowScrollCurrentCellInView.html) property to desired [GridScrollCurrentCellReason](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridScrollCurrentCellReason.html) enumeration.
{% tabs %}
{% highlight c# %}
//Get the current cell scroll into the view when its activated
this.gridControl1.AllowScrollCurrentCellInView = GridScrollCurrentCellReason.Activate;
{% endhighlight %}
{% highlight vb %}
'Get the current cell scroll into the view when its activated
Me.gridControl1.AllowScrollCurrentCellInView = GridScrollCurrentCellReason.Activate
{% endhighlight %}
{% endtabs %}

### Getting the First Row Index of the View Layout
The first row index of the view layout can be get by using the [TopRowIndex](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~TopRowIndex.html) property. It will be varied while scrolling the grid. At any time this will return the first row index of the view layout. Similarly, the top row index can be changed or scrolled into view by setting `TopRowIndex` property.
{% tabs %}
{% highlight c# %}
//Used to scroll the given row index to the top of the Grid
this.gridControl1.TopRowIndex = 3;
{% endhighlight %}
{% highlight vb %}
'Used to scroll the given row index to the top of the Grid
Me.gridControl1.TopRowIndex = 3
{% endhighlight %}
{% endtabs %}

## Intelligence Mouse Scrolling 
The contents of the grid can be automatically scrolled by setting the [EnableIntelliMouse](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ISupportIntelliMouse~EnableIntelliMouse.html) property to `true`. 
{% tabs %}
{% highlight c# %}
//Enable intelligent Mouse scroll
this.gridControl1.EnableIntelliMouse = true;
{% endhighlight %}
{% highlight vb %}
'Enable intelligent Mouse scroll
Me.gridControl1.EnableIntelliMouse = True
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img3.jpeg)

## Hidden Row or Column Scrolling
The scrolling logic for hidden rows and columns can be applied to the GridControl by enabling [UseOldHiddenScrollLogic](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~UseOldHiddenScrollLogic.html) property.This is a static property, it must be assigned before the ` `InitializeComponent` method.

By default the thumbs are used the visible row and column index to update the positions on the Scrollbars. The [UseOldHiddenScrollLogic](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~UseOldHiddenScrollLogic.html) property is used to avoid the unwanted space leave for the Hidden Row/Column headers.
{% tabs %}
{% highlight c# %}
//Enable Hidden scroll logic
GridControlBase.UseOldHiddenScrollLogic = true;
InitializeComponent();
{% endhighlight %}
{% highlight vb %}
'Enable Hidden scroll logic
GridControlBase.UseOldHiddenScrollLogic = True
InitializeComponent()
{% endhighlight %}
{% endtabs %}

N> Consider the case “The grid have 1000 number of rows and the rows in between 5 and 990 are gets hidden”. In this case the thumb size of the vertical scrollbar is set based on the overall row count of the grid. By enabling the [UseOldHiddenScrollLogic](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~UseOldHiddenScrollLogic.html) static property, the hidden columns is not taken to the account for scrolling. Therefore the scrollbar thumb will draw based only on the visible rows.

The following screenshot shows the grid with applied hidden scroll logic,

![](Scrolling_images/Scrolling_img4.jpeg)

Vertical scrollbar thumb size changed according to the overall row count without using the hidden scroll logic is shows as follows,

![](Scrolling_images/Scrolling_img5.jpeg)

N> The same behavior of the hidden scroll logic can be achieved by enabling the pixel scrolling.

## Scrollbars
The columns and rows of the GridControl can be scrolled horizontally and vertically using built-in scrollbars. The appearance of the scrollbar can be applied using GridOfficeScrollbars property. The default scrollbar is `OfficeScrollBars.None`. The following are the different styles of scrollbars available for GridControl,

* Metro
* Office2007
* Office2010
* None

{% tabs %}
{% highlight c# %}
//Set Office Scrollbars to the Grid control
this.gridControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro;
{% endhighlight %}
{% highlight vb %}
'Set Office Scrollbars to the Grid control
Me.gridControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img6.jpeg)

### Setting the Color Scheme for Office Scrollbars 
The themes can be applied for the office scrollbars by setting the appropriate color scheme. Following are the color schemes available for the GridControl.

[Office2007ScrollBarsColorScheme](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~Office2007ScrollBarsColorScheme.html) – Used to apply the color scheme for Office 2007 Scrollbars
[Office2010ScrollBarsColorScheme](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~Office2010ScrollBarsColorScheme.html) – Used to apply color scheme for Office 2010 scrollbars

{% tabs %}
{% highlight c# %}
//Set the color scheme
this.gridControl1.Office2007ScrollBarsColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Black;
{% endhighlight %}
{% highlight vb %}
'Set the color scheme
Me.gridControl1.Office2007ScrollBarsColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Black
{% endhighlight %}
{% endtabs %}
![](Scrolling_images/Scrolling_img7.jpeg)

N> There is no color scheme available for metro theme.

### Scrollbar Context Menu
Scrollbars have the default context menu strip for setting the scrolling options. It will popup when right click on the scrollbar. The grid will scroll the contents based on the options selected in the context menu.
![](Scrolling_images/Scrolling_img8.jpeg)

### Disabling the scrollbar Context menu
The scrollbar context menu can be disabled by handling the [ShowContextMenu](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~ShowContextMenu_EV.html) event of the GridControl as follows,
{% tabs %}
{% highlight c# %}
this.gridControl1.ShowContextMenu += new Syncfusion.Windows.Forms.ShowContextMenuEventHandler(gridControl1_ShowContextMenu);
void gridControl1_ShowContextMenu(object sender, Syncfusion.Windows.Forms.ShowContextMenuEventArgs e)
{
    Point pt = this.gridControl1.GridPointToClient(e.Point);
    //Check for clicking in the region of Vertical and Horizontal scrollbar 
    if (this.gridControl1.ClientRectangle.Width < pt.X  || this.gridControl1.ClientRectangle.Height < pt.Y)
    {
        //context menu has been handled
        e.Cancel = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.ShowContextMenu, AddressOf gridControl1_ShowContextMenu
Private Sub gridControl1_ShowContextMenu(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.ShowContextMenuEventArgs)
	Dim pt As Point = Me.gridControl1.GridPointToClient(e.Point)
	'Check for clicking in the region of Vertical and Horizontal scrollbar 
	If Me.gridControl1.ClientRectangle.Width < pt.X OrElse Me.gridControl1.ClientRectangle.Height < pt.Y Then
		'context menu has been handled
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

N>The context menu of the overall grid can be disabled by setting the e.Cancel as `true` in the [ShowContextMenu](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~ShowContextMenu_EV.html) event.

## Shared Scrollbars 
The GridControl can share the scroll bars with other controls by setting the [HScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~HScrollBehavior.html) and [VScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~VScrollBehavior.html)  property value as `GridScrollbarMode.Shared`. This can be used to synchronize the scrolling of multiple grids. 
{% tabs %}
{% highlight c# %}
//Set the shared scrollbar mode 
this.gridControl1.HScrollBehavior = GridScrollbarMode.Shared;
this.gridControl1.VScrollBehavior = GridScrollbarMode.Shared;

//Enable the Shared Scrollbars
this.gridControl1.UseSharedScrollBars = true;

//Set the inner scrollbar which is shared to the grid this.gridControl1.HScrollBar.InnerScrollBar = hScrollBar1;
this.gridControl1.VScrollBar.InnerScrollBar = vScrollBar1;
{% endhighlight %}
{% highlight vb %}
'Set the shared scrollbar mode 
Me.gridControl1.HScrollBehavior = GridScrollbarMode.Shared
Me.gridControl1.VScrollBehavior = GridScrollbarMode.Shared

'Enable the Shared Scrollbars
Me.gridControl1.UseSharedScrollBars = True

'Set the inner scrollbar which is shared to the grid this.gridControl1.HScrollBar.InnerScrollBar = hScrollBar1;
Me.gridControl1.VScrollBar.InnerScrollBar = vScrollBar1

{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img9.jpeg)

### Indicating the last Row/Column while scrolling
To notify the last row/column reached while scrolling the grid, invoke the [Scroll](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollBarWrapper~Scroll_EV.html) event of the scroll bars as of follows, 
{% tabs %}
{% highlight c# %}
//Used to get the scroll index
this.gridControl1.VScrollBar.Scroll += VScrollBar_Scroll;

private int lastValue = -1;
void VScrollBar_Scroll(object sender, ScrollEventArgs e)
{
    if (lastValue == e.NewValue && Control.MouseButtons == MouseButtons.Left)
    {
        Console.WriteLine("No Move...");
    }
    lastValue = e.NewValue;
}
{% endhighlight %}
{% highlight vb %}
'Used to get the scroll index
Private Me.gridControl1.VScrollBar.Scroll += AddressOf VScrollBar_Scroll

Private lastValue As Integer = -1
Private Sub VScrollBar_Scroll(ByVal sender As Object, ByVal e As ScrollEventArgs)
	If lastValue = e.NewValue AndAlso Control.MouseButtons = MouseButtons.Left Then
		Console.WriteLine("No Move...")
	End If
	lastValue = e.NewValue
End Sub
{% endhighlight %}
{% endtabs %}

## Scrolling Events
This section will explain about the events used for the scrolling in GridControl.

### Disable the Pixel Scrolling using events
The pixel scrolling of the GridControl can be restricted by handling the [HScrollPixelPosChanging](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~HScrollPixelPosChanging_EV.html) and [VScrollPixelPosChanging](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~VScrollPixelPosChanging_EV.html) events. This events will be raised while scrolling the grid through the scrollbar when[pixel scrolling](#_Pixel_scrolling "") is enabled. 
{% tabs %}
{% highlight c# %}
this.gridControl1.HScrollPixelPosChanging += new GridScrollPositionChangingEventHandler(gridControl1_HScrollPixelPosChanging);
this.gridControl1.VScrollPixelPosChanging += new GridScrollPositionChangingEventHandler(gridControl1_VScrollPixelPosChanging);
void gridControl1_HScrollPixelPosChanging(object sender, GridScrollPositionChangingEventArgs e)
{
    MessageBox.Show(e.ScrollPosition.ToString());
    //Cancel the Horizontal Pixel scrolling of grid through the thumb track
    e.Cancel = true;
}
void gridControl1_VScrollPixelPosChanging(object sender, GridScrollPositionChangingEventArgs e)
{
    MessageBox.Show(e.ScrollPosition.ToString());
    //Cancel the Vertical Pixel scrolling of the grid through the thumb track
    e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.HScrollPixelPosChanging, AddressOf gridControl1_HScrollPixelPosChanging
AddHandler gridControl1.VScrollPixelPosChanging, AddressOf gridControl1_VScrollPixelPosChanging
Private Sub gridControl1_HScrollPixelPosChanging(ByVal sender As Object, ByVal e As GridScrollPositionChangingEventArgs)
	MessageBox.Show(e.ScrollPosition.ToString())
	'Cancel the Horizontal Pixel scrolling of grid through the thumb track
	e.Cancel = True
End Sub
Private Sub gridControl1_VScrollPixelPosChanging(ByVal sender As Object, ByVal e As GridScrollPositionChangingEventArgs)
	MessageBox.Show(e.ScrollPosition.ToString())
	'Cancel the Vertical Pixel scrolling of the grid through the thumb track
	e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}
Once the pixel scrolling is done on the grid, it can be notified by invoking the [HScrollPixelPosChanged](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~HScrollPixelPosChanged_EV.html) and [VScrollPixelPosChanged](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~VScrollPixelPosChanged_EV.html) events.

{% tabs %}
{% highlight c# %}
//To notify the Horizontal and vertical pixel scrolling 
this.gridControl1.HScrollPixelPosChanged += new GridScrollPositionChangedEventHandler(gridControl1_HScrollPixelPosChanged);
this.gridControl1.VScrollPixelPosChanged += new GridScrollPositionChangedEventHandler(gridControl1_VScrollPixelPosChanged);
void gridControl1_HScrollPixelPosChanged(object sender, GridScrollPositionChangedEventArgs e)
{
    MessageBox.Show("Horizontal scrollbar pixel position is changed");
}
void gridControl1_VScrollPixelPosChanged(object sender, GridScrollPositionChangedEventArgs e)
{
    MessageBox.Show("Vertical scrollbar pixel position is changed");
}
{% endhighlight %}
{% highlight vb %}
'To notify the Horizontal and vertical pixel scrolling 
AddHandler gridControl1.HScrollPixelPosChanged, AddressOf gridControl1_HScrollPixelPosChanged
AddHandler gridControl1.VScrollPixelPosChanged, AddressOf gridControl1_VScrollPixelPosChanged
Private Sub gridControl1_HScrollPixelPosChanged(ByVal sender As Object, ByVal e As GridScrollPositionChangedEventArgs)
	MessageBox.Show("Horizontal scrollbar pixel position is changed")
End Sub
Private Sub gridControl1_VScrollPixelPosChanged(ByVal sender As Object, ByVal e As GridScrollPositionChangedEventArgs)
	MessageBox.Show("Vertical scrollbar pixel position is changed")
End Sub
{% endhighlight %}
{% endtabs %}

### Setting the Maximum Scrolling Position through Events 
The [HorizontalScroll](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~HorizontalScroll_EV.html) and [VerticalScroll](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~VerticalScroll_EV.html) events will be raised when the scrollbar position is changed. By using this event, user can restrict the maximum scrolling position of the scrollbar.
{% tabs %}
{% highlight c# %}
this.gridControl1.HorizontalScroll += new ScrollEventHandler(gridControl1_HorizontalScroll);
void gridControl1_HorizontalScroll(object sender, ScrollEventArgs e)
{
    if(e.NewValue > 230)
    {
        //Set the maximum scroll position
        e.NewValue = 230;
    }            
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl1.HorizontalScroll += New ScrollEventHandler(AddressOf gridControl1_HorizontalScroll)
Private Sub gridControl1_HorizontalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)
	If e.NewValue > 230 Then
		'Set the maximum scroll position
		e.NewValue = 230
	End If
End Sub
{% endhighlight %}
{% endtabs %}

## Custom Scrollbar
For customizing the appearance of the Scrollbars, need to add the [ScrollersFrame](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollersFrame.html) control into the grid. It can be drag and drop to the application from the Toolbox window.
{% tabs %}
{% highlight c# %}
//Attach the scroll Frame to the Grid control
this.scrollersFrame1.AttachedTo = this.gridControl1;
{% endhighlight %}
{% highlight vb %}
'Attach the scroll Frame to the Grid control
Me.scrollersFrame1.AttachedTo = Me.gridControl1
{% endhighlight %}
{% endtabs %}
![](Scrolling_images/Scrolling_img10.jpeg)

The [ScrollersFrame](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollersFrame.html) can be applied with the different visual styles as of follows,

* Office2007
* Office2010
* WindowsXP
* Classic
* Office2007Generic
* Metro

{% tabs %}
{% highlight c# %}
// Custom visual styles available for ScrollersFrame
this.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;
{% endhighlight %}
{% highlight vb %}
' Custom visual styles available for ScrollersFrame
Me.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007
{% endhighlight %}
{% endtabs %}
![](Scrolling_images/Scrolling_img11.jpeg)

### Changing the Back Color for the Metro Scrollbars 
The back color of the metro scrollbars can be customized to the desired color by using [ScrollerBackground](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.MetroColorTable~ScrollerBackground.html) property of the `MetroColorTable`.
{% tabs %}
{% highlight c# %}
//Set the color for scroll bar for metro visual style

this.gridControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro;
this.gridControl1.MetroColorTable.ScrollerBackground = Color.Navy;
{% endhighlight %}
{% highlight vb %}
'Set the color for scroll bar for metro visual style

Me.gridControl1.GridOfficeScrollBars = Syncfusion.Windows.Forms.OfficeScrollBars.Metro
Me.gridControl1.MetroColorTable.ScrollerBackground = Color.Navy
{% endhighlight %}
{% endtabs %}

![](Scrolling_images/Scrolling_img12.jpeg)

