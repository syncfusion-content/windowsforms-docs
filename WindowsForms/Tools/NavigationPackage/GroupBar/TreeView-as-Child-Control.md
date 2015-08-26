---
layout: post
title: TreeView as Child Control 
description: TreeView as Child Control 
platform: windowsforms
control: Navigation Package
documentation: ug
---
## TreeView as Child Control 

You can add a TreeView control to the GroupBar by clicking on a particular group say GroupBarItem1 by activating it and then dragging-and-dropping the TreeView control onto the GroupBar's client region. You can repeat this process for all groups in the control. 

Individual GroupBar Item properties such as Text, Image and ForeColor can be set using the GroupBar Item Collection Editor. To do this, first select the GroupBar.GroupBarItems to bring up the collection editor and select each item to assign the property values. 

The default GroupBar properties will display the control in the regular mode using the standard visual style. You can now use the property browser to set the appropriate Appearance and Behavior settings to tailor the GroupBar's interface to suit the application's requirement. 

{% highlight C# %} 

this.groupBar1 = new Syncfusion.Windows.Forms.Tools.GroupBar();

this.groupBarItem1 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupBarItem2 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.treeView1 = new System.Windows.Forms.TreeView();



// groupBarItem1 has no client control.

this.groupBarItem1.Client = null;



// TreeView control attached as a client control to groupBarItem2.

this.groupBarItem2.Client = this.treeView1;



// Nodes are added to the TreeView Control.

this.treeView1.Nodes.AddRange(new System.Windows.Forms.TreeNode[]{treeNode2});

 {% endhighlight %}

{% highlight vbnet %} 



Me.groupBar1 = New Syncfusion.Windows.Forms.Tools.GroupBar()

Me.groupBarItem1 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupBarItem2 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.treeView1 = New System.Windows.Forms.TreeView()



' groupBarItem1 has no client control.

Me.groupBarItem1.Client = Nothing



' TreeView control attached as a client control to groupBarItem2.

Me.groupBarItem2.Client = Me.treeView1



' Nodes are added to the TreeView Control.

Me.treeView1.Nodes.AddRange(New System.Windows.Forms.TreeNode() {treeNode2})

{% endhighlight %}

 ![](Overview_images/Overview_img22.jpeg) 
Figure 933: Adding a TreeView Control to the GroupBar

![](Overview_images/Overview_img23.jpeg) 
Figure 934: TreeView Control added to GroupBarItem1

