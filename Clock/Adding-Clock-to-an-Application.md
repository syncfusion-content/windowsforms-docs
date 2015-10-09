---
layout: post
title: Adding-Clock-to-an-Application | WindowsForms | Syncfusion
description: adding clock to an application
platform: WindowsForms
control: Clock-Control-for-Windows-Forms
documentation: ug
---

# Adding Clock to an Application

## Adding Through visual studio

Follow the steps given below to add the Clock control to an application through Visual Studio:

1. Create a new Windows Form application in Visual Studio. 
2. Drag Clock from the Toolbox tab to the designer.

   ![](Overview_images/Overview_img94.png) 

3. Clock control is added.
4. Customize the properties of Clock in the Properties Window. 

## Adding through Code

Follow the steps given below to add the Clock control to an application through code:

1. Include the Tools Windows namespace as given in the following code:

   ~~~ cs

        using Syncfusion.Windows.Forms.Tools;
		
   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }

2. Create an instance of Clock control and add it to the form as given in the following code:

   ~~~ cs

        Syncfusion.Windows.Forms.Tools.Clock clock1;

		this.clock1 = new Syncfusion.Windows.Forms.Tools.Clock();

		this.Controls.Add(clock1);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Dim clock1 As Syncfusion.Windows.Forms.Tools.clock

		Me.clock1 = New Syncfusion.Windows.Forms.Tools.clock()

		Me.Controls.Add(clock1)

   ~~~
   {:.prettyprint }

