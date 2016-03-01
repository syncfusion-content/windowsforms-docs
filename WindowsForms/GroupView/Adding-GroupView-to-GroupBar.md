---
layout: post
title: Adding GroupView to GroupBar | Windows Forms | Syncfusion
description: Concepts and Features
platform: windowsforms
control: GroupView
documentation: ug
---
# Adding GroupView to GroupBar

GroupView controls can be created for each of the groups in the GroupBar and initialized with the appropriate set of property values that endow the control with the VS.NET toolbox list type of interface. The GroupView control can be added to the GroupBar by activating each GroupBar Item in turn and dropping the GroupView onto the GroupBar Item's client surface. This will add the GroupView control to the GroupBar Parent and associate it with the particular GroupBar Item. 

{% highlight C# %} 

this.groupBar1 = new Syncfusion.Windows.Forms.Tools.GroupBar();

this.groupBarItem1 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupBarItem2 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupView1 = new Syncfusion.Windows.Forms.Tools.GroupView();



// GroupView control attached as a client control to groupBarItem1.

this.groupBarItem1.Client = this.groupView1;



// Items are added to the GroupView Control and their text is edited.

this.groupView1.GroupViewItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupViewItem[] {

new Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem0", -1, true, null, "GroupViewItem0"),

new Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem1", -1, true, null, "GroupViewItem1"), new Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem2", -1, true, null, "GroupViewItem2"), new Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem3", -1, true, null, "GroupViewItem3")});

this.groupViewItem1.Text = "My Computer";

this.groupViewItem2.Text = "Floppy Drive";

this.groupViewItem3.Text = "CD Drive";

this.groupViewItem3.Text = "Desktop";

 {% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1 = New Syncfusion.Windows.Forms.Tools.GroupBar()

Me.groupBarItem1 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupBarItem2 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupView1 = New Syncfusion.Windows.Forms.Tools.GroupView()



' GroupView control attached as a client control to groupBarItem1. 

Me.groupBarItem1.Client = Me.groupView1



' Items are added to the GroupView Control.

Me.groupView1.GroupViewItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupViewItem() {New Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem0", -1, True, Nothing, "GroupViewItem0"), New Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem1", -1, True, Nothing, "GroupViewItem1"), New Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem2", -1, True, Nothing, "GroupViewItem2"), New Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem3", -1, True, Nothing, "GroupViewItem3")})

Me.groupViewItem1.Text = "My Computer"

Me.groupViewItem2.Text = "Floppy Drive"

Me.groupViewItem3.Text = "CD Drive"

Me.groupViewItem3.Text = "Desktop"

{% endhighlight %}


 ![](Overview_images/Overview_img87.jpeg) 

