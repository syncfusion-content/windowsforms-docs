---
layout: post
title: Through-Code
description: through code
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Through Code

A SplashControl can be created through code by following the below steps.

1. Create a C# or VB.NET application though Visual Studio.
2. Add the required assembly references.
3. Declare and initialize a SplashControl using the below code.

   ~~~ c#
   
        private Syncfusion.Windows.Forms.Tools.SplashControl splashControl1;
		
		this.splashControl1 = new Syncfusion.Windows.Forms.Tools.SplashControl();
		
		this.SuspendLayout();

   ~~~
   {:.pretty-print }

   ~~~ vbnet
   
        Friend WithEvents SplashControl1 As Syncfusion.Windows.Forms.Tools.SplashControl
		
		Me.splashControl1 = New Syncfusion.Windows.Forms.Tools.SplashControl() 
		
		Me.SuspendLayout()

   ~~~
   {:.pretty-print }

4. Set the following properties.

   ~~~ c#
   
        this.splashControl1.CustomSplashPanel = null;
		
		this.splashControl1.HostForm = this;
		
		this.splashControl1.HostFormWindowState = System.Windows.Forms.FormWindowState.Normal;
		
		this.splashControl1.TimerInterval = 3000;

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Me.SplashControl1.CustomSplashPanel = Nothing

		Me.SplashControl1.HostForm = Me

		Me.SplashControl1.HostFormWindowState = System.Windows.Forms.FormWindowState.Normal

		Me.SplashControl1.TimerInterval = 3000

   ~~~
   {:.pretty-print }

5. Run the application.

   ![](Overview_images/Overview_img34.jpeg) 


See Also 

