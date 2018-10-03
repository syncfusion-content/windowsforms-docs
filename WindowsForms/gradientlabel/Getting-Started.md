---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: Creating GradientLabel
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Getting Started

The GradientLabel control can be created in the following ways.

## Through Designer

To create a GradientLabel control through designer,

* Create or open a Windows Forms project.
* Add a GradientLabel Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.

  ![](GradientLabel-Images/Overview_img600.jpeg) 

* Set the desired properties for the control through theProperty grid.
* Run the application.

  ![](GradientLabel-Images/Overview_img601.jpeg) 

{% seealso %}

[Through Code](#through-code)

{% endseealso %}

## Through Code

GradientLabel can be created programmatically as detailed below.

*  Create a C# or VB.NET application though Visual Studio.
*  Add the required assembly references.
*  Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

*  Declare the GradientLabel control.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.GradientLabel gradientLabel1;
		
{% endhighlight %}

{% highlight vb %}

Private gradientLabel1 As Syncfusion.Windows.Forms.Tools.GradientLabel

{% endhighlight %}
{% endtabs %}

*  Initialize the control.

{% tabs %}
{% highlight c# %}

this.gradientLabel1 = new Syncfusion.Windows.Forms.Tools.GradientLabel();

{% endhighlight %}

{% highlight vb %}

Me.gradientLabel1 = New Syncfusion.Windows.Forms.Tools.GradientLabel()

{% endhighlight %}
{% endtabs %}

*  Set the properties for the GradientLabel control and add it to your form.

{% tabs %}
{% highlight c# %}

this.gradientLabel1.BorderStyle = System.Windows.Forms.Border3DStyle.Sunken;
this.gradientLabel1.ForeColor = System.Drawing.SystemColors.Info;
this.gradientLabel1.Text = "Syncfusion Control";

// Add the GradientLabel control to the Form.
this.Controls.Add(this.gradientLabel1);
		
{% endhighlight %}

{% highlight vb %}

Me.gradientLabel1.BorderStyle = System.Windows.Forms.Border3DStyle.Sunken
Me.gradientLabel1.ForeColor = System.Drawing.SystemColors.Info
Me.gradientLabel1.Text = "Syncfusion Control"

' Add the GradientLabel control to the Form.
Me.Controls.Add(Me.gradientLabel1)

{% endhighlight %}
{% endtabs %}

* Run the application.

  ![](GradientLabel-Images/Overview_img602.jpeg) 
