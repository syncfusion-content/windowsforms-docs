---
layout: post
title: Creating GroupBar | WindowsForms | Syncfusion
description: Learn here all about the Creating GroupBar of Syncfusion Windows Forms Navigation Pane (GroupBar) control and more.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Creating GroupBar in Windows Forms GroupBar

This tutorial will show you how a GroupBar is created through the following ways.

## Through designer

The GroupBar's designer allows you to add new groups using it's design-time verbs or the property browser, while adding a Child control to a group involves merely activating the particular group and dropping the control onto the GroupBar.

To create a GroupBar through designer,

* Drag-and-drop a GroupBar object from the controls toolbox onto your form.

 ![Drag-and-drop a GroupBar](Overview_images/Overview_img5.jpeg)
 


* To add a GroupBar Item using design-time verbs, follow the given procedure.
* To add a GroupBar Item using the design-time verbs, right-click on the GroupBar and select the Add Group option. This adds a GroupBar Item to the GroupBar control.

 ![Add a GroupBar](Overview_images/Overview_img6.jpeg)
 
 

* To add a GroupBar Item using the property browser, follow the procedure given below.
* In the Properties window, select the GroupBarItems property. The GroupBarItem Collection Editor will be opened. Click Add, a GroupBar Item will be added to the GroupBar control.

![Add a GroupBar Item](Overview_images/Overview_img7.jpeg)



![Select GroupBar Item](Overview_images/Overview_img8.jpeg)



![GroupBar Item Added](Overview_images/Overview_img9.jpeg)
 


You can also add child controls to the GroupBar. Refer Integrating Child Controls to the GroupBarItem topic, for information on this topic.


## Through code

The following code shows how to create a GroupBar control and add GroupBar Items to the control.

1. Include the required namespace.

    {% tabs %}

    {% highlight C# %}

     using Syncfusion.Windows.Forms.Tools;

    {% endhighlight %}

	{% highlight VB %}
    

		Imports Syncfusion.Windows.Forms.Tools

    {% endhighlight %}
		
	{% endtabs %}

2. Create instances of GroupBar and GroupBar Items.

    {% tabs %}

    {% highlight C# %}


		private Syncfusion.Windows.Forms.Tools.GroupBar groupBar1;

		private Syncfusion.Windows.Forms.Tools.GroupBarItem groupBarItem1;

		private Syncfusion.Windows.Forms.Tools.GroupBarItem groupBarItem2;

		private Syncfusion.Windows.Forms.Tools.GroupBarItem groupBarItem3;

    {% endhighlight %}

	{% highlight VB %}
    
		this.groupBar1 = new GroupBar();

		this.groupBarItem1 = new GroupBarItem();

		this.groupBarItem2 = new GroupBarItem();

		this.groupBarItem3 = new GroupBarItem();
    
	{% endhighlight %}
		
	{% endtabs %}


    {% tabs %}

    {% highlight C# %}



		Private groupBar1 As Syncfusion.Windows.Forms.Tools.GroupBar

		Private groupBarItem1 As Syncfusion.Windows.Forms.Tools.GroupBarItem

		Private groupBarItem2 As Syncfusion.Windows.Forms.Tools.GroupBarItem

		Private groupBarItem3 As Syncfusion.Windows.Forms.Tools.GroupBarItem

    {% endhighlight %}

	{% highlight VB %}

		Me.groupBar1 = New GroupBar()

		Me.groupBarItem1 = New GroupBarItem()

		Me.groupBarItem2 = New GroupBarItem()

		Me.groupBarItem3 = New GroupBarItem()

    {% endhighlight %}
		
	{% endtabs %}

3. Add GroupBar Items to the GroupBar and specify the size of the GroupBar. Finally add a GroupBar control to the Form.

    {% tabs %}

    {% highlight C# %}


		this.groupBar1.GroupBarItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupBarItem[]{this.groupBarItem1, this.groupBarItem2, this.groupBarItem3});

		this.groupBar1.Size = new System.Drawing.Size(192, 120);

		this.Controls.Add(this.groupBar1);

		this.groupBarItem1.Text = "GroupBarItem0";

		this.groupBarItem2.Text = "GroupBarItem1";

		this.groupBarItem3.Text = "GroupBarItem2";

    {% endhighlight %}

	{% highlight VB %}


		Me.groupBar1.GroupBarItems.AddRange(New Syncfusion.Windows.Forms.Tools.GroupBarItem(){Me.groupBarItem1, Me.groupBarItem2, Me.groupBarItem3})

		Me.groupBar1.Size = New System.Drawing.Size(192, 120)

		Me.Controls.Add(Me.groupBar1)

		Me.groupBarItem1.Text = "GroupBarItem0"

		Me.groupBarItem2.Text = "GroupBarItem1"

		Me.groupBarItem3.Text = "GroupBarItem2"

    {% endhighlight %}
		
	{% endtabs %}

 ![GroupBar sample created in Windows Forms](Overview_images/Overview_img10.jpeg) 
 

