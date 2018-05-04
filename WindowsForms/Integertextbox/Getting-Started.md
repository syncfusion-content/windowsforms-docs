---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating integertextbox
platform: WindowsForms
control: Tools
documentation: ug
---

# Getting Started

This section will give a step by step procedure to design an IntegerTextBox control through designer and also through programmatic approach.

## Through designer

1. Create or open a Windows Forms project.
2. Click on the IntegerTextBox Control in the toolbox and add it to the form by dragging and dropping it onto the form or double clicking the control.
   
   ![](Overview_images/Overview_img439.png) 

3. Run the application. The IntegerTextBox that allows you to enter only integer values, will be displayed as given below.

   ![](Overview_images/Overview_img440.png) 
   
## Through programmatic approach

The IntegerTextBox control can be created programming through code as detailed below.

1. Include the required namespace.

{% tabs %}
{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

2. Create an instance of the IntegerTextBox control.

{% tabs %}

{% highlight C# %}

// Create IntegerTextBox control.
private Syncfusion.Windows.Forms.Tools.IntegerTextBox integerTextBox1;
this.integerTextBox1=new Syncfusion.Windows.Forms.Tools.IntegerTextBox();
  
{% endhighlight %}

{% highlight VB %}

' Create IntegerTextBox control.
Private integerTextBox1 As Syncfusion.Windows.Forms.Tools.IntegerTextBox
Me.integerTextBox1 = New Syncfusion.Windows.Forms.Tools.IntegerTextBox()

{% endhighlight %}
 
{% endtabs %}

3. Specify its value and size.

{% tabs %}

{% highlight C# %}

this.integerTextBox1.IntegerValue = ((long)(7));
this.integerTextBox1.Size = new System.Drawing.Size(144, 20); 

{% endhighlight %}
   
{% highlight VB %}

Me.integerTextBox1.IntegerValue = (CLng(7))
Me.integerTextBox1.Size = New System.Drawing.Size(144, 20)

{% endhighlight %}

{% endtabs %}

4. Add the IntegerTextBox control to the form.

{% tabs %}

{% highlight C# %}

this.Controls.Add(this.integerTextBox1);

{% endhighlight %}

{% highlight VB %}
   
Me.Controls.Add(Me.integerTextBox1)
       
{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img441.png) 
