---
layout: post
title: Through Code
description: overview
platform: windowsforms
control: GroupView
documentation: ug
--- 
# Through Code

GroupView control can be created using the GroupView class. GroupView Items can be added to the GroupView control using the GroupView.GroupViewItems collection property. 

1. Include the required namespace.

{% highlight C# %}  

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}



{% highlight vbnet %} 

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

2. Create instances of the GroupView control and GroupView Items.

{% highlight C# %}  

private Syncfusion.Windows.Forms.Tools.GroupView groupView1;

private Syncfusion.Windows.Forms.Tools.GroupViewItem groupViewItem1;

private Syncfusion.Windows.Forms.Tools.GroupViewItem groupViewItem2;

private Syncfusion.Windows.Forms.Tools.GroupViewItem groupViewItem3;

this.groupView1=new GroupView();

this.groupViewItem1=new GroupViewItem();

this.groupViewItem2=new GroupViewItem();

this.groupViewItem3=new GroupViewItem();

{% endhighlight %}


{% highlight vbnet %} 

Private groupView1 As Syncfusion.Windows.Forms.Tools.GroupView

Private groupViewItem1 As Syncfusion.Windows.Forms.Tools.GroupViewItem

Private groupViewItem2 As Syncfusion.Windows.Forms.Tools.GroupViewItem

Private groupViewItem3 As Syncfusion.Windows.Forms.Tools.GroupViewItem


Me.groupView1 = New GroupView()

Me.groupViewItem1 = New GroupViewItem()

Me.groupViewItem2 = New GroupViewItem()

Me.groupViewItem3 = New GroupViewItem()

{% endhighlight %}

3. Add GroupView Items to the GroupView control and specify the size of the GroupView control. Finally add a GroupView control to the Form.

{% highlight C# %}  


this.groupView2.GroupViewItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupViewItem[] {

new Syncfusion.Windows.Forms.Tools.GroupViewItem("Windows Forms", 0, true, null, "GroupViewItem0"),

new Syncfusion.Windows.Forms.Tools.GroupViewItem("Components", 1, true, null, "GroupViewItem1"),

new Syncfusion.Windows.Forms.Tools.GroupViewItem("General", 2, true, null, "GroupViewItem2")});

this.groupView1.Size=new Size(192,120);

this.Controls.Add(this.groupView1);

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView2.GroupViewItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupViewItem() {New Syncfusion.Windows.Forms.Tools.GroupViewItem("Windows Forms", 0, True, Nothing, "GroupViewItem0"), New Syncfusion.Windows.Forms.Tools.GroupViewItem("Components", 1, True, Nothing, "GroupViewItem1"), New Syncfusion.Windows.Forms.Tools.GroupViewItem("General", 2, True, Nothing, "GroupViewItem2")})

Me.groupView1.Size = New Size(192,120)

Me.Controls.Add(Me.groupView1)

{% endhighlight %}

 ![](Overview_images/Overview_img55.jpeg) 
Figure 963: GroupView Items added to the GroupView Control