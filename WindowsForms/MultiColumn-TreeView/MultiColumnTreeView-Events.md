---
layout: post
title: Events in Windows Forms MultiColumn TreeView control | Syncfusion
description: Learn about Events support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Events in Windows Forms MultiColumn TreeView

## Node Painting Events

Node painting events will be triggered before painting or after painting a node.

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
BeforeNodePaint</td><td>
Fired before a node is being painted when the MultiColumnTreeView.OwnerDrawNodes property is set to true.</td></tr>
<tr>
<td>
AfterNodePaint</td><td>
Fired after a node is being painted when the MultiColumnTreeView.OwnerDrawNodes property is set to true.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.BeforeNodePaint += MultiColumnTreeView1_BeforeNodePaint;
this.multiColumnTreeView1.AfterNodePaint += MultiColumnTreeView1_AfterNodePaint;

private void MultiColumnTreeView1_BeforeNodePaint(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvPaintEventArgs e)
        {
            //Node going to get painted
            TreeNodeAdv Node = e.Node;
        }
private void MultiColumnTreeView1_AfterNodePaint(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvPaintEventArgs e)
        {
            //Node which got painted
            TreeNodeAdv Node = e.Node;
        }


{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.BeforeNodePaint += MultiColumnTreeView1_BeforeNodePaint
Me.multiColumnTreeView1.AfterNodePaint += MultiColumnTreeView1_AfterNodePaint

Private Sub MultiColumnTreeView1_BeforeNodePaint(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvPaintEventArgs)
    Dim Node As TreeNodeAdv = e.Node
End Sub

Private Sub MultiColumnTreeView1_AfterNodePaint(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvPaintEventArgs)
    Dim Node As TreeNodeAdv = e.Node
End Sub

{% endhighlight %}

{% endtabs %}

## CheckBox Event

These events will be triggered before checking a node or when interactive check happens.

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
AfterInteractiveChecks</td><td>
Occurs after one or more node's CheckState has changed due to TreeNodeAdv.InteractiveCheckBox setting.</td></tr>
<tr>
<td>
BeforeCheck</td><td>
Occurs before a node's checkbox is checked.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.AfterInteractiveChecks += MultiColumnTreeView1_AfterInteractiveChecks;
this.multiColumnTreeView1.BeforeCheck += MultiColumnTreeView1_BeforeCheck;

private void MultiColumnTreeView1_AfterInteractiveChecks(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvEventArgs e)
        {
            //Gets the Node with this event
            TreeNodeAdv Node = e.Node;
        }
private void MultiColumnTreeView1_BeforeCheck(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvBeforeCheckEventArgs e)
        {
            //Gets the Node with this event
            TreeNodeAdv Node = e.Node;
            string CheckState = e.NewCheckState.ToString();
        }


{% endhighlight %}

{% highlight vb %}
    Me.multiColumnTreeView1.AfterInteractiveChecks += MultiColumnTreeView1_AfterInteractiveChecks
    Me.multiColumnTreeView1.BeforeCheck += MultiColumnTreeView1_BeforeCheck

    Private Sub MultiColumnTreeView1_AfterInteractiveChecks(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvEventArgs)
        Dim Node As TreeNodeAdv = e.Node
    End Sub

    Private Sub MultiColumnTreeView1_BeforeCheck(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvBeforeCheckEventArgs)
        Dim Node As TreeNodeAdv = e.Node
        Dim CheckState As String = e.NewCheckState.ToString()
    End Sub

{% endhighlight %}

{% endtabs %}

## General Event

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
BeforeExpand</td><td>
Occurs before a node is expanded.</td></tr>
<tr>
<td>
Deactivated</td><td>
Occurs when both OnControlLostFocus and OnLeave occur.</td></tr>
<tr>
<td>
FillSplitterPaneChanged</td><td>
Occurs when the FillSplitterPane value has changed.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.BeforeExpand += MultiColumnTreeView1_BeforeExpand;
this.multiColumnTreeView1.Deactivated += MultiColumnTreeView1_Deactivated;
this.multiColumnTreeView1.FillSplitterPaneChanged += MultiColumnTreeView1_FillSplitterPaneChanged;

private void MultiColumnTreeView1_BeforeExpand(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvCancelableNodeEventArgs e)
        {
            //Node which is going to expand
            TreeNodeAdv Node = e.Node;
        }

private void MultiColumnTreeView1_Deactivated(object sender, EventArgs e)
        {
            MessageBox.Show("The MultiColumnTreeView is Deactivated");
        }

private void MultiColumnTreeView1_FillSplitterPaneChanged(object sender, EventArgs e)
        {
            MessageBox.Show("Fill Splitter pane value has been changed");
        }


{% endhighlight %}

{% highlight vb %}

    Me.multiColumnTreeView1.BeforeExpand += MultiColumnTreeView1_BeforeExpand
    Me.multiColumnTreeView1.Deactivated += MultiColumnTreeView1_Deactivated
    Me.multiColumnTreeView1.FillSplitterPaneChanged += MultiColumnTreeView1_FillSplitterPaneChanged

    Private Sub MultiColumnTreeView1_BeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvCancelableNodeEventArgs)
        Dim Node As TreeNodeAdv = e.Node
    End Sub

    Private Sub MultiColumnTreeView1_Deactivated(ByVal sender As Object, ByVal e As EventArgs)
        MessageBox.Show("The MultiColumnTreeView is Deactivated")
    End Sub

    Private Sub MultiColumnTreeView1_FillSplitterPaneChanged(ByVal sender As Object, ByVal e As EventArgs)
        MessageBox.Show("Fill Splitter pane value has been changed")
    End Sub

