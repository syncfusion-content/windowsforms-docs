---
layout: post
title: Creating-CheckBoxAdv | WindowsForms | Syncfusion
description: creating checkboxadv
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Creating CheckBoxAdv

The CheckBoxAdv control can be created in the following ways.

## Through Designer

The following steps illustrate how to create a CheckBoxAdv control through designer.

* Create or open a Windows Forms project.
* Add a CheckBoxAdv Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.

![](Overview_images/Overview_img607.jpeg)

* Set the desired properties for the control through theProperty grid.
* Run the application.

![](Overview_images/Overview_img608.jpeg)


{% seealso %}
[Through Code](#through-code)
{% endseealso %}

## Through Code

The CheckBoxAdv control can be created programmatically as detailed below:

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

* Create an instance of the CheckBoxAdv control class.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.CheckBoxAdv checkBoxAdv1;
this.checkBoxAdv1 = new Syncfusion.Windows.Forms.Tools.CheckBoxAdv();

{% endhighlight %}

{% highlight vb %}

Private checkBoxAdv1 As Syncfusion.Windows.Forms.Tools.CheckBoxAdv
Me.checkBoxAdv1 = New Syncfusion.Windows.Forms.Tools.CheckBoxAdv()

{% endhighlight %}
{% endtabs %}

* Set the properties and add the CheckBoxAdv control to the form.

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.Text = "checkBoxAdv1";
this.checkBoxAdv1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
this.checkBoxAdv1.ForeColor = System.Drawing.Color.OliveDrab;
this.checkBoxAdv1.BackColor = System.Drawing.Color.Beige;

// Add the CheckBoxAdv control to the Form.
this.Controls.Add(this.radioButtonAdv1);

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.Text = "checkBoxAdv1"
Me.checkBoxAdv1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0)))
Me.checkBoxAdv1.ForeColor = System.Drawing.Color.OliveDrab
Me.checkBoxAdv1.BackColor = System.Drawing.Color.Beige

// Add the CheckBoxAdv control to the Form.
Me.Controls.Add(Me.radioButtonAdv1)

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img609.jpeg)


{% seealso %}
[Through Designer](#through-designer)
{% endseealso %}
