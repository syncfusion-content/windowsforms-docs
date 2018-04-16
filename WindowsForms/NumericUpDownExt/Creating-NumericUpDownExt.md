---
layout: post
title: Creating-NumericUpDownExt | WindowsForms | Syncfusion
description: creating numericupdownext
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Creating NumericUpDownExt

This section will give a step-by-step procedure to design a NumericUpDownExt control through designer and also through programming approach.

## Through designer

1. Create or open a Windows Forms project.
2. Click on the NumericUpDownExt Control in the toolbox and add it to the form by dragging and dropping it onto the form or double clicking the control.

   ![](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img1.png)

3. Run the application. The NumericUpDownExt will allow you to display numeric values by clicking on the up and down buttons.

   ![](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img2.png)

## Through programming approach

1. Declare an instance of the NumericUpDownExt control.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.NumericUpDownExt numericUpDownExt1;

{% endhighlight %}

{% highlight vb %}

Private numericUpDownExt1 As Syncfusion.Windows.Forms.Tools.NumericUpDownExt

{% endhighlight %}
{% endtabs %}

2. Initialize the control.

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1 = New Syncfusion.Windows.Forms.Tools.NumericUpDownExt()

{% endhighlight %}
{% endtabs %}

3. Set the properties of the NumericUpDownExt control.

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.Location = new System.Drawing.Point(70, 29);
this.numericUpDownExt1.Name = "numericUpDownExt1";
this.numericUpDownExt1.Size = new System.Drawing.Size(84, 20);

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.Location = New System.Drawing.Point(70, 29)
Me.numericUpDownExt1.Name = "numericUpDownExt1"
Me.numericUpDownExt1.Size = New System.Drawing.Size(84, 20)

{% endhighlight %}
{% endtabs %}

4. Add the control to the form.

{% tabs %}
{% highlight c# %}

this.Controls.Add(this.numericUpDownExt1);

{% endhighlight %}

{% highlight vb %}

Me.Controls.Add(Me.numericUpDownExt1)

{% endhighlight %}
{% endtabs %}

5. Run the application. You will be able to see the NumericUpDownExt control in your form.

![](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img3.png)

