---
layout: post
title: How-to-Place-UserControl-in-a-Header-Cell | Windows Forms | Syncfusion
description: how to place usercontrol in a header cell
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Place UserControl in a Header Cell

To have User Control in GridGroupingControl, GridGenericCellModel and GridGenericCellRenderer classes must be derived and User Control designed must be made as a cell model in the GridGroupingControl using these derived classes.

The following are the steps that need to be followed to do this.

Step 1. The UserControl form is added to the project and the required controls are dropped into it.

Step 2. The GridGenericCellModel and GridGenericCellRenderer classes are derived and the UserControl is drawn accordingly to fit into the required cell header.
{% capture codesnippet1 %}
{% tabs %}
{% highlight C# %}

public class CustomControlCellRenderer: GridGenericControlCellRenderer
{
    Control host = null;
    public CustomControlCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
    : base(grid, cellModel)
    {
        SupportsFocusControl = true;
    }
   protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
  {
       if (host == null)
       {
           host = new Control();
           Grid.Controls.Add(host);
       }
       Button c = CustomControlCellModel.CustomControl;
       FixControlParent(c);
       c.Bounds = clientRectangle;
       c.Refresh();
  }

}

{% endhighlight %}
{% highlight vb %}

Public Class CustomControlCellRenderer Inherits GridGenericControlCellRenderer
Private host As Control = Nothing
Public Sub New(ByVal grid As GridControlBase, ByVal cellModel As GridCellModelBase)
MyBase.New(grid, cellModel)
SupportsFocusControl = true
End Sub
Protected Overrides Sub OnDraw(ByVal g As Graphics, ByVal clientRectangle As Rectangle, ByVal rowIndex As Integer, ByVal colIndex As Integer, ByVal style As GridStyleInfo)
If (host = Nothing) Then
host = New Control
Grid.Controls.Add(host)
End If
Dim c As Button = CustomControlCellModel.CustomControl
FixControlParent(c)
c.Bounds = clientRectangle
c.Refresh
End Sub
End Class

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }

Step 3. A new CellType is created by adding the instance of derived generic cell model class into the GridGroupingControl's CellModels.
{% capture codesnippet2 %}
{% tabs %}
{% highlight C# %}

CustomControlCellModel.CustomControl = new Button();
this.gridGroupingControl1.Table.TableModel.CellModels.Add("UserControl",new CustomControlCellModel(this.gridGroupingControl1.TableModel));

{% endhighlight %}

{% highlight vb %}

CustomControlCellModel.CustomControl = New Button
Me.gridGroupingControl1.Table.TableModel.CellModels.Add("UserControl", New CustomControlCellModel(Me.gridGroupingControl1.TableModel))

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }
