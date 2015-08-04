---
layout: post
title: TabSplitterContainer
description: tabsplittercontainer
platform: common
control: Control Name undefined
documentation: ug
---

## TabSplitterContainer

Essential Tools TabSplitterContainer control is a VS 2008 control which can have multiple tab pages grouped under primary or secondary pages, in a container, separated by a splitter. The splitter comes with advanced options like swapping of splitter pages, adjustable splitter position, both at design time and run time, collapsing of the splitter panes and supports horizontal and vertical orientation of the splitter. This user guide will easily guide you with the features of TabSplitterContainer control.

![](TabSplitterContainer_images/TabSplitterContainer_img1.jpeg)
{:.image }


#### Features Overview

The features of the TabSplitterContainer control are listed below.

* Lets you add primary and secondary pages. See Splitter Components topic.
* We can swap the tab pages easily by clicking a button. 
* The splitter orientation can be horizontal and vertical. 
* Splitter panes can be expanded or collapsed.
* Splitter pages has properties which can give great look and feel.

See Also

Concepts and Features

#### Creating TabSplitterContainer Control

TabSplitterContainer control can be easily created through designer by just dragging and dropping onto the form. 

![](TabSplitterContainer_images/TabSplitterContainer_img2.jpeg)
{:.image }


We can add primary or secondary pages using the below properties.

![](TabSplitterContainer_images/TabSplitterContainer_img3.jpeg)
{:.image }


It can be created programmatically using the below steps.

1. Create or open a Windows Forms project.
2. Add Syncfusion's Tools.Windows and Shared.Base assemblies to the application.
3. Add the Syncfusion.Windows.Forms.Tools namespace.

