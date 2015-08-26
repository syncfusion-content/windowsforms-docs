---
layout: post
title: GroupView as Child Control 
description: GroupView as Child Control 
platform: windowsforms
control: Navigation Package
documentation: ug
---
## GroupView as Child Control 

GroupView control can be added as a Child control to the GroupBar Item by dragging-and-dropping the control onto the GroupBar's client region and adding GroupView Items using the GroupView Item Collection Editor. 

{% highlight C# %}  

this.groupBar1 = new Syncfusion.Windows.Forms.Tools.GroupBar();

this.groupBarItem1 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupBarItem2 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupView1 = new Syncfusion.Windows.Forms.Tools.GroupView();



// groupBarItem1 has no client control.

this.groupBarItem1.Client = null;



// GroupView control attached as a client control to groupBarItem2.

this.groupBarItem2.Client = this.groupView1;



// Items are added to the GroupView Control and their text is edited.

this.groupView1.GroupViewItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupViewItem[] {

new Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem0", -1, true, null, "GroupViewItem0"),

new Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem1", -1, true, null, "GroupViewItem1")});

{% endhighlight %}


{% highlight vbnet %} 

Me.groupBar1 = New Syncfusion.Windows.Forms.Tools.GroupBar()

Me.groupBarItem1 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupBarItem2 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupView1 = New Syncfusion.Windows.Forms.Tools.GroupView()



' groupBarItem1 has no client control. 

Me.groupBarItem1.Client = Nothing



' GroupView control attached as a client control to groupBarItem2.

Me.groupBarItem2.Client = Me.groupView1



' Items are added to the GroupView Control and their text is edited.

Me.groupView1.GroupViewItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupViewItem() {New Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem0", -1, True, Nothing, "GroupViewItem0"), New Syncfusion.Windows.Forms.Tools.GroupViewItem("GroupViewItem1", -1, True, Nothing, "GroupViewItem1")})

{% endhighlight %}

 ![](Overview_images/Overview_img24.jpeg)
Figure 935: GroupView control added to the GroupBarItem0
