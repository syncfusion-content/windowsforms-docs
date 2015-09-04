---
layout: post
title: Deriving-Cell-Control
description: deriving cell control
platform: WindowsForms
control: Grid
documentation: ug
---

# Deriving Cell Control

Derived cell controls can be used to add cells that have special functions. You can employ such controls to produce special behavior like masked edit control, draggable button, or tree node within a grid cell. Being able to extend cell behavior through the derived cell controls makes Essential Grid very adaptable. 

There are two classes involved in defining cell architecture within Essential Grid. GridCellModelBase serves as the base class for the first class, which is involved in the cell model. GridCellRendererBase is the base class for second class, which is involved in defining cell control, the cell renderer. For example, Static cell control is defined in GridStaticCellModel and GridStaticCellRenderer classes which are derived from these base classes. So, whether cell control is a text box, combo box, or NumericUpDown cell, the behavior is accomplished through these two classes derived from GridCellModelBase and GridCellRendererBase.

In the next sections, you will learn how to derive cell control from, _C:\Syncfusion\EssentialStudio\VersionNumber\Windows\Grid.Windows\Samples\[Version Number]\CustomCellTypes\DerivedCellControlTutorial_  sample.

Also, _C:\Syncfusion\EssentialStudio\VersionNumber\Windows\Grid.Windows\Samples\[Version Number]\CustomCellTypes\DropDownFormAndUserControlSample_ sample illustrates how to add your own cell controls. It has two derived cell controls, one drops a modal form when a cell button is pressed and the other displays a pop-up UserControl when a cell button is pressed. Among the samples shipped with Grid control, there are several that provide custom cell types. The following table lists some of the samples.

_Table 25: Samples_

<table>
<tr>
<th>
SAMPLES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
ExcelSelectionMarker</td><td>
Has a derived celltype that displays BMP in a cell that is stored in GridStyleInfo.Tag. </td></tr>
<tr>
<td>
GridDataBoundImageCell</td><td>
Has two cell-derived cell types. Both display picture data stored in a database in a grid cell. One displays the picture directly in the grid cell with several choices regarding how the image will fit into the cell. The second celltype is a drop-down cell that displays a picture box when you click the cell.</td></tr>
<tr>
<td>
VirtTreeGrid</td><td>
Has an expandable tree node cell with an indentation property. This celltype is used in this example to enable the grid to have collapsible rows and generally function as a multicolumn tree control.</td></tr>
<tr>
<td>
1. LinkLabelCells</td><td>
2. Has LinkLabel-derived cell type. This cell type allows you to3. place a link in a GridCell and then launch the link in a browser4. window by clicking the link.</td></tr>
<tr>
<td>
<br>CellButtons</td><td>
Shows two different types of derived cell controls with buttons. The first is an ellipsis cell that displays further information when you click the button. This particular cell uses a bitmap button to display the ellipsis. The second custom cell type in this sample is a bar of three buttons that display different drag effects as you mouse down and drag.</td></tr>
<tr>
<td>
Drop-down grid</td><td>
Shows how you can drop a new grid in a cell. This sample is useful as it shows how to pass keystrokes onto the control that is embedded in the grid. For example, you may want the dropped grid to handle ARROW keys, but not have the ARROW keys move to another cell in the parent grid.</td></tr>
<tr>
<td>
CalendarCells</td><td>
Shows how you can drop Windows Forms DateTimePicker in a cell.</td></tr>
<tr>
<td>
SliderCells</td><td>
Shows how you can drop Windows Forms Slider Control in a cell.</td></tr>
<tr>
<td>
RepeaterUserControl</td><td>
Shows how you can use a derived cell control in a grid to create a repeater control used to edit DataTables.</td></tr>
</table>

{% seealso %}

{% endseealso %}

## GridCellModelBase

The main function of GridCellModelBase derived class is to serialize your control. It can hold any persistent state independent data that your control uses. The state dependent data should be part of GridStyleInfo object for the cell, but any other persistent property (for example, the initial height of a drop-down) will be in this GridCellModelBase derived class. Another major function of this class is to create cellrenderer object of the correct type. In fact, the only required override in GridCellModelBase derived class is the CreateRenderer method. In that override, you can create and return GridCellRendererBase derived object that would handle the user interactions in your new cell type. In general, you probably will not be able to derive directly from the base class, but instead from an existing Essential Grid derived class such as GridStaticCellModel. The following code example illustrates this.


