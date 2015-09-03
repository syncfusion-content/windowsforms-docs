---
layout: post
title: Creating an XPTaskBar
description: overview
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# Creating an XPTaskBar

This tutorial will show you how a XPTaskBar is created through the following ways.

## Through Designer

In this tutorial, we will create a simple XPTaskBar.

1. Add an XPTaskBar control from the toolbox onto your form and a new instance will be placed on your form. Dock the control to the left of the form. Set the DockPadding.All property to '5' on the XPTaskBar so that there will be some space between the XPTaskBar Box children and the XPTaskBar. 

   ![](Overview_images/Overview_img93.jpeg) 
   Figure 995: XPTaskBar in Toolbox



   ![](Overview_images/Overview_img94.jpeg)
   Figure 996: DockPadding property set to "5"

2. To add an XPTaskBar Box, right click on the XPTaskBar control and select the Add Task Box verb. This will add an empty XPTaskBar Box instance. You can change it's Header Text property to change the text of the header.

3. You can also add an XPTaskBar Box using the Add Task Box command in the Property Grid. 

   ![](Overview_images/Overview_img95.jpeg) 
   Figure 997: Adding XPTaskBar Box through Verbs

   ![](Overview_images/Overview_img96.jpeg) 
  

4. Select the newly added XPTaskBar Box and open it's XPTaskBarItem Collection Editor. There you can add one or more XPTaskBar Items specifying the text, image (using the ImageIndex property), etc. for each item. To distinguish one item from the other, ou can specify a unique Tag property for each item.

   ![](Overview_images/Overview_img97.jpeg) 
   

   ![](Overview_images/Overview_img98.jpeg) 
   
   ![](Overview_images/Overview_img99.jpeg) 

   ![](Overview_images/Overview_img100.jpeg) 


N> The XPTaskBar Boxes can also host a Panel control within it. During design time, users can simply drag and drop the panel on the box. In code, users can do this  by adding the panel to the Controls collection of XPTaskBarBox. The panel's width will be resized to fit, whereas it's height will be based on the PreferredChildPanelHeight property setting._


## Through Code

The following step by step procedure helps you to create XPTaskBar programmatically.

1. Add the namespace Syncfusion.Windows.Forms.Tools.

   ~~~ cs

		using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.prettyprint }



   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }



2. Drag and drop an ImageList control onto the form and add images into it through the Images Collection Editor.

3. Create instances for XPTaskBar control, XPTaskBar Box1, XPTaskBar Box2 and ImageList control.

   ~~~ cs 

		private Syncfusion.Windows.Forms.Tools.XPTaskBar xpTaskBar1;

		private System.Windows.Forms.ImageList imageList1;

		private Syncfusion.Windows.Forms.Tools.XPTaskBarBox xpTaskBarBox1;

		private Syncfusion.Windows.Forms.Tools.XPTaskBarBox xpTaskBarBox2;



		this.xpTaskBar1 = new Syncfusion.Windows.Forms.Tools.XPTaskBar();

		this.imageList1 = new System.Windows.Forms.ImageList(this.components);

		this.xpTaskBarBox1 = new Syncfusion.Windows.Forms.Tools.XPTaskBarBox();

		this.xpTaskBarBox2 = new Syncfusion.Windows.Forms.Tools.XPTaskBarBox();

   ~~~
   {:.prettyprint }



   ~~~ vbnet

		Private xpTaskBar1 As Syncfusion.Windows.Forms.Tools.XPTaskBar = New XPTaskBar()

		Private imageList1 As System.Windows.Forms.ImageList 

		Private xpTaskBarBox1 As Syncfusion.Windows.Forms.Tools.XPTaskBarBox

		Private xpTaskBarBox2 As Syncfusion.Windows.Forms.Tools.XPTaskBarBox



		Me.xpTaskBar1 = New Syncfusion.Windows.Forms.Tools.XPTaskBar() 

		Me.imageList1 = New System.Windows.Forms.ImageList(Me.components) 

		Me.xpTaskBarBox1 = New Syncfusion.Windows.Forms.Tools.XPTaskBarBox() 

		Me.xpTaskBarBox2 = New Syncfusion.Windows.Forms.Tools.XPTaskBarBox()

   ~~~
   {:.prettyprint}

4. Add XPTaskBar to the control collection.

   ~~~ cs

		this.Controls.Add(this.xpTaskBar1);

   ~~~
   {:.prettyprint}



   ~~~ vbnet

		Me.Controls.Add(Me.xpTaskBar1)

   ~~~
   {:.prettyprint}

