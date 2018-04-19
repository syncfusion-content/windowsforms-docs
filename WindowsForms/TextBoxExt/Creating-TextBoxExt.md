---
layout: post
title: Creating-TextBoxExt | WindowsForms | Syncfusion
description: creating textboxext
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Creating TextBoxExt

This section will give a step-by-step procedure to design a TextBoxExt control through designer and also through programming approach.

## Through designer

1. Create or open a Windows Forms project.
2. Click on the TextBoxExt Control in the toolbox and add it to the form by dragging and dropping it onto the form or double clicking the control.

   ![](Creating-TextBoxExt_images/Creating-TextBoxExt_img1.png)

3. Run the application. The TextBoxExt displayed will allow you to enter text.

   ![](Creating-TextBoxExt_images/Creating-TextBoxExt_img2.png)

### Through programming approach

1. Declare an instance of the TextBoxExt control.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.TextBoxExt textBoxExt1;

{% endhighlight %}

{% highlight vb %}

Private textBoxExt1 As Syncfusion.Windows.Forms.Tools.TextBoxExt

{% endhighlight %}
{% endtabs %}

2. Initialize the control.

{% tabs %}
{% highlight c# %}

this.textBoxExt1 = new Syncfusion.Windows.Forms.Tools.TextBoxExt();

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1 = New Syncfusion.Windows.Forms.Tools.TextBoxExt()

{% endhighlight %}
{% endtabs %}

3. Add the control to the form.

{% tabs %}
{% highlight c# %}

this.Controls.Add(this.textBoxExt1);

{% endhighlight %}

{% highlight vb %}

Me.Controls.Add(Me.textBoxExt1)

{% endhighlight %}
{% endtabs %}

4. Run the application. You will be able to see the TextBoxExt control in your form. After creating the TextBoxExt you can use it just like using the Windows Forms' TextBox control.

![](Creating-TextBoxExt_images/Creating-TextBoxExt_img3.png)