{% highlight c# %}


//Defines custom Cell Model by inheriting GridStaticCellModel.

public class LinkLabelCellModel : GridStaticCellModel

{

protected LinkLabelCellModel(SerializationInfo info, StreamingContext context): base(info, context)

{

}

public LinkLabelCellModel(GridModel grid): base(grid)

{

AllowFloating = false;

}



//Overrides CreateRenderer Method to create CellRenderer object.   

public override GridCellRendererBase CreateRenderer(GridControlBase control)

{

return new LinkLabelCellRenderer(control, this);

}

}




{% endhighlight  %}
{% highlight vbnet %}


'Defines custom Cell Model by inheriting GridStaticCellModel.

Public Class LinkLabelCellModel

    Inherits GridStaticCellModel

    Protected Sub New(ByVal info As SerializationInfo, ByVal context As StreamingContext)

        MyBase.New(info, context)



    End Sub



    Public Sub New(ByVal grid As GridModel)

        MyBase.New(grid)

        AllowFloating = False



    End Sub



'Overrides CreateRenderer Method to create CellRenderer object.

    Public Overloads Overrides Function CreateRenderer(ByVal control As GridControlBase) As GridCellRendererBase

        Return New LinkLabelCellRenderer(Control, Me)

    End Function

End Class
{% endhighlight  %}

## GridCellRendererBase

The class derived from GridCellRendererBase handles drawing of the cell and user interaction aspect of the cell architecture. It takes care of things like the handling of the mouse and keyboard messages. Some of the virtual members you might override are listed in the following table.

_Table 26: Virtual members to override_

<table>
<tr>
<th>
VIRTUAL METHODS</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
OnInitialize(int rowIndex, int colIndex)</td><td>
Override this method if you need to do any initialization for the current cell. One primary use of this method is to move state information from the GridStyleInfo object to cell control that handles active editing of the cell. For example, if your custom control is a checked list box control, you will use this method to check selected items in the embedded checked list box from information stored in the cell's style object. </td></tr>
<tr>
<td>
OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)</td><td>
Called to draw contents of the client bounds for the cell. For example, the text for a static cell. If your cell has an active state, then normally there are two paths through OnDraw. One path draws the active cell and the other handles the drawing of the cell when it is not active. Override it when you want to draw the content of your cell.</td></tr>
<tr>
<td>
OnKeyDown(KeyEventArgs e)</td><td>
Called when the user presses a key.</td></tr>
<tr>
<td>
OnKeyUp(KeyEventArgs e)</td><td>
Called when the user releases a key.</td></tr>
<tr>
<td>
OnKeyPress(KeyPressEventArgs e)</td><td>
Called for a user key press.</td></tr>
<tr>
<td>
OnHitTest(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs, IMouseController controller)</td><td>
Override OnHitTest in your derived cell renderer if you want to catch mouse events. If you want your renderer class to handle mouse actions like OnMouseDown or OnMouseMove, this OnHitTest should return a non-zero value. Otherwise, your mouse methods will not be called.</td></tr>
<tr>
<td>
OnMouseHoverLeave(int rowIndex, int colIndex, EventArgs e)</td><td>
Called when your cell renderer has indicated in its OnHitTest override that it wants to receive mouse events, and that the user is moving the mouse out of the cell.</td></tr>
<tr>
<td>
OnMouseHover(int rowIndex, int colIndex, MouseEventArgs e)</td><td>
Called when your cell renderer has indicated in its OnHitTest override that it wants to receive mouse events and that the user is moving the mouse over the cell.</td></tr>
<tr>
<td>
OnMouseHoverEnter(int rowIndex, int colIndex)</td><td>
Called when your cell renderer has indicated in its OnHitTest override that it wants to receive mouse events and that the user has moved the mouse into the cell.</td></tr>
<tr>
<td>
OnMouseDown(int rowIndex, int colIndex, MouseEventArgs e)</td><td>
Called when your cell renderer has indicated in its OnHitTest override that it wants to receive mouse events and that the user has pressed a mouse button.</td></tr>
</table>


These are only a few of the many virtual methods available to you. For a complete list, take a look at the Essential Grid Class Reference. 



In general, you probably will not derive directly from the base class, but instead from an existing Essential Grid derived class such as GridStaticCellModel. For a sample implementation of a derived cell control that is based on the existing Static cell control, take a look at the sample in the following path: 

_C:\Syncfusion\EssentialStudio\VersionNumber\Windows\Grid.Windows\Samples\[Version Number]\CustomCellTypes\DropDownFormAndUserControlSample_. 

It shows two implementations of drop-downs. One drops a modal form by deriving GridStaticCellModel and GridStaticCellRenderer. The other drops UserControl using popup architecture that handles focus issues by deriving GridDropDownCellModel and GridDropDownCellRenderer.

