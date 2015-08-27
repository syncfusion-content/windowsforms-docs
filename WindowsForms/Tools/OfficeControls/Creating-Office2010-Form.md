---
layout: post
title: Creating-Office2010-Form
description: Creating Office2010 Form
platform: Windows Forms
control: Tools 
documentation: ug
---

# Creating Office2010 Form

The default forms can be changed to an Office 2010 form by following these steps:

1. Open a Visual Studio project.
2. Add the assembly Syncfusion.Shared.Base in the reference. (Right-click the References in the Solution Explorer and click Add Reference to add the assembly.
3. In the form's code editor, add the namespace.
  
   ~~~ C#

		using Syncfusion.Windows.Forms;

   ~~~
   {:.prettyprint %}

   ~~~ vbnet

		Imports Syncfusion.Windows.Forms

   ~~~
   {:.prettyprint}

4. Now change your class to inherit the Office2010 Form instead of the default form as follows:
 
   ~~~ C#
 

		public partial class Form1 : Office2010Form

   ~~~ 
   {:.prettyprint}

   ~~~ vbnet

		Partial Public Class Form1 Inherits Office2010Form
		
   ~~~
   {:.prettyprint}
   
![](Office_images/office_img8.png)
   
_Figure 1148: Office2010 Form_