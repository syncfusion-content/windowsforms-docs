---
layout: post
title: Getting-Started
description: getting started
platform: WindowsForms
control: Edit
documentation: ug
---

# Getting Started

This section guides you on getting started with Windows application, controls etc. It comprises the following topics:



## Control Structure

The following screen shot illustrates the structure of the Edit Control.



{ ![](Getting-Started_images/Getting-Started_img1.png) | markdownify }
{:.image }




_Figure_ _5__: Structure of EditControl_



## Creating an Edit Control

Essential Edit provides users with a powerful editing control, modeled after the VS.NET code editor. When complete, Edit will have almost all the code editing features available in VS.NET.

In the following sections, you will learn how to create an Edit Control and use it in windows application.



### Through Designer

The following steps illustrate how to create an Edit Control through designer.

1. Open the host form (or user control) within the Visual Studio.NET designer, and drag the Edit Control from the VS.NET toolbox onto the form. This will create an instance of the Edit Control and add it to the form at the desired location.



The following image shows Edit Control in the toolbox.



{ ![](Getting-Started_images/Getting-Started_img2.jpeg) | markdownify }
{:.image }


_Figure_ _6__: Edit Control in Toolbox_



2. Customize the Edit Control as per your requirements by setting the properties of the control through the Properties grid.
3. Run the application.



The following illustration shows Edit Control created through designer.



{ ![](Getting-Started_images/Getting-Started_img3.jpeg) | markdownify }
{:.image }


_Figure_ _7__: Edit Control created Through Designer_



See Also



Through Code



### Through Code

The following steps illustrate how to create an Edit Control programmatically.

1. Import the Edit Control package in your application for easier coding experience.





[C#]



using Syncfusion.Windows.Forms.Edit;



[VB.NET]



Imports Syncfusion.Windows.Forms.Edit



2. Create an instance of the Edit Control.



[C#]



private Syncfusion.Windows.Forms.Edit.EditControl editControl1;

editControl1 = new Syncfusion.Windows.Forms.Edit.EditControl();



[VB.NET]



Private editControl1 As Syncfusion.Windows.Forms.Edit.EditControl

editControl1 = New Syncfusion.Windows.Forms.Edit.EditControl()



3. Set an appropriate size for the Edit Control.



[C#]



editControl1.Size = new Size(50, 50);



[VB.NET]



editControl1.Size = New Size(50, 50)



4. Set the Dock property to the appropriate DockStyle enumeration value if desired.



[C#]



editControl1.Dock = DockStyle.Fill;



[VB.NET]



editControl1.Dock = DockStyle.Fill



5. Set an appropriate BorderStyle to the Edit Control instance.



[C#]



editControl1.BorderStyle = BorderStyle.Fixed3D;



[VB.NET]



editControl1.BorderStyle = BorderStyle.Fixed3D



6. Add this instance of the Edit Control to the Host Form or an UserControl.



[C#]



// Adding instance of the EditControl to the Host Form.

this.Controls.Add(editControl1);



[VB.NET]



' Adding instance of the EditControl to the Host Form.

Me.Controls.Add(editControl1)



7. Run the application.



The following illustration shows Edit Control created through code.



{ ![](Getting-Started_images/Getting-Started_img4.jpeg) | markdownify }
{:.image }


_Figure_ _8__: Edit Control created Through Code_



See Also



Through Designer

