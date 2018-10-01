---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating currency textbox
platform: WindowsForms
control: CurrencyTextbox
documentation: ug
---

# Getting Started


CurrencyTextBox provides full support for the Windows Forms designer. Just drag and drop CurrencyTextBox from the toolbox, onto the form.

![](Overview_images/Overview_img489.png) 



It can be created programmatically as follows.

1. Include the required namespace.

   {% tabs %}

   {% highlight c# %}

   using Syncfusion.Windows.Forms.Tools;

   {% endhighlight %}
   
   {% highlight vbnet %}

   Imports Syncfusion.Windows.Forms.Tools

   {% endhighlight %}

   {% endtabs %}
   
   

2. Create an instance of the CurrencyTextBox. Add that instance to the Form.

   {% tabs %}

   {% highlight c# %}

    private Syncfusion.Windows.Forms.Tools.CurrencyTextBox currencyTextBox1;

	this.currencyTextBox2=new Syncfusion.Windows.Forms.Tools.CurrencyTextBox();

	this.Controls.Add(this.currencyTextBox1);

   {% endhighlight %}
   
    {% highlight vbnet %}  

    Private currencyTextBox1 As Syncfusion.Windows.Forms.Tools.CurrencyTextBox

	Me.currencyTextBox2 = New Syncfusion.Windows.Forms.Tools.CurrencyTextBox()

	Me.Controls.Add(Me.currencyTextBox1)

   {% endhighlight %}
   
   {% endtabs %}