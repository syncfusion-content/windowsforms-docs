---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating double textbox
platform: WindowsForms
control: DoubleTextBox
documentation: ug
---
# Getting Started

To use a DoubleTextBox control in your application, all you need to do is drag and drop the DoubleTextBox control from the 
controls toolbox onto your form.


![](DoubleTextBox-images/DoubleTextBox_img2.png)
 

It can be created programmatically as follows.

1. Add Shared.Base, Shared.Windows, Tools.Base and Tools.Windows assembly references and include the required namespace.

    {% tabs %}

    {% highlight c# %}

	using Syncfusion.Windows.Forms.Tools;

    {% endhighlight %}

    {% highlight vbnet %}

	Imports Syncfusion.Windows.Forms.Tools

    {% endhighlight %}

    {% endtabs %}

 
2. Create an instance of the DoubleTextBox. Add that instance to the Form.

    {% tabs %}

    {% highlight c# %}

	this.doubleTextBox1=new Syncfusion.Windows.Forms.Tools.DoubleTextBox();

	this.Controls.Add(this.doubleTextBox1);

    {% endhighlight %}

    {% highlight vbnet %}

	Me.doubleTextBox1 = New Syncfusion.Windows.Forms.Tools.DoubleTextBox()

	Me.Controls.Add(Me.doubleTextBox1)

    {% endhighlight %}

    {% endtabs %}


 
![](DoubleTextBox-images/DoubleTextBox_img3.png)






