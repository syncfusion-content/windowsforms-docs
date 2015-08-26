---
layout: post
title: Through Code
description: Through Code
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Through Code

The following code shows how to create a GroupBar control and add GroupBar Items to the control.

1. Include the required namespace.

{% highlight C# %}  

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}


{% highlight vbnet %} 

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}


2. Create instances of GroupBar and GroupBar Items.

{% highlight C# %} 


private Syncfusion.Windows.Forms.Tools.GroupBar groupBar1;

private Syncfusion.Windows.Forms.Tools.GroupBarItem groupBarItem1;

private Syncfusion.Windows.Forms.Tools.GroupBarItem groupBarItem2;

private Syncfusion.Windows.Forms.Tools.GroupBarItem groupBarItem3;



this.groupBar1 = new GroupBar();

this.groupBarItem1 = new GroupBarItem();

this.groupBarItem2 = new GroupBarItem();

this.groupBarItem3 = new GroupBarItem();

 {% endhighlight %}


{% highlight vbnet %} 



Private groupBar1 As Syncfusion.Windows.Forms.Tools.GroupBar

Private groupBarItem1 As Syncfusion.Windows.Forms.Tools.GroupBarItem

Private groupBarItem2 As Syncfusion.Windows.Forms.Tools.GroupBarItem

Private groupBarItem3 As Syncfusion.Windows.Forms.Tools.GroupBarItem



Me.groupBar1 = New GroupBar()

Me.groupBarItem1 = New GroupBarItem()

Me.groupBarItem2 = New GroupBarItem()

Me.groupBarItem3 = New GroupBarItem()

{% endhighlight %}

3. Add GroupBar Items to the GroupBar and specify the size of the GroupBar. Finally add a GroupBar control to the Form.

{% highlight C# %}  



this.groupBar1.GroupBarItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupBarItem[]{this.groupBarItem1, this.groupBarItem2, this.groupBarItem3});

this.groupBar1.Size = new System.Drawing.Size(192, 120);

this.Controls.Add(this.groupBar1);

this.groupBarItem1.Text = "GroupBarItem0";

this.groupBarItem2.Text = "GroupBarItem1";

this.groupBarItem3.Text = "GroupBarItem2";

{% endhighlight %}

{% highlight vbnet %} 



Me.groupBar1.GroupBarItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupBarItem(){Me.groupBarItem1, Me.groupBarItem2, Me.groupBarItem3})

Me.groupBar1.Size = New System.Drawing.Size(192, 120)

Me.Controls.Add(Me.groupBar1)

Me.groupBarItem1.Text = "GroupBarItem0"

Me.groupBarItem2.Text = "GroupBarItem1"

Me.groupBarItem3.Text = "GroupBarItem2"

{% endhighlight %}

 ![](Overview_images/Overview_img10.jpeg) 
Figure 923: GroupBar with Three GroupBar Items Added
