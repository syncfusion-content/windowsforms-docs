---
layout: post
title: Creating AutoLabel | WindowsForms | Syncfusion
description: Creating AutoLabel
platform: WindowsForms
control: AutoLabel
documentation: ug
---

# Creating AutoLabel

The AutoLabel control can be created in the following ways.

## Through Designer

The following steps illustrate how to create an AutoLabel control through Designer.

* Create or open a Windows Forms project.
* Add an AutoLabel Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.

  ![](AutoLabel-Images/Overview_img5.jpg) 



* Set the desired properties for the control through the Property grid.
* Run the application.

  ![](AutoLabel-Images/Overview_img6.jpg) 


## Through Code

The following steps illustrate how to create an AutoLabel control programmatically.

*  Create a C# or VB.NET application though Visual Studio.
*  Add the required assembly references.
*  Include the required namespace.

{% highlight c# %}



		using Syncfusion.Windows.Forms.Tools;
		
{% endhighlight %}


{% highlight vbnet %}



		Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

*  Declare the AutoLabel control.

{% highlight c# %}

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel1;

{% endhighlight %}


{% highlight vbnet %}



		Private autoLabel1 As Syncfusion.Windows.Forms.Tools.AutoLabel
   
{% endhighlight %}


*  Initialize the control.

{% highlight c# %}


		this.autoLabel1 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

{% endhighlight %}

{% highlight vbnet %}


		Me.autoLabel1 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

{% endhighlight %}

*  Set the properties for the AutoLabel control and add it to your form.

{% highlight c# %}



		this.autoLabel1.Text = "autoLabel1";

		this.autoLabel1.BackColor = System.Drawing.Color.BurlyWood;

		this.autoLabel1.ForeColor = System.Drawing.Color.SaddleBrown;

		this.autoLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

		this.autoLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;



		// Add the AutoLabel control to the Form.

		this.Controls.Add(this.autoLabel1);
  
{% endhighlight %}


{% highlight vbnet %}



		Me.autoLabel1.Text = "autoLabel1"

		Me.autoLabel1.BackColor = System.Drawing.Color.BurlyWood

		Me.autoLabel1.ForeColor = System.Drawing.Color.SaddleBrown

		Me.autoLabel1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0)))

		Me.autoLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter



		' Add the AutoLabel control to the Form.

		Me.Controls.Add(Me.autoLabel1)

{% endhighlight %}

*  Run the application.

  ![](AutoLabel-Images/Overview_img6.jpg)

