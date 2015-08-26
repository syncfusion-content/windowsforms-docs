---
layout: post
title: Frequenty-Asked-Questions
description: frequenty asked questions
platform: windowsforms
control: TreeView 
documentation: ug
---

# Frequenty Asked Questions

The items in this section will help you become more familiar in using the TreeView Package.

### How to Add / Remove a Node to the TreeViewAdv

Nodes in the TreeViewAdv can be added by specifying the index and also they can be added using the Keyboard. The following section briefs both the scenario.

Adding nodes into the TreeViewAdv at a specific index

By declaring the new node object outside the control and by using the Insert method, a node can be added to the TreeViewAdv at the specific index.

{% highlight c# %}



// Declare the new node object. 

Syncfusion.Windows.Forms.Tools.TreeNodeAdv NewNode=new Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node"); 

private void button1_Click(object sender, System.EventArgs e) 

{ 

    TreeNodeAdv NewNode=new TreeNodeAdv(); 



    // Use Insert method to add nodes at particular index.

    this.treeViewAdv1.Nodes.Insert(2, NewNode); 

}

{% endhighlight %}

{% highlight vbnet %}



'Declare the new node object. 

Private NewNode As Syncfusion.Windows.Forms.Tools.TreeNodeAdv = New Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node") 

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

    Dim NewNode As TreeNodeAdv = New TreeNodeAdv() 



    ' Use Insert method to add nodes at particular index.

    Me.treeViewAdv1.Nodes.Insert(2, NewNode) 

End Sub 

{% endhighlight %}

> Note: Nodes can also be added using Nodes.Add method.

Removing a node from the TreeView

Specific nodes can be removed using Nodes.Remove method as follows.

{% highlight c# %}



//Remove the selected node

private void button3_Click(object sender, System.EventArgs e)

{

    this.treeViewAdv1.SelectedNode.Parent.Nodes.Remove(this.treeViewAdv1.SelectedNode);

}

{% endhighlight %}

{% highlight vbnet %}



'Remove the selected node

Private Sub button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Me.treeViewAdv1.SelectedNode.Parent.Nodes.Remove(Me.treeViewAdv1.SelectedNode)

End Sub

{% endhighlight %}

See Also

KeyDownEvent

### How to use .NET tooltip control to show tooltip text for nodes in TreeViewAdv

This can be achieved by using SetToolTip method in MouseHover event of the TreeViewAdv. 

Here is the code snippet that illustrates this.

{% highlight c# %}



private void treeViewAdv1_MouseHover(object sender, EventArgs e)

{

    Point ptInTree = this.treeViewAdv1.PointToClient(new Point(MousePosition.X, MousePosition.Y));

    // Get the node at the point where mouse pointer is located

    TreeNodeAdv node = this.treeViewAdv1.GetNodeAtPoint(ptInTree);

    if (node.TextBounds.Contains(treeViewAdv1.PointToClient(Control.MousePosition)))

    {

        this.toolTip1.SetToolTip(this.treeViewAdv1, node.Text);

    }

    else

    {

        this.toolTip1.SetToolTip(this.treeViewAdv1, "");

    }

}

{% endhighlight %}

{% highlight vbnet %}




Private Sub treeViewAdv1_MouseHover(ByVal sender As Object, ByVal e As EventArgs)

    Dim ptInTree As Point = Me.treeViewAdv1.PointToClient(New Point(MousePosition.X, MousePosition.Y))

    ' Get the node at the point where mouse pointer is located

    Dim node As TreeNodeAdv = Me.treeViewAdv1.GetNodeAtPoint(ptInTree)

    If node.TextBounds.Contains(treeViewAdv1.PointToClient(Control.MousePosition)) Then

        Me.toolTip1.SetToolTip(Me.treeViewAdv1, node.Text)

    Else

        Me.toolTip1.SetToolTip(Me.treeViewAdv1, "")

    End If

End Sub

{% endhighlight %}

#### How to fire click event, when a child node is selected

Whenever a TreeViewAdv is selected, AfterSelect event will be raised. You can raise a Click event when a child node is selected, inside this handler using the following code snippet. 

{% highlight c# %}



private void treeViewAdv1_AfterSelect(object sender, EventArgs e)

{



    // iterate through parent nodes in the collection 

    foreach (TreeNodeAdv node in this.treeViewAdv1.Nodes)

    {

        if (node.IsSelected)

        {

            Console.WriteLine(node.Text + "is selected");

        }

        CheckForChildern(node);



    }

}



private void CheckForChildern(TreeNodeAdv node)

{



    // check whether each parent node has child nodes 

    if (node.HasChildren && node.Nodes.Count > 0)

    {



        // iterate through child nodes in the collection

        foreach (TreeNodeAdv childnode in node.Nodes)

        {

            if (childnode.IsSelected)

            {

                Console.WriteLine(childnode.Text + "is selected");

            }



            // Do recursive call

            CheckForChildern(childnode);

        }

    }

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub treeViewAdv1_AfterSelect(ByVal sender As Object, ByVal e As EventArgs)



    ' iterate through parent nodes in the collection 

    For Each node As TreeNodeAdv In Me.treeViewAdv1.Nodes

        If node.IsSelected Then

            Console.WriteLine(node.Text & "is selected")

        End If

        CheckForChildern(node)



    Next node

End Sub



Private Sub CheckForChildern(ByVal node As TreeNodeAdv)



    ' check whether each parent node has child nodes 

    If node.HasChildren AndAlso node.Nodes.Count > 0 Then



        ' iterate through child nodes in the collection

        For Each childnode As TreeNodeAdv In node.Nodes

            If childnode.IsSelected Then

                Console.WriteLine(childnode.Text & "is selected")

            End If



            ' Do recursive call

            CheckForChildern(childnode)

        Next childnode

    End If

End Sub

{% endhighlight %}

#### How to keep highlighting the selected node when TreeViewAdv loses focus

We can set HideSelection property to _false_, to ensure that the node remains selected even when the TreeViewAdv control does not have focus. 

{% highlight c# %}

this.treeViewAdv1.HideSelection = false;

{% endhighlight %}

{% highlight vbnet %}

Me.treeViewAdv1.HideSelection = False

{% endhighlight %}

#### How to Count all the Nodes of the TreeViewAdv

The user can get the total number of nodes by calling the GetNodeCount method with the bool argument, which indicates whether the count includes the sub trees or not. If the value passed is true, then it will count the nodes with the sub trees also.

{% highlight c# %}

private void button1_Click(object sender, System.EventArgs e) 

{ 

   // Call the tree controls "GetNodeCount" method with true to 

   // get the total number of nodes in the tree. 

   int TotalNodesInTree = this.treeViewAdv1.GetNodeCount( true ); 

   MessageBox.Show( "Total nodes in tree = " + TotalNodesInTree.ToString()); 

} 

{% endhighlight %}

{% highlight vbnet %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

     ' Call the tree controls "GetNodeCount" method with true to 

     ' get the total number of nodes in the tree. 

     Dim TotalNodesInTree As Integer = Me.treeViewAdv1.GetNodeCount(True) 

     MessageBox.Show("Total nodes in tree = " & TotalNodesInTree.ToString()) 

End Sub

{% endhighlight %}

#### How to customize the Context Menu to display the name of the selected node when right clicked on it

The user could customize the context menu to display the name of the selected node when right-clicked on the SelectedNode by handling the MouseDown Event handler in the following way. The user have to get the right click point of the SelectedNode. Then if the SelectedNode is not equal to null, then a new menu item is created and added, such that the item displays the SelectedNode's text name. For displaying only the SelectedNode text at a time when right clicked, the menu items must be cleared.

{% highlight c# %}

private void treeViewAdv1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)

{

    if (e.Button == MouseButtons.Right)

    {

        //Clear the ContextMenu MenuItems

        this.contextMenu1.MenuItems.Clear();

        this.treeViewAdv1.SelectedNode = this.treeViewAdv1.GetNodeAtPoint(new Point(e.X, e.Y));

        //If the selected node is not equal to null, check for the condition

        if (this.treeViewAdv1.SelectedNode != null)

        {

            //Create MenuItem for the SelectedNode

            MenuItem menuitem = new MenuItem(this.treeViewAdv1.SelectedNode.Text);

            this.contextMenu1.MenuItems.Add(menuitem);

        }

    }

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub treeViewAdv1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)

    If e.Button = MouseButtons.Right Then

        'Clear the ContextMenu MenuItems

        Me.contextMenu1.MenuItems.Clear()

        Me.treeViewAdv1.SelectedNode = Me.treeViewAdv1.GetNodeAtPoint(New Point(e.X, e.Y))

        'If the selected node is not equal to null, check for the condition

        If Not Me.treeViewAdv1.SelectedNode Is Nothing Then

            'Create MenuItem for the SelectedNode

            Dim menuitem As MenuItem = New MenuItem(Me.treeViewAdv1.SelectedNode.Text)

            Me.contextMenu1.MenuItems.Add(menuitem)

        End If

    End If

End Sub

{% endhighlight %}

#### How to disable Tooltip for particular nodes of the TreeNodeAdv

The TreeViewAdv control provides an option to disable tooltips for particular nodes. 

Disable ToolTips for particular nodes

Thetooltip for some of the nodes, which have a HelpText can be disabled by handling the ToolTipControl_BeforePopup event.

Here in the TreeViewAdv, for some of the nodes, the e.Cancel property is set to true by getting the node's position in the ToolTipControl's BeforePopup event handler where the tooltips for the respective nodes are disabled. The tooltips for the same nodes can be enabled by setting the e.Cancel = false in the tooltip control's BeforePopup Event.

{% highlight c# %}

private void ToolTipControl_BeforePopup(object sender, CancelEventArgs e) 

{ 

     Point pt=this.treeViewAdv1.PointToClient(new Point(MousePosition.X,MousePosition.Y)); 

     TreeNodeAdv node=this.treeViewAdv1.GetNodeAtPoint(pt); 

     if(node!=null) 

     { 

         if(node.Text=="Node1" || node.Text=="Node3"||node.Text=="Node5"||node.Text=="Node7") 

         { 



               // Set e.Cancel property to true after getting the node's position. 

               e.Cancel=true; 

         } 

     } 

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub ToolTipControl_BeforePopup(ByVal sender As Object, ByVal e As CancelEventArgs) 

     Dim pt As Point=Me.treeViewAdv1.PointToClient(New Point(MousePosition.X,MousePosition.Y)) 

     Dim node As TreeNodeAdv=Me.treeViewAdv1.GetNodeAtPoint(pt) 

     If Not node Is Nothing Then 

            If node.Text="Node1" OrElse node.Text="Node3" OrElse node.Text="Node5" OrElse node.Text="Node7" Then 



                ' Set e.Cancel property to true after getting the node's position. 

                 e.Cancel=True 

            End If 

     End If 

End Sub

{% endhighlight %}

#### How to expand or collapse all the child nodes of a particular node

All the treeview nodes can be collapsed by calling the TreeViewAdv.CollapseAll method. For individual nodes, call Node.Collapse method.

{% highlight c# %}



//Collapse all nodes in the TreeViewAdv

private void button1_Click(object sender, System.EventArgs e)

{

    this.treeViewAdv1.CollapseAll();

}

// Expand all nodes in the TreeViewAdv

private void button2_Click(object sender, System.EventArgs e)

{

    this.treeViewAdv1.ExpandAll();

}

// Collapse all child nodes under a Node0

private void button3_Click(object sender, System.EventArgs e)

{

    TreeNodeAdv node = this.treeViewAdv1.Nodes[0];

    node.CollapseAll();

}

// Expand all child nodes under a Node0

private void button4_Click(object sender, System.EventArgs e)

{

    TreeNodeAdv node = this.treeViewAdv1.Nodes[0];

    node.ExpandAll();

}

{% endhighlight %}

{% highlight vbnet %}



'Collapse all nodes in the TreeViewAdv

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Me.treeViewAdv1.CollapseAll()

End Sub



' Expand all nodes in the TreeViewAdv

Private Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Me.treeViewAdv1.ExpandAll()

End Sub



' Collapse all child nodes under a Node0

Private Sub button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Dim node As TreeNodeAdv = Me.treeViewAdv1.Nodes(0)

    node.CollapseAll()

End Sub



' Expand all child nodes under a Node0

Private Sub button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Dim node As TreeNodeAdv = Me.treeViewAdv1.Nodes(0)

    node.ExpandAll()

End Sub

{% endhighlight %}

#### How to find the way for the disappearance of the focus rectangle if the focus is lost in the treeViewAdv

This can be done by setting e.Active to false in BeforeNodePaint Event Handler.

{% highlight c# %}



// Set the TreeViewAdv's OwnerDrawNodes property to true.



this.treeViewAdv1.OwnerDrawNodes = true;



//Handle the TreeViewAdv's BeforeNodePaint event as shown below :



private void treeViewAdv1_BeforeNodePaint(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvPaintEventArgs e)

{

e.Active = false;

}

{% endhighlight %}

{% highlight vbnet %}



'Declare the new node object. 

Private NewNode As Syncfusion.Windows.Forms.Tools.TreeNodeAdv = New Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node") 

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

    Dim NewNode As TreeNodeAdv = New TreeNodeAdv() 



    ' Use Insert method to add nodes at particular index.

    Me.treeViewAdv1.Nodes.Insert(2, NewNode) 

End Sub 

{% endhighlight %}

#### How to force a treeNodeAdv to stay in edit mode until user enters an unique name

This can be done using the below code snippet.

{% highlight c# %}



//It can be done by handling the TreeViewAdv's NodeEditorValidating Event.

//If the user enters the unique name the edit mode will get canceled or else the node will stay in the edit mode .



private void treeViewAdv1_NodeEditorValidating_1(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs e)

{

    if (e.Label == "Syncfusion")

    {

        e.Cancel = false;

        MessageBox.Show("Unique");

        e.ContinueEditing = false;

    }

    else

    {

        // Cancel the label edit action, inform the user, and place the node in edit mode again. //

        e.Cancel = true;

        MessageBox.Show("Name is not unique");

        // To end editing mode, do this:

        e.ContinueEditing = true;

    }

}

{% endhighlight %}

{% highlight vbnet %}



'It can be done by handling the TreeViewAdv's NodeEditorValidating Event.

'If the user enters the unique name the edit mode will get canceled or else the node will stay in the edit mode .



Private Sub treeViewAdv1_NodeEditorValidating_1(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs)

    If e.Label = "Syncfusion" Then

        e.Cancel = False

        MessageBox.Show("Unique")

        e.ContinueEditing = False

    Else

        ' Cancel the label edit action, inform the user, and place the node in edit mode again. 

        e.Cancel = True

        MessageBox.Show("Name is not unique")

        ' To end editing mode, do this:

        e.ContinueEditing = True

    End If

End Sub

{% endhighlight %}

#### How to know whether the image on the left side / Right side of the node's text was clicked

This can be done using the below code snippet.

{% highlight c# %}



//The user could use the Left Image of a node as a clickable area to use

// it as a button associated with that particular tree node



private void treeViewAdv1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)

{

    TreeNodeAdv node = this.treeViewAdv1.SelectedNode;

    Point imgpt = new Point(node.TextAndImageBounds.X, node.TextAndImageBounds.Y);

    Size imgSize = new Size(this.imageList1.ImageSize.Width, this.imageList1.ImageSize.Height);

    Rectangle imgrec = new Rectangle(imgpt, imgSize);

    Point clickpt = new Point(e.X, e.Y);

    if (imgrec.Contains(clickpt) == true)

    {

        Console.WriteLine("Clicked on " + node.Text + "'s left image");

    }

}



//The user could use the Right Image of a node as a clickable area to use

// it as a button associated with that particular tree node



private void treeViewAdv1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)

{

    TreeNodeAdv node = this.treeViewAdv1.SelectedNode;

    Point imgpt = new Point(node.RightImagesX, node.TextBounds.Y);

    Size imgSize = new Size(this.imageList1.ImageSize.Width, this.imageList1.ImageSize.Height);

    Rectangle imgrec = new Rectangle(imgpt, imgSize);

    Point clickpt = new Point(e.X, e.Y);

    if (imgrec.Contains(clickpt) == true)

    {

        MessageBox.Show("Clicked on " + node.Text + "'s right image");

        Console.WriteLine("Clicked on " + node.Text + "'s right image");

    }

}

{% endhighlight %}

{% highlight vbnet %}



'The user could use the Left Image of a node as a clickable area to use

' it as a button associated with that particular tree node



Private Sub treeViewAdv1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles treeViewAdv1.MouseUp

    Dim node As TreeNodeAdv = Me.treeViewAdv1.SelectedNode

    Dim imgpt As Point = New Point(node.TextAndImageBounds.X, node.TextAndImageBounds.Y)

    Dim imgSize As Size = New Size(Me.imageList1.ImageSize.Width, Me.imageList1.ImageSize.Height)

    Dim imgrec As Rectangle = New Rectangle(imgpt, imgSize)

    Dim clickpt As Point = New Point(e.X, e.Y)

    If imgrec.Contains(clickpt) = True Then

        Console.WriteLine("Clicked on " & node.Text & "'s left image")

    End If

End Sub



'The user could use the Right Image of a node as a clickable area to use

' it as a button associated with that particular tree node



Private Sub treeViewAdv1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles treeViewAdv1.MouseUp

    Dim node As TreeNodeAdv = Me.treeViewAdv1.SelectedNode

    Dim imgpt As Point = New Point(node.RightImagesX, node.TextBounds.Y)

    Dim imgSize As Size = New Size(Me.imageList1.ImageSize.Width, Me.imageList1.ImageSize.Height)

    Dim imgrec As Rectangle = New Rectangle(imgpt, imgSize)

    Dim clickpt As Point = New Point(e.X, e.Y)

    If imgrec.Contains(clickpt) = True Then

        MessageBox.Show("Clicked on " & node.Text & "'s right image")

        Console.WriteLine("Clicked on " & node.Text & "'s right image")

    End If

End Sub

{% endhighlight %}

#### How to limit the characters, that the user type for editing the treeNodeAdv using LabelEdit

This can be done using the below code snippet.

{% highlight c# %}



//It can be done using the following code snippet in the NodeEditorValidateString event to restrict a user from

//entering characters beyond a limit in a Label Editing.

//If the length of the node label is less than or equal 5,the editing continues or else it is canceled.



private void treeViewAdv1_NodeEditorValidateString(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs e)

{

    if (e.Label.Length <= 5)

        e.ContinueEditing = true;

    else

        e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



'It can be done using the following code snippet in the NodeEditorValidateString event to restrict a user from

'entering characters beyond a limit in a Label Editing.

'If the length of the node label is less than or equal 5,the editing continues or else it is canceled.



Private Sub treeViewAdv1_NodeEditorValidateString(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeNodeAdvCancelableEditEventArgs)

    If e.Label.Length <= 5 Then

        e.ContinueEditing = True

    Else

        e.Cancel = True

    End If

End Sub

{% endhighlight %}

#### How to Populate the ParentNode and ChildNode for the Selected Node Programmatically

This can be done through code as shown below, by setting the selected node to be the present node and then if the present node is equal to null, the new ChildNode is created and added.

{% highlight c# %}



private void button1_Click(object sender, System.EventArgs e) 

{ 

    TreeNodeAdv presentNode = this.treeViewAdv1.SelectedNode; 

    if(presentNode == null) 

         return; 



    // Adding new child nodes.

    TreeNodeAdv newNode = new TreeNodeAdv("NewChild"); 

    presentNode.Nodes.Add(newNode); 

} 

private void button2_Click(object sender, System.EventArgs e) 

{ 



     // Adding new parent nodes.

     TreeNodeAdv newnode = new TreeNodeAdv("Parentnode"); 

     this.treeViewAdv1.Nodes.Add(newnode); 

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

     Dim presentNode As TreeNodeAdv = Me.treeViewAdv1.SelectedNode 

     If presentNode Is Nothing Then 

         Return 

     End If 



     ' Adding new child nodes.

     Dim newNode As TreeNodeAdv = New TreeNodeAdv("NewChild")presentNode.Nodes.Add(newNode) 

End Sub 

Private Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) 



     ' Adding new parent nodes.

     Dim newnode As TreeNodeAdv = New TreeNodeAdv("Parentnode") 

     Me.treeViewAdv1.Nodes.Add(newnode) 

End Sub 

{% endhighlight %}

#### How to prevent a node from being selected

This can be done using BeforeSelect event.

{% highlight c# %}



// Handle the TreeViewAdv's BeforeSelect event

// and cancel selection if condition is not met



this.treeViewAdv1.BeforeSelect += new Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeSelectEventHandler(this.treeViewAdv1_BeforeSelect);



private void treeViewAdv1_BeforeSelect(object sender, Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableSelectionEventArgs args)

{

 if (args.SelectedNodes[0].Text == "Node0"||args.SelectedNodes[0].Text=="Node4"

||args.SelectedNodes[0].Text=="Node7"||args.SelectedNodes[0].Text=="Node10")

 args.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the TreeViewAdv's BeforeSelect event

' and cancel selection if condition is not met



Me.treeViewAdv1.BeforeSelect += New Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeSelectEventHandler(Me.treeViewAdv1_BeforeSelect)



Private Sub treeViewAdv1_BeforeSelect(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableSelectionEventArgs)

    If args.SelectedNodes(0).Text = "Node0" OrElse args.SelectedNodes(0).Text = "Node4" Then

OrElse args.SelectedNodes(0).Text="Node7" OrElse args.SelectedNodes(0).Text="Node10" Then

        args.Cancel = True

    End If

End Sub

{% endhighlight %}

#### How to prevent drawing highlight for some nodes

QueryAllowedPositionForNode - An event which will be executed to prevent drawing highlight for some nodes.

{% highlight c# %}



//Declaration 

private TreeViewAdvDragHighlightTracker treeViewDragHighlightTracker = null;

//Initialization

this.treeViewDragHighlightTracker = new TreeViewAdvDragHighlightTracker(this.treeViewAdv1);



// This event will let you disable certain drop-positions for certain nodes while dragging.

// Specify the allowed drop positions for the specified highlight node.

private void TreeDragDrop_QueryAllowedPositionsForNode(object sender, QueryAllowedPositionsEventArgs e)

{

if(!this.IsContinentNode(e.HighlightNode))

{

// If this a country node, only allow drop above or below it.

if(e.HighlightNode != this.currentSourceNode)

e.AllowedPositions = TreeViewDropPositions.AboveNode | TreeViewDropPositions.BelowNode;

else

// Cannot drop beside itself

e.AllowedPositions = TreeViewDropPositions.None;

this.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 2;

e.ShowSelectionHighlight = false;

}

else

{

// If this is a continent node allow all drop positions (default behavior).

this.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 4;

e.ShowSelectionHighlight = 

// Only if the source node is droppable

this.CanDrop(this.currentSourceNode, e.HighlightNode)

// and droppable ON the node (not beside it)

&& e.NewDropPosition == TreeViewDropPositions.OnNode;

}

}

{% endhighlight %}

{% highlight vbnet %}



'Declaration

Private treeViewDragHighlightTracker As TreeViewAdvDragHighlightTracker = Nothing

' Initialization

Me.treeViewDragHighlightTracker = New TreeViewAdvDragHighlightTracker(Me.treeViewAdv1)



'QueryAllowedPositionsForNode

AddHandler treeViewDragHighlightTracker.QueryAllowedPositionsForNode, AddressOf TreeDragDrop_QueryAllowedPositionsForNode

' Specify the allowed drop positions for the specified highlight node.

Private Sub TreeDragDrop_QueryAllowedPositionsForNode(ByVal sender As Object, ByVal e As QueryAllowedPositionsEventArgs)

If (Not Me.IsContinentNode(e.HighlightNode)) Then

' If this a country node, only allow drop above or below it.

If Not e.HighlightNode Is Me.currentSourceNode Then

e.AllowedPositions = TreeViewDropPositions.AboveNode Or TreeViewDropPositions.BelowNode

Else

' Cannot drop beside itself

e.AllowedPositions = TreeViewDropPositions.None

End If

Me.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 2

e.ShowSelectionHighlight = False

Else

' If this is a continent node allow all drop positions (default behavior).

Me.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 4

' Only if the source node is droppable

' and droppable ON the node (not beside it)

e.ShowSelectionHighlight = Me.CanDrop(Me.currentSourceNode, e.HighlightNode) AndAlso e.NewDropPosition = TreeViewDropPositions.OnNode

End If

End Sub

{% endhighlight %}

#### How to prevent the expansion of the collapsed nodes when it is been double clicked

BeforeExpand event should be handled to prevent the expansion of the collapsed nodes when it is double-clicked.

{% highlight c# %}



//The following code will ensure that the node will expand only when clicked on the Node's Expandable 

//button ( that is, the "+" box on the left of the node) and not when clicked on the TreeNodeAdv's text.



private void treeViewAdv1_BeforeExpand(object sender, Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableNodeEventArgs e)

{

    Point p = this.treeViewAdv1.PointToClient(Control.MousePosition);

    TreeNodeAdv node = this.treeViewAdv1.GetNodeAtPoint(p, true);

    if (node != null)

    {

        if (node.TextBounds.Contains(p))

        {

            e.Cancel = true;

        }

    }

}

{% endhighlight %}

{% highlight vbnet %}



'The following code will ensure that the node will expand only when clicked on the Node's Expandable 

'button ( that is, the "+" box on the left of the node) and not when clicked on the TreeNodeAdv's text.



Private Sub treeViewAdv1_BeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableNodeEventArgs)

    Dim p As Point = Me.treeViewAdv1.PointToClient(Control.MousePosition)

    Dim node As TreeNodeAdv = Me.treeViewAdv1.GetNodeAtPoint(p, True)

    If Not node Is Nothing Then

        If node.TextBounds.Contains(p) Then

            e.Cancel = True

        End If

End If

{% endhighlight %}

#### How to programmatically select a node in a TreeViewAdv control

Set the HideSelectionproperty of the TreeViewAdv control to false and use the code snippet shown below.

{% highlight c# %}



//Select the first node under node 1.

this.treeViewAdv1.SelectedNode = this.treeViewAdv1.Nodes[1];

{% endhighlight %}

{% highlight vbnet %}



'Select the first node under node 1.

Me.treeViewAdv1.SelectedNode = Me.treeViewAdv1.Nodes(1)

{% endhighlight %}

Setting the HideSelection property to false, ensures that the node remains selected, even when the TreeViewAdv control loses focus or does not have focus. 

#### How to return the node at a specified location

GetNodeAtPoint method will get or returns the node at the specified location. There are three overloads for this method. This method can be called inside DragOver event. The parameters are as follows. To return the node at the specified point, GetNodeAtPointEx method can be called.

_Table_ _944__: Parameter Table_

<table>
<tr>
<th>
Parameter</th><th>
Description</th></tr>
<tr>
<td>
pt</td><td>
Indicates the location.</td></tr>
<tr>
<td>
textbounds</td><td>
Indicates whether testing will be done using the bounds of text and not the whole bounds of the node.</td></tr>
<tr>
<td>
textOrImageBounds</td><td>
Indicates whether testing will be done using the bounds of image and text and not the whole bounds of the node.</td></tr>
</table>


{% highlight c# %}



Point ptInTree = treeView.PointToClient(new Point(e.X, e.Y));



//Gets the node point at the specified location

this.treeViewAdv1.GetNodeAtPoint(ptInTree);

//Gets the node point at the specified location, uses the bounds of text

this.treeViewAdv1.GetNodeAtPoint(ptInTree, true);

//Gets the node point at the specified location, uses the bounds of text and bounds of image and text

this.treeViewAdv1.GetNodeAtPoint(ptInTree, true, true);



//Gets the node point at the specified Point

this.treeViewAdv1.GetNodeAtPointEx(ptInTree);

{% endhighlight %}

{% highlight vbnet %}



Point ptInTree = treeView.PointToClient(new Point(e.X, e.Y))



'Gets the node point at the specified location

Me.treeViewAdv1.GetNodeAtPoint(ptInTree)

'Gets the node point at the specified location, uses the bounds of text

Me.treeViewAdv1.GetNodeAtPoint(ptInTree, True)

'Gets the node point at the specified location, uses the bounds of text and bounds of image and text

Me.treeViewAdv1.GetNodeAtPoint(ptInTree, True, True)



Gets the node point at the specified Point

Me.treeViewAdv1.GetNodeAtPointEx(ptInTree)

{% endhighlight %}

See Also

Drag and Drop

### How to Scroll A Node Into View

This section illustrates how a particular node can be scrolled into view if it is hidden because its parent is hidden or because the scrollbar has scrolled it out of view.

_Table_ _945__: Methods Table_

<table>
<tr>
<th>
TreeViewAdv Methods</th><th>
Description</th></tr>
<tr>
<td>
BringIntoView</td><td>
To bring a node into view by expanding its parents and also bringing it into the viewable area if scrolled, use the TreeNodeAdv.BringIntoView method. </td></tr>
<tr>
<td>
EnsureVisible</td><td>
To bring an already visible node into the viewable area when scrolled, use the TreeViewAdv.EnsureVisible method. </td></tr>
<tr>
<td>
EnsureVisible</td><td>
To bring an already visible node into viewable area when scrolled, and also make it the top-most visible node, use this overload of the TreeViewAdv.EnsureVisible method. </td></tr>
</table>


{% highlight c# %}



treeNodeAdv.BringIntoView();



this.treeViewAdv1.EnsureVisible(treeNodeAdv);



this.treeViewAdv1.EnsureVisible(treeNodeAdv, true);

{% endhighlight %}

{% highlight vbnet %}



treeNodeAdv.BringIntoView()



Me.TreeViewAdv1.EnsureVisible(treeNodeAdv)



Me.TreeViewAdv1.EnsureVisible(treeNodeAdv, True)

{% endhighlight %}

#### How to scroll through the TreeViewAdv control using up / down arrow keys while in edit mode

The user could navigate through the nodes in the TreeViewAdv control using the keyboard while in editing mode, by using the following code snippet.

{% highlight c# %}



private void treeViewAdv1_BeforeEdit(object sender, Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeEditEventArgs e)

{

    TempNode = e.Node;

    TextBox t = e.TextBox;

    //To handle the Keys while editing the node 

    t.KeyDown += new KeyEventHandler(t_KeyDown);

}



private void t_KeyDown(object sender, KeyEventArgs e)

{

    TextBox t = sender as TextBox;

    if (e.KeyData == Keys.Down || e.KeyData == Keys.Up)

    {

        //To Stop the editing 

        this.treeViewAdv1.EndEdit(true);

        //To replace the edited contents into the selected node. 

        TempNode.Text = t.Text;

        //End the event 

        e.Handled = true;

    }

} 

{% endhighlight %}

{% highlight vbnet %}



Private Sub treeViewAdv1_BeforeEdit(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeNodeAdvBeforeEditEventArgs)

    TempNode = e.Node

    Dim t As TextBox = e.TextBox

    'To handle the Keys while editing the node 

    AddHandler t.KeyDown, AddressOf t_KeyDown

End Sub

Private Sub t_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

    Dim t As TextBox = CType(IIf(TypeOf sender Is TextBox, sender, Nothing), TextBox)

    If e.KeyData = Keys.Down OrElse e.KeyData = Keys.Up Then

        'To Stop the editing 

        Me.treeViewAdv1.EndEdit(True)

        'To replace the edited contents into the selected node. 

        TempNode.Text = t.Text

        'End the event 

        e.Handled = True

    End If

End Sub

{% endhighlight %}

#### How to select all the nodes in a TreeViewAdv Control

You could select all the nodes in the TreeViewAdv control by recursively traversing through all the child nodes under each of the parent nodes at the top level as shown in the code below.

{% highlight c# %}



// Checking for all the root nodes in the tree.

foreach (TreeNodeAdv node in this.treeViewAdv1.Root.Nodes)

{

this.treeViewAdv1.SelectedNodes.Add(node);

TreeNodeAdv lastNode = node.LastNode;

while (lastNode != null)

{

  // The selection is extended to the last node of the tree.

this.treeViewAdv1.ExtendSelectionTo(lastNode);

lastNode = lastNode.LastNode;

}                        

}

{% endhighlight %}

{% highlight vbnet %}



Dim node As TreeNodeAdv

' Checking for all the root nodes in the tree.

For Each node In  Me.treeViewAdv1.Root.Nodes

    Me.treeViewAdv1.SelectedNodes.Add(node)

    Dim lastNode As TreeNodeAdv = node.LastNode

    While Not (lastNode Is Nothing)

        ' The selection is extended to the last node of the tree.

        Me.treeViewAdv1.ExtendSelectionTo(lastNode)

        lastNode = lastNode.LastNode

    End While

Next node

{% endhighlight %}


![](Frequenty-Asked-Questions_images/Frequenty-Asked-Questions_img2.jpeg)


#### How to select a particular node as a first visible node

This can be done by using the code snippet given below. This will allow the user to make a particular node as the first visible node. The EnsureVisibleSelectedNode property will help the user to bring the invisible node into a visible state by scrolling the ScrollBar to the SelectedNode, if necessary.

_Table_ _946__: Property Table_

<table>
<tr>
<th>
TreeViewAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
EnsureVisibleSelectedNode</td><td>
Indicates if the selected node will be brought to view by scrolling if necessary.</td></tr>
</table>


{% highlight c# %}



private void Form1_Load(object sender, System.EventArgs e) 

{ 

this.treeViewAdv1.SelectedNode=this.treeViewAdv1.LastVisibleNode; 

this.treeViewAdv1.SelectedNode=this.treeViewAdv1.Nodes[3]; 

// Setting EnsureVisibleSelectedNode property to true, makes a particular selected node as the first visible node. 

this.treeViewAdv1.EnsureVisibleSelectedNode=true; 

} 

{% endhighlight %}

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) 

Me.treeViewAdv1.SelectedNode=Me.treeViewAdv1.LastVisibleNode 

Me.treeViewAdv1.SelectedNode=Me.treeViewAdv1.Nodes(3) 

' Setting EnsureVisibleSelectedNode property to true, makes a particular selected node as the first visible node. 

Me.treeViewAdv1.EnsureVisibleSelectedNode=True 

End Sub 

{% endhighlight %}

The user can make the TreeViewAdv scroll, when an item is dragged from out of the current view, to the top. AutoScroll property when set, allows scrolling in TreeView, even when the item is dragged to the top of the control.

{% highlight c# %}



// Setting AutoScrolling property to Both helps in scrolling.

this.treeViewAdv1.AutoScrolling=ScrollBars.Both; 

{% endhighlight %}

{% highlight vbnet %}



' Setting AutoScrolling property to Both helps in scrolling.

Me.treeViewAdv1.AutoScrolling=ScrollBars.Both 

{% endhighlight %}

See Also

Drag and Drop

Scrolling

### How to show custom help text for each TreeViewAdv node

Custom help text can be shown using TreeNodeAdv.HelpText property.

### How to Sort all the nodes in the TreeViewAdv control

This can be done by setting the SortWithChildNodes property to true.

_Table_ _947__: Property Table_

<table>
<tr>
<th>
TreeViewAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
SortWithChildNodes</td><td>
This indicates the sorting of all nodes including child nodes.</td></tr>
</table>


If the SortWithChildNodes property is set to true, the user can sort all the nodes including the child nodes in the TreeViewAdv. The SortOrder should be specified for the sorting of all the nodes.

{% highlight c# %}



private void button1_Click(object sender, System.EventArgs e)

{

   // Sorts only the root nodes.

   this.treeViewAdv1.Nodes.Sort();

}



private void button2_Click_1(object sender, System.EventArgs e)

{

   // Sorts all the nodes in the tree.

   this.treeViewAdv1.Root.SortOrder=SortOrder.Ascending;

   this.treeViewAdv1.SortWithChildNodes=true;

   this.treeViewAdv1.Root.Sort();

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

   ' Sorts only the root nodes.

   Me.treeViewAdv1.Nodes.Sort()

End Sub



Private Sub button2_Click_1(ByVal sender As Object, ByVal e As System.EventArgs)

  ' Sorts all the nodes in the tree.

  Me.treeViewAdv1.Root.SortOrder=SortOrder.Ascending

  Me.treeViewAdv1.SortWithChildNodes=True

  Me.treeViewAdv1.Root.Sort()

End Sub

{% endhighlight %}


Given below is a screen shot of sorting the nodes in ascending order.

![](Frequenty-Asked-Questions_images/Frequenty-Asked-Questions_img3.jpeg)



See Also

Sorting

### How to Swap Nodes from one ParentNode to another ParentNode

This can be done by using the following code.

{% highlight c# %}



private void button1_Click(object sender, System.EventArgs e)

{

      // Set the destination parent node.

      TreeNodeAdv Pnode = this.treeViewAdv1.Nodes[0];

      TreeNodeAdv[] nodes =new TreeNodeAdv[this.treeViewAdv1.SelectedNodes.Count];

      this.treeViewAdv1.SelectedNodes.CopyTo(nodes);



      // Remove the selected nodes from their earlier parent nodes collection.

      foreach (TreeNodeAdv node in nodes)

      {

          node.Remove();

      }



      // Add the selected nodes to the destination parent nodes collection.                        

      foreach (TreeNodeAdv node in nodes)

      {

          Pnode.Nodes.Add(node);

      }

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    ' Set the destination parent node.

    Dim Pnode As TreeNodeAdv = Me.treeViewAdv1.Nodes(0)

    Dim nodes As TreeNodeAdv() = New TreeNodeAdv(Me.treeViewAdv1.SelectedNodes.Count - 1) {}

    Me.treeViewAdv1.SelectedNodes.CopyTo(nodes)



    ' Remove the selected nodes from their earlier parent nodes collection.

    For Each node As TreeNodeAdv In nodes

           node.Remove()

    Next node



    ' Add the selected nodes to the destination parent nodes collection.                        

    For Each node As TreeNodeAdv In nodes

         Pnode.Nodes.Add(node)

    Next node

End Sub  

{% endhighlight %}

Given below are screen shots depicting this process.



![](Frequenty-Asked-Questions_images/Frequenty-Asked-Questions_img4.jpeg)



### How to Synchronize a Button Click event and Cursor Position on a Node in TreeViewAdv

When the button is clicked, the mouse cursor can be positioned appropriately on the respective node by getting the coordinates of the TreeNodeAdv and using the PointToScreen method of TreeViewAdv.

{% highlight c# %}



private Point MousePointer(TreeNodeAdv node)

{

    // Provides the coordinates of the top-left corner of a TreeNodeAdv in terms of screen coordinates.

    Point point = this.treeViewAdv1.PointToScreen(this.treeViewAdv1.NodeToPoint(node));

    point = new Point (point.X+node.NodeX, point.Y);

    return point;

}

private void button1_Click(object sender, System.EventArgs e)

{  

    // Coding for the cursor position when a button is clicked.

    Cursor.Position = this.MousePointer (this.treeViewAdv1.Nodes[0]);

}


{% endhighlight %}

{% highlight vbnet %}



Private Function MousePointer(ByVal node As TreeNodeAdv) As Point

     ' Provides the coordinates of the top-left corner of a TreeNodeAdv in terms of screen coordinates.

     Dim point As Point = Me.treeViewAdv1.PointToScreen(Me.treeViewAdv1.NodeToPoint(node))

     point = New Point (point.X+node.NodeX, point.Y)

     Return point

     End Function

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button1.Click

    ' Coding for the cursor position when a button is clicked.

    Cursor.Position = Me.MousePointer (Me.treeViewAdv1.Nodes(0))

End Sub

{% endhighlight %}

#### What is the use of Undo/ Redo functionality in TreeViewAdv using HistoryManager property?

The undo / redo functionality of a tree node lets you delete a node, add a node, edit a node's text and drag / drop a node using the HistoryManager.

{% highlight c# %}



/*The user should get the HistoryManager to use and then the HistoryEnabled property 

should be set to true. The HistoryManager plays the role in the Undo/Redo actions.*/



1. Deleting a node



2. Adding a node



3. Editing node's Text



4. Drag/drop of a node*/

private void barItem1_Click(object sender, System.EventArgs e)

{

    if (this.treeViewAdv1.HistoryManager.CanUndo == true)

    {

        this.treeViewAdv1.HistoryManager.Undo();

    }

}



private void barItem2_Click(object sender, System.EventArgs e)

{

    if (this.treeViewAdv1.HistoryManager.CanRedo == true)

    {

        this.treeViewAdv1.HistoryManager.Redo();

    }

} 

{% endhighlight %}

{% highlight vbnet %}



'The user should get the HistoryManager to use and then the HistoryEnabled property 

'should be set to true. The HistoryManager plays the role in the Undo/Redo actions .



'1. Deleting a node



'2. Adding a node



'3. Editing node's Text



'4. Drag/drop of a node

Private Sub barItem1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    If Me.treeViewAdv1.HistoryManager.CanUndo = True Then

        Me.treeViewAdv1.HistoryManager.Undo()

    End If

End Sub



Private Sub barItem2_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    If Me.treeViewAdv1.HistoryManager.CanRedo = True Then

        Me.treeViewAdv1.HistoryManager.Redo()

    End If

End Sub

{% endhighlight %}
 
#### How to customize the location of Custom controls added in the TreeNodeAdv?

TreeNodesAdv hold controls like combo box, Calendar, Chart etc.,by using its Custom Controls feature. In the TreeNodeAdv, this custom control location can be customized by using its CustomControlLocation property. Refer to the following code examples.

{% highlight c# %}



//To Set Location of the CustomControl in TreeViewAdv

this.treeViewAdv1.Nodes[1].CustomControlLocation = new Point(60, 15);

{% endhighlight %}

{% highlight vbnet %}



'To Set Location of the CustomControl in TreeViewAdv

Me.treeViewAdv1.Nodes(1).CustomControlLocation = New Point(60, 15)

{% endhighlight %}

