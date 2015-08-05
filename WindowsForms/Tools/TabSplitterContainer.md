---
layout: post
title: TabSplitterContainer
description: tabsplittercontainer
platform: WindowsForms
control: Tools
documentation: ug
---

# TabSplitterContainer

Essential Tools TabSplitterContainer control is a VS 2008 control which can have multiple tab pages grouped under primary or secondary pages, in a container, separated by a splitter. The splitter comes with advanced options like swapping of splitter pages, adjustable splitter position, both at design time and run time, collapsing of the splitter panes and supports horizontal and vertical orientation of the splitter. This user guide will easily guide you with the features of TabSplitterContainer control.

![](TabSplitterContainer_images/TabSplitterContainer_img1.jpeg)



## Features Overview

The features of the TabSplitterContainer control are listed below.

* Lets you add primary and secondary pages. See Splitter Components topic.
* We can swap the tab pages easily by clicking a button. 
* The splitter orientation can be horizontal and vertical. 
* Splitter panes can be expanded or collapsed.
* Splitter pages has properties which can give great look and feel.

See Also

Concepts and Features

## Creating TabSplitterContainer Control

TabSplitterContainer control can be easily created through designer by just dragging and dropping onto the form. 

![](TabSplitterContainer_images/TabSplitterContainer_img2.jpeg)



We can add primary or secondary pages using the below properties.

![](TabSplitterContainer_images/TabSplitterContainer_img3.jpeg)



It can be created programmatically using the below steps.

1. Create or open a Windows Forms project.
2. Add Syncfusion's Tools.Windows and Shared.Base assemblies to the application.
3. Add the Syncfusion.Windows.Forms.Tools namespace.

   ~~~ cs

		using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools 

   ~~~
   {:.prettyprint }

4. Create and initialize the TabSplitterContainer control and TabSplitterPages.

   ~~~ cs



		private Syncfusion.Windows.Forms.Tools.TabSplitterPage tabSplitterPage1;

		private Syncfusion.Windows.Forms.Tools.TabSplitterPage tabSplitterPage2;

		private Syncfusion.Windows.Forms.Tools.TabSplitterContainer tabSplitterContainer1;



		this.tabSplitterPage1 = new Syncfusion.Windows.Forms.Tools.TabSplitterPage();

		this.tabSplitterPage2 = new Syncfusion.Windows.Forms.Tools.TabSplitterPage();

		this.tabSplitterContainer1 = new Syncfusion.Windows.Forms.Tools.TabSplitterContainer();

   ~~~
   {:.prettyprint }
 
   ~~~ vbnet


		Private tabSplitterPage1 As Syncfusion.Windows.Forms.Tools.TabSplitterPage

		Private tabSplitterPage2 As Syncfusion.Windows.Forms.Tools.TabSplitterPage

		Private tabSplitterContainer1 As Syncfusion.Windows.Forms.Tools.TabSplitterContainer



		Me.tabSplitterPage1 = New Syncfusion.Windows.Forms.Tools.TabSplitterPage() 

		Me.tabSplitterPage2 = New Syncfusion.Windows.Forms.Tools.TabSplitterPage() 

		Me.tabSplitterContainer1 = New Syncfusion.Windows.Forms.Tools.TabSplitterContainer()

   ~~~
   {:.prettyprint }

5. Add Splitter pages to the TabSplitterContainer.

   ~~~ cs



		this.tabSplitterContainer1.PrimaryPages.AddRange(new Syncfusion.Windows.Forms.Tools.TabSplitterPage[] {this.tabSplitterPage1});

		this.tabSplitterContainer1.SecondaryPages.AddRange(new Syncfusion.Windows.Forms.Tools.TabSplitterPage[] {this.tabSplitterPage2});

   ~~~
   {:.prettyprint }

   ~~~ vbnet



		Me.tabSplitterContainer1.PrimaryPages.AddRange(New Syncfusion.Windows.Forms.Tools.TabSplitterPage() {Me.tabSplitterPage1}) 

		Me.tabSplitterContainer1.SecondaryPages.AddRange(New Syncfusion.Windows.Forms.Tools.TabSplitterPage() {Me.tabSplitterPage2}) 

   ~~~
   {:.prettyprint }

6. Set the size and location of the control.

   ~~~ cs



		this.tabSplitterContainer2.Location = new System.Drawing.Point(195, 29);

		this.tabSplitterContainer2.Name = "tabSplitterContainer1";

		this.tabSplitterContainer2.Size = new System.Drawing.Size(300, 250);

		this.tabSplitterContainer2.SplitterPosition = 50;

		this.tabSplitterPage3.Text = "Code";

		this.tabSplitterPage4.Text = "Design";

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.tabSplitterContainer2.Location = New System.Drawing.Point(195, 29) 

		Me.tabSplitterContainer2.Name = "tabSplitterContainer1" 

		Me.tabSplitterContainer2.Size = New System.Drawing.Size(300, 250) 

		Me.tabSplitterContainer2.SplitterPosition = 50 

		Me.tabSplitterPage3.Text = "Code" 

		Me.tabSplitterPage4.Text = "Design"

   ~~~
   {:.prettyprint }

7. Add the control to the form.

   ~~~ cs

		this.Controls.Add(this.tabSplitterContainer2);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.Controls.Add(Me.tabSplitterContainer2)

   ~~~
   {:.prettyprint }

![](TabSplitterContainer_images/TabSplitterContainer_img4.jpeg)



See Also

Concepts and Features

## Concepts and Features

