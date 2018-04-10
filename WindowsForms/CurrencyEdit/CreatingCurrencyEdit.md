---
layout: post
title: Creating CurrencyEdit | WindowsForms | Syncfusion
description: creating currencyedit
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Creating CurrencyEdit


To use a CurrencyEdit control in your application, all you need to do is drag and drop the CurrencyEdit control from the controls toolbox onto your form. You can then set any of its properties through the property grid.

 ![](Overview_images/Overview_img414.png) 



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
   



2. Create an instance of the CurrencyEdit. Add that instance to the Form.
   
   {% tabs %}

   {% highlight c# %}
   
   private Syncfusion.Windows.Forms.Tools.CurrencyEdit currencyEdit1;
   this.currencyEdit1=new Syncfusion.Windows.Forms.Tools.CurrencyEdit();
   this.Controls.Add(this.currencyEdit1);
   
   {% endhighlight %}
   
   {% highlight vbnet %}
   
   Private currencyEdit1 As Syncfusion.Windows.Forms.Tools.CurrencyEdit
   Me.currencyEdit1 = New Syncfusion.Windows.Forms.Tools.CurrencyEdit()
   Me.Controls.Add(Me.currencyEdit1)

   {% endhighlight %}
   
   {% endtabs %}



![](Overview_images/Overview_img415.png) 