{% endhighlight %}

{% endtabs %}

## Node Image Events

These events triggers when default expand or collapse image index in changed. 

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
DefaultCollapseImageIndexChanged</td><td>
Occurs when DefaultCollapseImageIndex is changed.</td></tr>
<tr>
<td>
DefaultExpandImageIndexChanged</td><td>
Occurs when DefaultExpandImageIndex is changed.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.DefaultCollapseImageIndexChanged += MultiColumnTreeView1_DefaultCollapseImageIndexChanged;

this.multiColumnTreeView1.DefaultExpandImageIndexChanged += MultiColumnTreeView1_DefaultExpandImageIndexChanged;

private void MultiColumnTreeView1_DefaultCollapseImageIndexChanged(object sender, EventArgs e)
        {
            MessageBox.Show("Default Collapse ImageIndex is changed.");
        }


private void MultiColumnTreeView1_DefaultExpandImageIndexChanged(object sender, EventArgs e)
        {
            MessageBox.Show("Default Expand ImageIndex is changed.");
        }


{% endhighlight %}

{% highlight vb %}

    Me.multiColumnTreeView1.DefaultCollapseImageIndexChanged += MultiColumnTreeView1_DefaultCollapseImageIndexChanged
    Me.multiColumnTreeView1.DefaultExpandImageIndexChanged += MultiColumnTreeView1_DefaultExpandImageIndexChanged

    Private Sub MultiColumnTreeView1_DefaultCollapseImageIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        MessageBox.Show("Default Collapse ImageIndex is changed.")
    End Sub

    Private Sub MultiColumnTreeView1_DefaultExpandImageIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        MessageBox.Show("Default Expand ImageIndex is changed.")
    End Sub

{% endhighlight %}

{% endtabs %}

## Node Editing

Events related to node editing.

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
BeforeEdit</td><td>
Occurs before a node gets into edit mode.</td></tr>
<tr>
<td>
NodeEditorValidated</td><td>
Notifies that a new label has been provided for a node by the user.</td></tr>
<tr>
<td>
NodeEditorValidating</td><td>
Let’s you validate the new node label entered by the user.</td></tr>
<tr>
<td>
NodeEditorValidateString</td><td>
Occurs for each TextChanged event in the node editor control.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.BeforeEdit += MultiColumnTreeView1_BeforeEdit;

