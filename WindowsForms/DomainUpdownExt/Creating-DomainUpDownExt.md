---
layout: post
title: Creating DomainUpDownExt
description: creating domainupdownext
platform: WindowsForms
control: DomainUpdownExt 
documentation: ug
---
# Creating DomainUpDownExt


To use a DomainUpDownExt control in your application, all you need to do is drag and drop the DomainUpDownExt control from the controls toolbox onto your form.

![](DomainUpdownExt_images/Overview_img420.png)



You can add items in the String Collection Editor of DomainUpDownExt control and Click Ok.

![](DomainUpdownExt_images/Overview_img421.png) 



It can be created programmatically as follows.

1. Add Shared.Base, Shared.Windows, Tools.Base and Tools.Windows assembly references and include the required namespace.

   ~~~ cs

		usingSyncfusion.Windows.Forms.Tools;
	
   ~~~
   {:.prettyprint }

   ~~~ vbnet
   
    ImportsSyncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }


2. Create an instance of the DomainUpDownExt. Add that instance to the Form.

   ~~~ cs


		privateSyncfusion.Windows.Forms.Tools.DomainUpDownExt domainUpDownExt1;

		this.domainUpDownExt1=newSyncfusion.Windows.Forms.Tools.DomainUpDownExt();



		// Add items.

		this.domainUpDownExt1.Items.Add("One");

		this.domainUpDownExt1.Items.Add("Two");

		this.domainUpDownExt1.Items.Add("Three");

		this.domainUpDownExt1.Items.Add("Four");

		this.domainUpDownExt1.Items.Add("Five");



		this.Controls.Add(this.domainUpDownExt1);

   ~~~
   {:.prettyprint }

   ~~~ vbnet
   
		PrivatedomainUpDownExt1AsSyncfusion.Windows.Forms.Tools.DomainUpDownExt

		Me.domainUpDownExt1 =NewSyncfusion.Windows.Forms.Tools.DomainUpDownExt()



		' Add items.

		Me.domainUpDownExt1.Items.Add("One")

		Me.domainUpDownExt1.Items.Add("Two")

		Me.domainUpDownExt1.Items.Add("Three")

		Me.domainUpDownExt1.Items.Add("Four")

		Me.domainUpDownExt1.Items.Add("Five")

		Me.Controls.Add(Me.domainUpDownExt1)

   ~~~
   {:.prettyprint }


   ![](DomainUpdownExt_images/Overview_img422.png)
   
            
