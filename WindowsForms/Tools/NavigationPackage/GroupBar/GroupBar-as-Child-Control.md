---
layout: post
title: GroupBar as Child Control
description: GroupBar as Child Control
platform: windowsforms
control: GroupBar
documentation: ug
---
# GroupBar as Child Control

GroupBar control itself can be placed in the client region of the GroupBar Item. This is called Nested GroupBar.

The following step-by-step procedure helps you to create Nested GroupBars.

1. Drag and drop the GroupBar1 control from the toolbox onto the form, add GroupBar Items using the GroupBar Item Collection Editor, drag and drop the GroupView control and add GroupView Items using the GroupView Item Collection Editor. Associate the GroupView control inside the client area of the GroupBar Item.
2. The below screen shot shows the GroupBar with four GroupBar Items named as Windows Forms, Components, General and Nested GroupBar.

 ![](Overview_images/Overview_img25.jpeg) 
Figure 936: GroupBar1 with Four GroupBar Items

3. Drag and drop another GroupBar2 control from the toolbox and add the GroupBar Items (Personal, Work and Contacts) using the GroupBar Item Collection Editor and add the GroupView control with GroupView Items (Vendors, Metrics, Trend, Sales and Sales 2 for the GroupBar Item Work) to each GroupBar Item using the GroupView Item Collection Editor.

 ![](Overview_images/Overview_img26.jpeg) 
Figure 937: GroupBar2 with Three GroupBar Items

4. Add GroupBar2 as child control to the GroupBar1 by doing a drag and drop operation.

 ![](Overview_images/Overview_img27.jpeg) 
Figure 938: Adding GroupBar2 as Child Control to GroupBar1

The following screen shot shows the Nested GroupBars.

 ![](Overview_images/Overview_img28.jpeg) 
Figure 939: Nested GroupBars

{% highlight C# %}  

this.groupBar1 = new Syncfusion.Windows.Forms.Tools.GroupBar();

this.groupBarItem1 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupBarItem2 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupBar2 = new Syncfusion.Windows.Forms.Tools.GroupBar();

this.groupBarItem3 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

this.groupBarItem4 = new Syncfusion.Windows.Forms.Tools.GroupBarItem();

// groupBarItem1 has no client control.

this.groupBarItem1.Client = null;


// GroupBar control attached as a client control to groupBarItem2.

this.groupBarItem2.Client = this.groupBar2;



// Items are added to the GroupBar Control.

this.groupBar2.GroupBarItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupBarItem[] {

this.groupBarItem3,

this.groupBarItem4});

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1 = New Syncfusion.Windows.Forms.Tools.GroupBar()

Me.groupBarItem1 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupBarItem2 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupBar2 = New Syncfusion.Windows.Forms.Tools.GroupBar()

Me.groupBarItem3 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

Me.groupBarItem4 = New Syncfusion.Windows.Forms.Tools.GroupBarItem()

' groupBarItem1 has no client control.

Me.groupBarItem1.Client = Nothing

' GroupBar control attached as a client control to groupBarItem2.

Me.groupBarItem2.Client = Me.groupBar2

' Items are added to the GroupBar Control.

Me.groupBar2.GroupBarItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupBarItem() {Me.groupBarItem3, Me.groupBarItem4})

{% endhighlight %}