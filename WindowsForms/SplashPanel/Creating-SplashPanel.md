---
layout: post
title: Creating-SplashPanel
description: creating splashpanel
platform: windowsforms
control: SplashPanel
documentation: ug
---

# Creating SplashPanel

This section will give a step by step procedure to design a SplashPanel through designer and also through programmatical approach.

## Through Designer

The SplashPanel control provides full support for the Windows Forms designer.

1. Drag-and-drop the SplashPanel control from the toolbox onto the form.

   ![](Overview_images/Overview_img46.jpeg) 



2. Set the properties for the SplashPanel control and also drag and drop any child controls you want to add to the panel. Set the TimerInterval property to specify the period of time, the SplashPanel needs to be visible.
3. Specify the startup location of the SplashPanel using the DesktopAlignment property.
4. Launch the SplashPanel control by calling the ShowSplash() method.
5. You can cancel the SplashPanel by calling the HideSplash() method.

   ![](Overview_images/Overview_img47.jpeg) 

   
## Through Code

To create a SplashPanel programmatically, with a user control in it, follow the below steps.

1. Create a new Visual C# or VB.NET application in Visual Studio .NET.
2. Add the Syncfusion.Shared.Base and Syncfusion.Tools.Windows assemblies to your application.
3. Add the namespaces given below to your form.

   ~~~ cs

        using Syncfusion.Windows.Forms.Tools;

		using Syncfusion.Drawing;

		using Syncfusion.Windows.Forms.Tools;

		using Syncfusion.Drawing;

		using System.Reflection;

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Imports Syncfusion.Windows.Forms.Tools

		Imports Syncfusion.Drawing

		Imports Syncfusion.Windows.Forms.Tools

		Imports Syncfusion.Drawing

		Imports System.Reflection

   ~~~
   {:.pretty-print }

4. Declare the SplashPanel and Button control.

   ~~~ cs

        private Syncfusion.Windows.Forms.Tools.SplashPanel splashPanel1;
		
		private System.Windows.Forms.Button button1;

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Friend WithEvents splashPanel1 As Syncfusion.Windows.Forms.Tools.SplashPanel

		Friend WithEvents button1 As System.Windows.Forms.Button

   ~~~
   {:.pretty-print }

5. Initialize the controls and make it visible.

   ~~~ cs

        this.splashPanel1 = new Syncfusion.Windows.Forms.Tools.SplashPanel();
		
		this.button1 = new System.Windows.Forms.Button();

		this.splashPanel1.SuspendLayout();

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Me.splashPanel1 = New Syncfusion.Windows.Forms.Tools.SplashPanel

		Me.button1 = New System.Windows.Forms.Button

		Me.splashPanel1.SuspendLayout()

   ~~~
   {:.pretty-print }

6. Set the properties for the SplashPanel and Button control.

   ~~~ cs

        // Set the properties for SplashPanel.

		this.splashPanel1.AnimationSpeed = 10;

		this.splashPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.SystemColors.Highlight, System.Drawing.SystemColors.HighlightText);

		this.splashPanel1.Controls.Add(this.button1);

		this.splashPanel1.DesktopAlignment = Syncfusion.Windows.Forms.Tools.SplashAlignment.Center;

		this.splashPanel1.DiscreetLocation = new System.Drawing.Point(0, 0);

		this.splashPanel1.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));

		this.splashPanel1.ForeColor = System.Drawing.Color.Pink;

		this.splashPanel1.Location = new System.Drawing.Point(16, 16);

		this.splashPanel1.Name = "splashPanel1";

		this.splashPanel1.ShowAnimation = true;

		this.splashPanel1.SuspendAutoCloseWhenMouseOver = false;

		this.splashPanel1.TabIndex = 0;

		this.splashPanel1.TimerInterval = 5000;

		// Set the properties for Button control.

		this.button1.BackColor = System.Drawing.Color.DimGray;

		this.button1.Location = new System.Drawing.Point(56, 40);

		this.button1.Name = "button1";

		this.button1.Size = new System.Drawing.Size(96, 23);

		this.button1.TabIndex = 0;

		this.button1.Text = "SplashPanel";

		// Add the SplashPanel to the Form.

		this.Controls.Add(this.splashPanel1);

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        // Set the properties for SplashPanel.

		this.splashPanel1.AnimationSpeed = 10;

		this.splashPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.SystemColors.Highlight, System.Drawing.SystemColors.HighlightText);

		this.splashPanel1.Controls.Add(this.button1);

		this.splashPanel1.DesktopAlignment = Syncfusion.Windows.Forms.Tools.SplashAlignment.Center;

		this.splashPanel1.DiscreetLocation = new System.Drawing.Point(0, 0);

		this.splashPanel1.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));

		this.splashPanel1.ForeColor = System.Drawing.Color.Pink;

		this.splashPanel1.Location = new System.Drawing.Point(16, 16);

		this.splashPanel1.Name = "splashPanel1";

		this.splashPanel1.ShowAnimation = true;

		this.splashPanel1.SuspendAutoCloseWhenMouseOver = false;

		this.splashPanel1.TabIndex = 0;

		this.splashPanel1.TimerInterval = 5000;

		// Set the properties for Button control.

		this.button1.BackColor = System.Drawing.Color.DimGray;

		this.button1.Location = new System.Drawing.Point(56, 40);

		this.button1.Name = "button1";

		this.button1.Size = new System.Drawing.Size(96, 23);

		this.button1.TabIndex = 0;

		this.button1.Text = "SplashPanel";

		// Add the SplashPanel to the Form.

		this.Controls.Add(this.splashPanel1);

   ~~~
   {:.pretty-print }

7. Call and define the ShowSplash() method as follows.

   ~~~ cs

        // In the Form properties, add the below code before resuming the layout.

		this.ShowSplash(false);

		// Define the ShowSplash() method.

		private void ShowSplash(bool isModal)
		{

		Point pt = Point.Empty;

		SplashPanel currentPanel = this.splashPanel1;

		int interval = 5000;

		currentPanel = this.splashPanel1;

		if(currentPanel.DesktopAlignment == SplashAlignment.Custom)

		pt = Control.MousePosition;

		currentPanel.ShowSplash(pt, this, isModal);

		}

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        ' In the Form properties, add the below code before resuming the layout.

		Me.ShowSplash(False)

		' Define the ShowSplash() method.

		Private Sub ShowSplash(ByVal isModal As Boolean)

		Dim pt As Point = Point.Empty

		Dim currentPanel As SplashPanel = Me.SplashPanel1

		Dim interval As Integer = 5000

		currentPanel = Me.SplashPanel1

		currentPanel.TimerInterval = interval

		If currentPanel.DesktopAlignment = SplashAlignment.Custom Then

		pt = Control.MousePosition

		End If

		currentPanel.ShowSplash(pt, Me, isModal)

		End Sub

   ~~~
   {:.pretty-print }

8. Run the application.

   ![](Overview_images/Overview_img48.jpeg) 