this.multiColumnTreeView1.NodeEditorValidated += MultiColumnTreeView1_NodeEditorValidated;

this.multiColumnTreeView1.NodeEditorValidating += MultiColumnTreeView1_NodeEditorValidating;

this.multiColumnTreeView1.NodeEditorValidateString += MultiColumnTreeView1_NodeEditorValidateString;

private void MultiColumnTreeView1_BeforeEdit(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvBeforeEditEventArgs e)
        {
            //The Node which is going to be edited
            TreeNodeAdv Node = e.Node;
        }

private void MultiColumnTreeView1_NodeEditorValidated(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvEditEventArgs e)
        {
            string label = e.Label;
            TreeNodeAdv Node = e.Node;
        }

private void MultiColumnTreeView1_NodeEditorValidating(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvCancelableEditEventArgs e)
        {
            e.ContinueEditing = true;
            string label = e.Label;
            TreeNodeAdv Node = e.Node;
        }

private void MultiColumnTreeView1_NodeEditorValidateString(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvCancelableEditEventArgs e)
        {
            e.ContinueEditing = true;
            string label = e.Label;
            TreeNodeAdv Node = e.Node;
        }


{% endhighlight %}

{% highlight vb %}

    Me.multiColumnTreeView1.BeforeEdit += MultiColumnTreeView1_BeforeEdit
    Me.multiColumnTreeView1.NodeEditorValidated += MultiColumnTreeView1_NodeEditorValidated
    Me.multiColumnTreeView1.NodeEditorValidating += MultiColumnTreeView1_NodeEditorValidating
    Me.multiColumnTreeView1.NodeEditorValidateString += MultiColumnTreeView1_NodeEditorValidateString

    Private Sub MultiColumnTreeView1_BeforeEdit(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvBeforeEditEventArgs)
        Dim Node As TreeNodeAdv = e.Node
    End Sub

    Private Sub MultiColumnTreeView1_NodeEditorValidated(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvEditEventArgs)
        Dim label As String = e.Label
        Dim Node As TreeNodeAdv = e.Node
    End Sub

    Private Sub MultiColumnTreeView1_NodeEditorValidating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvCancelableEditEventArgs)
        e.ContinueEditing = True
        Dim label As String = e.Label
        Dim Node As TreeNodeAdv = e.Node
    End Sub

    Private Sub MultiColumnTreeView1_NodeEditorValidateString(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdvCancelableEditEventArgs)
        e.ContinueEditing = True
        Dim label As String = e.Label
        Dim Node As TreeNodeAdv = e.Node
    End Sub

{% endhighlight %}

{% endtabs %}

## Node Selection

These events will be triggered while selecting a node. 

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
BeforeSelect</td><td>
Occurs before a node is selected.</td></tr>
<tr>
<td>
AfterSelect</td><td>
Occurs after a node is selected.</td></tr>
<tr>
<td>
NodeHotTrackChanged</td><td>
This event will be triggered when mouse hover occurs in tree nodes and it returns the node details which is currently being pointed from its argument.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.BeforeSelect += MultiColumnTreeView1_BeforeSelect;
this.multiColumnTreeView1.AfterSelect += MultiColumnTreeView1_AfterSelect;
this.multiColumnTreeView1.NodeHotTrackChanged += MultiColumnTreeView1_NodeHotTrackChanged;

private void MultiColumnTreeView1_BeforeSelect(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvCancelableSelectionEventArgs e)
        {
            List<TreeNodeAdv> SelectedNodes = new List<TreeNodeAdv>();
            for(int i =0; i<e.SelectedNodes.Count; i++)
            {
                TreeNodeAdv Node = e.SelectedNodes[i];
                SelectedNodes[i] = e.SelectedNodes[i];
            }
            
        }

private void MultiColumnTreeView1_AfterSelect(object sender, EventArgs e)
        {
            MessageBox.Show("The Node is selected");
        }