[C#]



using Syncfusion.Windows.Forms.Tools;



[VB.NET]



Imports Syncfusion.Windows.Forms.Tools 



4. Create and initialize the TabSplitterContainer control and TabSplitterPages.

[C#]



private Syncfusion.Windows.Forms.Tools.TabSplitterPage tabSplitterPage1;

private Syncfusion.Windows.Forms.Tools.TabSplitterPage tabSplitterPage2;

private Syncfusion.Windows.Forms.Tools.TabSplitterContainer tabSplitterContainer1;



this.tabSplitterPage1 = new Syncfusion.Windows.Forms.Tools.TabSplitterPage();

this.tabSplitterPage2 = new Syncfusion.Windows.Forms.Tools.TabSplitterPage();

this.tabSplitterContainer1 = new Syncfusion.Windows.Forms.Tools.TabSplitterContainer();



[VB.NET]



Private tabSplitterPage1 As Syncfusion.Windows.Forms.Tools.TabSplitterPage

Private tabSplitterPage2 As Syncfusion.Windows.Forms.Tools.TabSplitterPage

Private tabSplitterContainer1 As Syncfusion.Windows.Forms.Tools.TabSplitterContainer



Me.tabSplitterPage1 = New Syncfusion.Windows.Forms.Tools.TabSplitterPage() 

Me.tabSplitterPage2 = New Syncfusion.Windows.Forms.Tools.TabSplitterPage() 

Me.tabSplitterContainer1 = New Syncfusion.Windows.Forms.Tools.TabSplitterContainer()



5. Add Splitter pages to the TabSplitterContainer.

[C#]



this.tabSplitterContainer1.PrimaryPages.AddRange(new Syncfusion.Windows.Forms.Tools.TabSplitterPage[] {this.tabSplitterPage1});

this.tabSplitterContainer1.SecondaryPages.AddRange(new Syncfusion.Windows.Forms.Tools.TabSplitterPage[] {this.tabSplitterPage2});



[VB.NET]



Me.tabSplitterContainer1.PrimaryPages.AddRange(New Syncfusion.Windows.Forms.Tools.TabSplitterPage() {Me.tabSplitterPage1}) 

Me.tabSplitterContainer1.SecondaryPages.AddRange(New Syncfusion.Windows.Forms.Tools.TabSplitterPage() {Me.tabSplitterPage2}) 



6. Set the size and location of the control.

[C#]



this.tabSplitterContainer2.Location = new System.Drawing.Point(195, 29);

this.tabSplitterContainer2.Name = "tabSplitterContainer1";

this.tabSplitterContainer2.Size = new System.Drawing.Size(300, 250);

this.tabSplitterContainer2.SplitterPosition = 50;

this.tabSplitterPage3.Text = "Code";

this.tabSplitterPage4.Text = "Design";



[VB.NET]



Me.tabSplitterContainer2.Location = New System.Drawing.Point(195, 29) 

Me.tabSplitterContainer2.Name = "tabSplitterContainer1" 

Me.tabSplitterContainer2.Size = New System.Drawing.Size(300, 250) 

Me.tabSplitterContainer2.SplitterPosition = 50 

Me.tabSplitterPage3.Text = "Code" 

Me.tabSplitterPage4.Text = "Design"



7. Add the control to the form.

[C#]



this.Controls.Add(this.tabSplitterContainer2);



[VB.NET]



Me.Controls.Add(Me.tabSplitterContainer2)



![](TabSplitterContainer_images/TabSplitterContainer_img4.jpeg)
{:.image }


See Also

Concepts and Features

#### Concepts and Features

This section will walk you through the core concepts of the TabSplitterContainer control. It includes the below topics.

##### Splitter Components

The splitter in the TabSplitterContainer control has in-built options for changing the orientation of the splitter and also to collapse or expand the splitter panes. Those options are illustrated below.

![](TabSplitterContainer_images/TabSplitterContainer_img5.jpeg)
{:.image }


* Primary Page - We can add primary pages using PrimaryPages property. It invokes TabSplitterPage Collection Editor and lets you add primary pages.
* Secondary Page - We can add secondary pages using SecondaryPages property. It invokes TabSplitterPage Collection Editor and lets you add secondary pages.
* Swap Button - This button lets you to swap between the primary and secondary pages.
* Vertical Orientation - Sets the orientation of the splitter to be vertical.
* Horizontal Orientation - Sets the orientation of the splitter to be horizontal.
* Expand / Collapse Button - Clicking this button can collapse the secondary pane and place at the bottom of the control. Clicking this button again will expand the pane and place in its original position. 
###### SplitterPage


The properties which customizes the Splitter page are as follows.

_Table_ _851__: Property Table_

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


[C#]



this.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.tabSplitterPage1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.BackgroundImage")));

this.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;

this.tabSplitterPage1.Image = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.Image")));

this.tabSplitterPage1.Text = "Designer";

this.tabSplitterPage1.Tooltip = "Designer";

this.tabSplitterPage1.Visible = true;



[VB.NET]



Me.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

Me.tabSplitterPage1.BackgroundImage = DirectCast((resources.GetObject("tabSplitterPage1.BackgroundImage")), System.Drawing.Image) 

Me.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center 

Me.tabSplitterPage1.Image = DirectCast((resources.GetObject("tabSplitterPage1.Image")), System.Drawing.Image) 

Me.tabSplitterPage1.Text = "Designer" 

Me.tabSplitterPage1.Tooltip = "Designer" 

Me.tabSplitterPage1.Visible = True 



![](TabSplitterContainer_images/TabSplitterContainer_img6.jpeg)
{:.image }


##### Splitter Position

The splitter position can be adjusted manually within the TabSplitterContainer control at design time and also at run time. To specify the position programmatically, use the SplitterPosition property.

[C#]



this.tabSplitterContainer1.SplitterPosition = 95;



[VB.NET]



Me.tabSplitterContainer1.SplitterPosition = 95



![](TabSplitterContainer_images/TabSplitterContainer_img7.jpeg)
{:.image }


##### Orientation

Orientation of the splitter in the TabSplitterContainer control is set using Orientation property. Default value is horizontal.

[C#]



this.tabSplitterContainer1.Orientation = System.Windows.Forms.Orientation.Vertical;



[VB.NET]



Me.tabSplitterContainer1.Orientation = System.Windows.Forms.Orientation.Vertical



![](TabSplitterContainer_images/TabSplitterContainer_img8.jpeg)
{:.image }


##### Customizable Splitter Back Color 

TabSplitterContainer now supports customizing the back color of the Splitter to match the theme of the application using the newly added property SplitterBackColor. Earlier this was not made possible.

[C#]

// Set Custom Color to The TabSplitterContainer.

this.tabSplitterContainer1.SplitterBackColor = Color.Blue;



[VB.NET]

‘Set Custom Color to The TabSplitterContainer.

Me.tabSplitterContainer1.SplitterBackColor = Color.Blue

#### Events

This section comprises the below events:

##### PrimaryPages.SelectedIndexChanged Event

This event is handled whenever primary page selection is changed.

[C#]



this.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1;



private void PrimaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show(" Primary page is changed");

}



[VB.NET]



Me.tabSplitterContainer1.PrimaryPages.SelectedIndex = 1



Private Sub PrimaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show(" Primary page is changed")

End Sub

##### SecondaryPages.SelectedIndexChanged Event

This event is handled whenever secondary page selection is changed.

[C#]



this.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3;



private void SecondaryPages_SelectedIndexChanged(object sender, EventArgs e)

{

    MessageBox.Show("Secondary Page is Changed");

}



[VB.NET]



Me.tabSplitterContainer1.SecondaryPages.SelectedIndex = 3



Private Sub SecondaryPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    MessageBox.Show("Secondary Page is Changed")

End Sub

#### Frequently Asked Questions

This section illustrates the solutions for various task-based queries about the control.

##### How to collapse the splitter pane programmatically

This can be done programmatically using Collapsed property.

[C#]



this.tabSplitterContainer1.Collapsed = true;



[VB.NET]



Me.tabSplitterContainer1.Collapsed = True



![](TabSplitterContainer_images/TabSplitterContainer_img9.jpeg)
{:.image }


