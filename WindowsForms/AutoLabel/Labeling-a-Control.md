---
layout: post
title: Creating AutoLabel | WindowsForms | Syncfusion
description: Creating AutoLabel
platform: WindowsForms
control: AutoLabel
documentation: ug
---


# Labeling a Control

The following steps allows you to label a control.

*  Create or open a Windows forms project.
*  Add an AutoLabel Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.
*  Add the control (TextBox) that has to be labeled to the form.
*  Go to the Property grid and select the LabeledControl property.
*  Select the control to be labeled (TextBox) from the dropdown box as shown below.

   ![](AutoLabel-Images/Overview_img3.jpg) 



{% highlight c# %}



		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel1;

		this.autoLabel1 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

		this.autoLabel1.LabeledControl = this.textBox1;



		this.Controls.Add(this.autoLabel1);

{% endhighlight %}


{% highlight vbnet %}
   



		Private autoLabel1 As Syncfusion.Windows.Forms.Tools.AutoLabel

		Me.autoLabel1 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

		Me.autoLabel1.LabeledControl = Me.textBox1



		Me.Controls.Add(Me.autoLabel1)

{% endhighlight %}


*  Run the application.

  ![](AutoLabel-Images/Overview_img4.jpg) 