private void MultiColumnTreeView1_NodeHotTrackChanged(object sender, Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvNodeEventArgs e)
        {
            //Gets the node associated with this event
            TreeNodeAdv Node = e.Node;
        }


{% endhighlight %}

{% highlight vb %}

    Private Sub MultiColumnTreeView1_BeforeSelect(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvCancelableSelectionEventArgs)
        Dim SelectedNodes As List(Of TreeNodeAdv) = New List(Of TreeNodeAdv)()

        For i As Integer = 0 To e.SelectedNodes.Count - 1
            Dim Node As TreeNodeAdv = e.SelectedNodes(i)
            SelectedNodes(i) = e.SelectedNodes(i)
        Next
    End Sub

    Private Sub MultiColumnTreeView1_AfterSelect(ByVal sender As Object, ByVal e As EventArgs)
        MessageBox.Show("The Node is selected")
    End Sub

    Private Sub MultiColumnTreeView1_NodeHotTrackChanged(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvNodeEventArgs)
        Dim Node As TreeNodeAdv = e.Node
    End Sub

{% endhighlight %}

{% endtabs %}

## Column Selection

These events will be triggered while performing mouse action on Column Header.

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
ColumnMouseDown</td><td>
Occurs when the mouse pointer hovers over the column header and a mouse button is pressed.</td></tr>
<tr>
<td>
ColumnMouseUp</td><td>Occurs when the mouse pointer hovers over the column header and a mouse button is released.</td></tr>
<tr>
<td>
ColumnClick.</td><td>
ColumnClick	Occurs when the column is clicked.</td></tr>
<tr>
<td>
ColumnDoubleClick</td><td>
Occurs when the column is double clicked.</td></tr>

</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.ColumnMouseDown += MultiColumnTreeView1_ColumnMouseDown;
this.multiColumnTreeView1.ColumnMouseUp += MultiColumnTreeView1_ColumnMouseUp;
this.multiColumnTreeView1.ColumnClick += MultiColumnTreeView1_ColumnClick;
this.multiColumnTreeView1.ColumnDoubleClick += MultiColumnTreeView1_ColumnDoubleClick;

private void MultiColumnTreeView1_ColumnMouseUp(object sender, TreeColumnAdvMouseEventArgs e)
{
  MessageBox.show("The column selected is "+ e.Column.ToString()); 
}
private void MultiColumnTreeView1_ColumnMouseDown(object sender, TreeColumnAdvMouseEventArgs e)
{
  MessageBox.show("The column selected is "+ e.Column.ToString()); 
}
private void MultiColumnTreeView1_ColumnDoubleClick(object sender, TreeViewColumnSelectedChangedEventArgs e)
{
  MessageBox.show("The column selected is "+ e.Column.ToString());
}
private void MultiColumnTreeView1_ColumnClick(object sender, TreeViewColumnSelectedChangedEventArgs e)
{
   MessageBox.show("The column selected is "+ e.Column.ToString());
}
{% endhighlight %}

{% highlight vb %}

Private Sub MultiColumnTreeView1_ColumnMouseUp(ByVal sender As Object, ByVal e As TreeColumnAdvMouseEventArgs)
        MessageBox.show("The column selected is " & e.Column.ToString())        
End Sub

private Sub MultiColumnTreeView1_ColumnMouseDown(ByVal sender As Object, ByVal e As TreeColumnAdvMouseEventArgs)
        MessageBox.show("The column selected is " & e.Column.ToString())
        End Sub

Private Sub MultiColumnTreeView1_ColumnDoubleClick(ByVal sender As Object, ByVal e As TreeViewColumnSelectedChangedEventArgs)
        MessageBox.show("The column selected is " & e.Column.ToString())
End Sub

Private Sub MultiColumnTreeView1_ColumnClick(ByVal sender As Object, ByVal e As TreeViewColumnSelectedChangedEventArgs)
        MessageBox.show("The column selected is " & e.Column.ToString())
End Sub

{% endhighlight %}

{% endtabs %}

## Mouse Event

