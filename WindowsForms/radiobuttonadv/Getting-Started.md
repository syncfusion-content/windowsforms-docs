---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating radiobuttonadv
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Getting Started

The RadioButtonAdv control can be created in the following ways.

### Through designer

The following steps illustrate how to create a RadioButtonAdv control through designer.

* Create or open a Windows Forms project.
* Add a RadioButtonAdv Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.

![](Overview_images/Overview_img629.jpeg)

* Set the desired properties for the control through theProperty grid.
* Run the application.

 ![](Overview_images/Overview_img630.jpeg) 

{%seealso%}

Through Code

{%endseealso%}

### Through code

The RadioButtonAdv control can be created programmatically as detailed below:

* Create a C# or VB.NET application though Visual Studio.
* Add the required assembly references.
* Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

* Create an instance of the RadioButtonAdv control class.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.RadioButtonAdv radioButtonAdv1;
this.radioButtonAdv1 = new Syncfusion.Windows.Forms.Tools.RadioButtonAdv();

{% endhighlight %}

{% highlight vb %}

Private radioButtonAdv1 As Syncfusion.Windows.Forms.Tools.RadioButtonAdv
Me.radioButtonAdv1 = New Syncfusion.Windows.Forms.Tools.RadioButtonAdv()

{% endhighlight %}
{% endtabs %}

* Set the properties and add the RadioButtonAdv control to the form.

{% tabs %}
{% highlight c# %}

this.radioButtonAdv1.Text = "radioButtonAdv1";
this.radioButtonAdv1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
this.radioButtonAdv1.ForeColor = System.Drawing.Color.MistyRose;
this.radioButtonAdv1.BackColor = System.Drawing.Color.RosyBrown;

// Add the RadioButtonAdv control to the Form.
this.Controls.Add(this.radioButtonAdv1);

{% endhighlight %}

{% highlight vb %}

Me.radioButtonAdv1.Text = "radioButtonAdv1"
Me.radioButtonAdv1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0)))
Me.radioButtonAdv1.ForeColor = System.Drawing.Color.MistyRose
Me.radioButtonAdv1.BackColor = System.Drawing.Color.RosyBrown

// Add the RadioButtonAdv control to the Form.
Me.Controls.Add(Me.radioButtonAdv1)

{% endhighlight %}
{% endtabs %}

 ![](Overview_images/Overview_img631.jpeg)

{%seealso%}

Through Designer

{%endseealso%}