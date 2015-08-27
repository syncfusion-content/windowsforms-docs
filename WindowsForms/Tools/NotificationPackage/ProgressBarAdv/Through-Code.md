---
layout: post
title: Through-Code
description: through code
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Through Code

This step-by-step procedure explains how to create the ProgressBarAdv control programmatically.

* Create a C# or VB.NET application in Visual Studio. Switch to the code view.
* Declare and initialize a ProgressBarAdv as below.

  ~~~ c#

        private Syncfusion.Windows.Forms.Tools.ProgressBarAdv progressBarAdv1;

        this.progressBarAdv1 = new Syncfusion.Windows.Forms.Tools.ProgressBarAdv();

        ((System.ComponentModel.ISupportInitialize)(this.progressBarAdv1)).BeginInit();

        this.SuspendLayout();
		
  ~~~
  {:.pretty-print }

  
  ~~~ vbnet

        Friend WithEvents ProgressBarAdv1 As Syncfusion.Windows.Forms.Tools.ProgressBarAdv

        Me.ProgressBarAdv1 = New Syncfusion.Windows.Forms.Tools.ProgressBarAdv

        CType(Me.ProgressBarAdv1, System.ComponentModel.ISupportInitialize).BeginInit()

        Me.SuspendLayout()

  ~~~
  {:.pretty-print }

* Set the Location property of the control.

  ~~~ c#

        this.progressBarAdv1.Location = new System.Drawing.Point(40, 48);
		
  ~~~
  {:.pretty-print }

  ~~~ vbnet

        Me.ProgressBarAdv1.Location = New System.Drawing.Point(40, 48)
		
  ~~~
  {:.pretty-print }

* Add the control to the form.

  ~~~ c#

        this.Controls.Add(this.progressBarAdv1);

        this.Text = "ProgressBarAdv";

        ((System.ComponentModel.ISupportInitialize)(this.progressBarAdv1)).EndInit();

        this.ResumeLayout(false);

  ~~~
  {:.pretty-print }

  ~~~ vbnet

        Me.Controls.Add(Me.ProgressBarAdv1)

        Me.Text = "ProgressBarAdv"

        CType(Me.ProgressBarAdv1, System.ComponentModel.ISupportInitialize).EndInit()

        Me.ResumeLayout(False)

  ~~~
  {:.pretty-print }

* Run the application.

  ![](Overview_images/Overview_img4.jpeg) 

See Also