Mouse action related events.

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
MouseDown</td><td>
Occurs when the mouse pointer is over the control and a mouse button is pressed.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.MouseDown += MultiColumnTreeView1_MouseDown;
private void MultiColumnTreeView1_MouseDown(object sender, MouseEventArgs e)
        {
            string MouseButton = e.Button.ToString();
        }


{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.MouseDown += MultiColumnTreeView1_MouseDown

Private Sub MultiColumnTreeView1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
    Dim MouseButton As String = e.Button.ToString()
End Sub

{% endhighlight %}

{% endtabs %}

## ScrollingEvent

Events related to the scroll functionality of the control. 

<table>
<tr>
<th>
MultiColumnTreeView Event</th><th>
Description</th></tr>
<tr>
<td>
ScrollControlHandledMouseDown</td><td>
Occurs after a MouseDown is raised.</td></tr>
<tr>
<td>
ScrollControlHandledMouseMove</td><td>
Occurs after a MouseMove event is raised and after auto-scrolling.</td></tr>
<tr>
<td>
ScrollControlHandledMouseUp</td><td>
Occurs after a MouseUp event is raised.</td></tr>
<tr>
<td>
ScrollTipFeedback</td><td>
Occurs when the user is dragging the scrollbar thumb.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.ScrollControlHandledMouseDown += MultiColumnTreeView1_ScrollControlHandledMouseDown;

this.multiColumnTreeView1.ScrollControlHandledMouseMove += MultiColumnTreeView1_ScrollControlHandledMouseMove;

this.multiColumnTreeView1.ScrollControlHandledMouseUp += MultiColumnTreeView1_ScrollControlHandledMouseUp;

this.multiColumnTreeView1.ScrollTipFeedback += MultiColumnTreeView1_ScrollTipFeedback;

private void MultiColumnTreeView1_ScrollControlHandledMouseDown(object sender, MouseEventArgs e)
        {
            string MouseButton = e.Button.ToString();
        }
private void MultiColumnTreeView1_ScrollControlHandledMouseMove(object sender, MouseEventArgs e)
        {
            string MouseButton = e.Button.ToString();
        }

private void MultiColumnTreeView1_ScrollControlHandledMouseUp(object sender, MouseEventArgs e)
        {
            string MouseButton = e.Button.ToString();
        }

private void MultiColumnTreeView1_ScrollTipFeedback(object sender, ScrollTipFeedbackEventArgs e)
        {
            int ScrollValue = e.Value;
            string Scrollbar = e.ScrollBar.ToString();
            e.Text = "Scroll Bar";
        }


{% endhighlight %}

{% highlight vb %}

    Me.multiColumnTreeView1.ScrollControlHandledMouseDown += MultiColumnTreeView1_ScrollControlHandledMouseDown
    Me.multiColumnTreeView1.ScrollControlHandledMouseMove += MultiColumnTreeView1_ScrollControlHandledMouseMove
    Me.multiColumnTreeView1.ScrollControlHandledMouseUp += MultiColumnTreeView1_ScrollControlHandledMouseUp
    Me.multiColumnTreeView1.ScrollTipFeedback += MultiColumnTreeView1_ScrollTipFeedback

    Private Sub MultiColumnTreeView1_ScrollControlHandledMouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
        Dim MouseButton As String = e.Button.ToString()
    End Sub

    Private Sub MultiColumnTreeView1_ScrollControlHandledMouseMove(ByVal sender As Object, ByVal e As MouseEventArgs)
        Dim MouseButton As String = e.Button.ToString()
    End Sub

    Private Sub MultiColumnTreeView1_ScrollControlHandledMouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)
        Dim MouseButton As String = e.Button.ToString()
    End Sub

    Private Sub MultiColumnTreeView1_ScrollTipFeedback(ByVal sender As Object, ByVal e As ScrollTipFeedbackEventArgs)
        Dim ScrollValue As Integer = e.Value
        Dim Scrollbar As String = e.ScrollBar.ToString()
        e.Text = "Scroll Bar"
    End Sub

{% endhighlight %}

{% endtabs %}
