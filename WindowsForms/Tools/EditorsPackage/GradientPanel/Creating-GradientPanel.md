---
layout: post
title: Creating GradientPanel
description: Creating GradientPanel
platform: windowsforms
control: Editors Package
documentation: ug
---



# Creating GradientPanel

This section will guide you to create a Gradient Panel through designer and also through programmatical approach.

## Through Designer

This section will guide you to create a GradientPanel control.

1. Create a new Visual C# application or VB.NET application in Visual Studio .NET. 
2. Drag-and-drop a GradientPanel control object from the toolbox onto the form and resize it to the desired dimensions.

   ![](GradientPanel-Images/Overview_img363.jpeg)

3. Set background color for GradientPanel through property grid.

   ![](GradientPanel-Images/Overview_img364.jpeg) 



4. Build and run the application.

   ![](GradientPanel-Images/Overview_img365.jpeg) 


> See Also
>
> [Through Code](#through-code)

## Through Code

The following steps will guide you to create a gradient panel programmatically.

1. Create a C# or VB.NET application through Visual studio and switch to the code view.
2. Add the Syncfusion.Shared.Base and Syncfusion.Shared.Windows assembly references.
3. Declare a gradient panel as below.

   ~~~ cs



		private Syncfusion.Windows.Forms.Tools.GradientPanel gradientPanel1;

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		Friend WithEvents GradientPanel1 As Syncfusion.Windows.Forms.Tools.GradientPanel

   ~~~
   {:.prettyprint}

4. In the Initialize function, include the below code to initialize the gradient panel.

   ~~~ cs



		this.gradientPanel1 = new Syncfusion.Windows.Forms.Tools.GradientPanel();

		((System.ComponentModel.ISupportInitialize)(this.gradientPanel1)).BeginInit();

   ~~~
   {:.prettyprint}

   ~~~ vbnet


		Me.GradientPanel1 = New Syncfusion.Windows.Forms.Tools.GradientPanel 

		CType(Me.GradientPanel1, System.ComponentModel.ISupportInitialize).BeginInit()

   ~~~
   {:.prettyprint}

5. Set the properties as follows for the gradient panel and the form.


   ~~~ cs


		// gradientPanel1

		this.gradientPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.PatternStyle.DiagonalCross, System.Drawing.Color.LightBlue, System.Drawing.SystemColors.InactiveCaption);

		this.gradientPanel1.BorderColor = System.Drawing.Color.White;

		this.gradientPanel1.Location = new System.Drawing.Point(37, 32);

		this.gradientPanel1.Name = "gradientPanel1";

		this.gradientPanel1.Size = new System.Drawing.Size(350, 202);

		this.gradientPanel1.TabIndex = 0;

		this.Controls.Add(this.gradientPanel1);

   ~~~
   {:.prettyprint}

   ~~~ vbnet


		'GradientPanel1

		Me.GradientPanel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.PatternStyle.DiagonalCross, System.Drawing.Color.LightSkyBlue, System.Drawing.SystemColors.Window)

		Me.GradientPanel1.BorderColor = System.Drawing.Color.Black

		Me.GradientPanel1.Location = New System.Drawing.Point(64, 48)

		Me.GradientPanel1.Name = "GradientPanel1"

		Me.GradientPanel1.Size = New System.Drawing.Size(296, 208)

		Me.GradientPanel1.TabIndex = 0

		Me.Controls.Add(Me.GradientPanel1)

   ~~~
   {:.prettyprint}

6. Run the application.

   ![](GradientPanel-Images/Overview_img366.jpeg) 