5. Set the ImageList to XPTaskBar Box1 and XPTaskBar Box2.

 
   ~~~ cs
		this.xpTaskBarBox1.ImageList = this.imageList1;

		this.xpTaskBarBox2.ImageList = this.imageList1;

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		Me.xpTaskBarBox1.ImageList = Me.imageList1 

		Me.xpTaskBarBox2.ImageList = Me.imageList1

   ~~~
   {:.prettyprint}

6. Set Header BackColor, Text and Item BackColor for XPTaskBar Box1 and XPTaskBar Box2.

   ~~~ cs

		this.xpTaskBarBox1.HeaderBackColor = Color.Yellow;

		this.xpTaskBarBox1.Text = "Header Text";

		this.xpTaskBarBox1.ItemBackColor = Color.WhiteSmoke;



		this.xpTaskBarBox2.HeaderBackColor = Color.Pink;

		this.xpTaskBarBox2.Text = "Another Header Text";

		this.xpTaskBarBox2.ItemBackColor = Color.WhiteSmoke;

   ~~~
   {:.prettyprint}



   ~~~ vbnet

		Me.xpTaskBarBox1.HeaderBackColor = Color.Yellow 

		Me.xpTaskBarBox1.Text = "Header Text" 

		Me.xpTaskBarBox1.ItemBackColor = Color.WhiteSmoke 



		Me.xpTaskBarBox2.HeaderBackColor = Color.Pink 

		Me.xpTaskBarBox2.Text = "Another Header Text" 

		Me.xpTaskBarBox2.ItemBackColor = Color.WhiteSmoke

   ~~~
   {:.prettyprint}

7. Add XPTaskBar Items to the XPTaskBar Box1 and XPTaskBar Box2.

   ~~~ cs  

		this.xpTaskBarBox1.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPTaskBarItem[] {

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item1", System.Drawing.Color.Empty, 0, null, "", true, true, "XPTaskBarItem0", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0),

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item2", System.Drawing.Color.Empty, 1, null, "", true, true, "XPTaskBarItem1", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0),

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item3", System.Drawing.Color.Empty, 2, null, "", true, true, "XPTaskBarItem2", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0),

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item4", System.Drawing.Color.Empty, 3, null, "", true, true, "XPTaskBarItem3", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0)});



		this.xpTaskBarBox2.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPTaskBarItem[] {

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item1", System.Drawing.Color.Empty, 0, null, "", true, true, "XPTaskBarItem4", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0),

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item2", System.Drawing.Color.Empty, 1, null, "", true, true, "XPTaskBarItem5", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0),

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item3", System.Drawing.Color.Empty, 2, null, "", true, true, "XPTaskBarItem6", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0),

            new Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item4", System.Drawing.Color.Empty, 3, null, "", true, true, "XPTaskBarItem7", new System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0)});

   ~~~
   {:.prettyprint}



   ~~~ vbnet

		Me.xpTaskBarBox1.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPTaskBarItem() {New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item1", System.Drawing.Color.Empty, 0, Nothing, "", True, _ 

		True, "XPTaskBarItem0", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0), New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item2", System.Drawing.Color.Empty, 1, Nothing, "", True, _ 

		True, "XPTaskBarItem1", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0), New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item3", System.Drawing.Color.Empty, 2, Nothing, "", True, _ 

		True, "XPTaskBarItem2", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0), New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item4", System.Drawing.Color.Empty, 3, Nothing, "", True, _ 

		True, "XPTaskBarItem3", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0)}) 



		Me.xpTaskBarBox2.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPTaskBarItem() {New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item1", System.Drawing.Color.Empty, 0, Nothing, "", True, _ 

		True, "XPTaskBarItem4", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0), New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item2", System.Drawing.Color.Empty, 1, Nothing, "", True, _ 

		True, "XPTaskBarItem5", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0), New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item3", System.Drawing.Color.Empty, 2, Nothing, "", True, _ 

		True, "XPTaskBarItem6", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0), New Syncfusion.Windows.Forms.Tools.XPTaskBarItem("Item4", System.Drawing.Color.Empty, 3, Nothing, "", True, _ 

		True, "XPTaskBarItem7", New System.Drawing.Font("Microsoft Sans Serif", 8.25F), 0)}) 

   {:.prettyprint}

8. Finally add the created XPTaskBar Boxes to the XPTaskBar control.

{% highlight C# %}  

this.xpTaskBar1.Controls.Add(this.xpTaskBarBox1);

this.xpTaskBar1.Controls.Add(this.xpTaskBarBox2);

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.Controls.Add(Me.xpTaskBarBox1)

Me.xpTaskBar1.Controls.Add(Me.xpTaskBarBox2)

{% endhighlight %}


 ![](Overview_images/Overview_img102.jpeg) 

