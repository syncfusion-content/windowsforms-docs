---
layout: post
title: Creating CurrencyEdit
description: creating currencyedit
platform: windowsforms
control: Editors Package
documentation: ug
---

# Creating CurrencyEdit


To use a CurrencyEdit control in your application, all you need to do is drag and drop the CurrencyEdit control from the controls toolbox onto your form. You can then set any of its properties through the property grid.

 ![](Overview_images/Overview_img414.png) 



It can be created programmatically as follows.

1. Include the required namespace.
   
   ~~~ cs
   
   using Syncfusion.Windows.Forms.Tools;
   
   ~~~
   {:.prettyprint}
   
   ~~~vbnet
   
   Imports Syncfusion.Windows.Forms.Tools
   
   ~~~
   {:.prettyprint}



2. Create an instance of the CurrencyEdit. Add that instance to the Form.
   
   ~~~ cs
   private Syncfusion.Windows.Forms.Tools.CurrencyEdit currencyEdit1;
   this.currencyEdit1=new Syncfusion.Windows.Forms.Tools.CurrencyEdit();
   this.Controls.Add(this.currencyEdit1);
   ~~~
   {:.prettyprint}
   
   
   ~~~vbnet
   Private currencyEdit1 As Syncfusion.Windows.Forms.Tools.CurrencyEdit
   Me.currencyEdit1 = New Syncfusion.Windows.Forms.Tools.CurrencyEdit()
   Me.Controls.Add(Me.currencyEdit1)
   ~~~
   {:.prettyprint}



![](Overview_images/Overview_img415.png) 