This section will walk you through the core concepts of the TabSplitterContainer control. It includes the below topics.

### Splitter Components

The splitter in the TabSplitterContainer control has in-built options for changing the orientation of the splitter and also to collapse or expand the splitter panes. Those options are illustrated below.

![](TabSplitterContainer_images/TabSplitterContainer_img5.jpeg)



* Primary Page - We can add primary pages using PrimaryPages property. It invokes TabSplitterPage Collection Editor and lets you add primary pages.
* Secondary Page - We can add secondary pages using SecondaryPages property. It invokes TabSplitterPage Collection Editor and lets you add secondary pages.
* Swap Button - This button lets you to swap between the primary and secondary pages.
* Vertical Orientation - Sets the orientation of the splitter to be vertical.
* Horizontal Orientation - Sets the orientation of the splitter to be horizontal.
* Expand / Collapse Button - Clicking this button can collapse the secondary pane and place at the bottom of the control. Clicking this button again will expand the pane and place in its original position. 

#### SplitterPage


The properties which customizes the Splitter page are as follows.

_Table_ _851_: Property Table

<table>
<tr>
<td>
TabSplitterContainer Property</td><td>
Description</td></tr>
<tr>
<td>
BorderStyle</td><td>
Sets border for the splitter page.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Sets the background image layout for the control.</td></tr>
<tr>
<td>
Image</td><td>
Lets you set image icons for the tabs.</td></tr>
<tr>
<td>
ImageTransparencyColor</td><td>
Indicates the transparent color for the tab image.</td></tr>
<tr>
<td>
Text</td><td>
Sets text for the tab.</td></tr>
<tr>
<td>
Tooltip</td><td>
Sets tooltip text for the tab.</td></tr>
<tr>
<td>
Visible</td><td>
Sets the visibility of the tab.</td></tr>
</table>


{% highlight c# %}



this.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.tabSplitterPage1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.BackgroundImage")));

this.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;

this.tabSplitterPage1.Image = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.Image")));

this.tabSplitterPage1.Text = "Designer";

this.tabSplitterPage1.Tooltip = "Designer";

this.tabSplitterPage1.Visible = true;

{% endhighlight %}

{% highlight vbnet %}



Me.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

Me.tabSplitterPage1.BackgroundImage = DirectCast((resources.GetObject("tabSplitterPage1.BackgroundImage")), System.Drawing.Image) 

Me.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center 

Me.tabSplitterPage1.Image = DirectCast((resources.GetObject("tabSplitterPage1.Image")), System.Drawing.Image) 

Me.tabSplitterPage1.Text = "Designer" 

Me.tabSplitterPage1.Tooltip = "Designer" 

Me.tabSplitterPage1.Visible = True 

{% endhighlight %}


![](TabSplitterContainer_images/TabSplitterContainer_img6.jpeg)



### Splitter Position

The splitter position can be adjusted manually within the TabSplitterContainer control at design time and also at run time. To specify the position programmatically, use the SplitterPosition property.

{% highlight c# %}

this.tabSplitterContainer1.SplitterPosition = 95;

{% endhighlight %}

{% highlight vbnet %}

Me.tabSplitterContainer1.SplitterPosition = 95

{% endhighlight %}

![](TabSplitterContainer_images/TabSplitterContainer_img7.jpeg)



### Orientation

Orientation of the splitter in the TabSplitterContainer control is set using Orientation property. Default value is horizontal.

{% highlight c# %}

this.tabSplitterContainer1.Orientation = System.Windows.Forms.Orientation.Vertical;

{% endhighlight %}

{% highlight vbnet %}

Me.tabSplitterContainer1.Orientation = System.Windows.Forms.Orientation.Vertical

{% endhighlight %}

![](TabSplitterContainer_images/TabSplitterContainer_img8.jpeg)



### Customizable Splitter Back Color 

TabSplitterContainer now supports customizing the back color of the Splitter to match the theme of the application using the newly added property SplitterBackColor. Earlier this was not made possible.

{% highlight c# %}

// Set Custom Color to The TabSplitterContainer.

this.tabSplitterContainer1.SplitterBackColor = Color.Blue;

{% endhighlight %}

{% highlight vbnet %}

‘Set Custom Color to The TabSplitterContainer.

Me.tabSplitterContainer1.SplitterBackColor = Color.Blue

{% endhighlight %}

## Events

This section comprises the below events:

### PrimaryPages.SelectedIndexChanged Event

This event is handled whenever primary page selection is changed.

{% highlight c# %}

this.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1;



private void PrimaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show(" Primary page is changed");

}

{% endhighlight %}

{% highlight vbnet %}



Me.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1



Private Sub PrimaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show(" Primary page is changed")

End Sub

{% endhighlight %}

### SecondaryPages.SelectedIndexChanged Event

This event is handled whenever secondary page selection is changed.

{% highlight c# %}



this.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3;



private void SecondaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show("Secondary Page is Changed");

}

{% endhighlight %}

{% highlight vbnet %}



Me.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3



Private Sub SecondaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Secondary Page is Changed")

End Sub

{% endhighlight %}

## Frequently Asked Questions

This section illustrates the solutions for various task-based queries about the control.

### How to collapse the splitter pane programmatically

This can be done programmatically using Collapsed property.

{% highlight c# %}

this.tabSplitterContainer1.Collapsed = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabSplitterContainer1.Collapsed = True

{% endhighlight %}

![](TabSplitterContainer_images/TabSplitterContainer_img9.jpeg)



