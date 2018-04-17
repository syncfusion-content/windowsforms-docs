---
layout: post
title: Creating-ProgressBarAdv | WindowsForms | Syncfusion
description: creating progressbaradv
platform: WindowsForms
control: ProgressBarAdv
documentation: ug
---

# Creating ProgressBarAdv

This section will give a step-by-step procedure to design a ProgressBarAdv control through designer and also through programming approach.

## Through designer

We can create a ProgressBarAdv through designer using the steps given below.

* The ProgressBarAdv control provides full support for the Windows Forms designer. Drag and drop the ProgressBarAdv control from the toolbox onto your form.

  ![](Overview_images/Overview_img2.jpeg)


* Set the desired properties for the control through the Property grid.

  ![](Overview_images/Overview_img3.jpeg)


* Activate the ProgressBarAdv in the desired place.



## Through code

This step-by-step procedure explains how to create the ProgressBarAdv control programmatically.

* Create a C# or VB.NET application in Visual Studio. Switch to the code view.
* Declare and initialize a ProgressBarAdv as below.

  {% tabs %}

  {% highlight C# %}

        private Syncfusion.Windows.Forms.Tools.ProgressBarAdv progressBarAdv1;

        this.progressBarAdv1 = new Syncfusion.Windows.Forms.Tools.ProgressBarAdv();

        ((System.ComponentModel.ISupportInitialize)(this.progressBarAdv1)).BeginInit();

        this.SuspendLayout();
		
  {% endhighlight %}

  {% highlight VB %}

        Friend WithEvents ProgressBarAdv1 As Syncfusion.Windows.Forms.Tools.ProgressBarAdv

        Me.ProgressBarAdv1 = New Syncfusion.Windows.Forms.Tools.ProgressBarAdv

        CType(Me.ProgressBarAdv1, System.ComponentModel.ISupportInitialize).BeginInit()

        Me.SuspendLayout()

  {% endhighlight %}

  {% endtabs %}

* Set the location property of the control.

  {% tabs %}

  {% highlight C# %}

        this.progressBarAdv1.Location = new System.Drawing.Point(40, 48);
		
  {% endhighlight %}

  {% highlight VB %}

        Me.ProgressBarAdv1.Location = New System.Drawing.Point(40, 48)
		
  {% endhighlight %}

  {% endtabs %}

* Add the control to the form.

  {% tabs %}

  {% highlight C# %}

        this.Controls.Add(this.progressBarAdv1);

        this.Text = "ProgressBarAdv";

        ((System.ComponentModel.ISupportInitialize)(this.progressBarAdv1)).EndInit();

        this.ResumeLayout(false);

  {% endhighlight %}

  {% highlight VB %}

        Me.Controls.Add(Me.ProgressBarAdv1)

        Me.Text = "ProgressBarAdv"

        CType(Me.ProgressBarAdv1, System.ComponentModel.ISupportInitialize).EndInit()

        Me.ResumeLayout(False)

  {% endhighlight %}

  {% endtabs %}

* Run the application.

  ![](Overview_images/Overview_img4.jpeg) 

