---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating calculator control
platform: WindowsForms
control: Calculator
documentation: ug
---

# Getting Started

The Calculator control can be available to the designer by just dragging-and-dropping the Calculator control from the toolbox onto the form. 

![](Overview_images/Overview_img111.jpeg) 

It can be created programmatically using the below steps.

1. Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. Declare and create an instance of the Calculator control class.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.CalculatorControl calculatorControl1;

// Create an instance of the Calculator control
this.calculatorControl1 = new CalculatorControl();

{% endhighlight %}

{% highlight vb %}

Private calculatorControl1 As Syncfusion.Windows.Forms.Tools.CalculatorControl

' Create an instance of the Calculator control
Me.calculatorControl1 = New CalculatorControl()

{% endhighlight %}
{% endtabs %}

3. As the final step, add the Calculator control to the form as follows.

{% tabs %}
{% highlight c# %}

// Add the CalculatorControl control to the form.
this.Controls.Add(this.calculatorControl1);
this.calculatorControl1.Visible=true;

{% endhighlight %}

{% highlight vb %}

' Add the CalculatorControl control to the form.
Me.Controls.Add(Me.calculatorControl1)
Me.calculatorControl1.Visible=True

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img112.jpeg) 
