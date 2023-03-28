---
layout: post
title: Overview of Syncfusion license registration - Syncfusion
description: Learn here about how to register Syncfusion Windows Forms license key for Windows Forms application for license validation.
platform: WindowsForms
control: Essential Studio
documentation: ug
---


# Register Syncfusion License key in Windows Forms application

The generated license key is just a string that needs to be registered before any Syncfusion control is initiated. The following code is used to register the license.

{% tabs %}
{% highlight c# %}
Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("YOUR LICENSE KEY");
{% endhighlight %}
{% endtabs %}

N> * Place the license key between double quotes.  Also, ensure that Syncfusion.Licensing.dll is referenced in your project where the license key is being registered.
* Syncfusion license validation is done offline during application execution and does not require internet access.  Apps registered with a Syncfusion license key can be deployed on any system that does not have an internet connection.

### Windows Forms

You can register the licensing code in static void main method before calling **Application.Run()** method in C#. In Visual Basic, register the licensing code in **Application.designer.vb** file constructor.

N> * If the **Application.Designer.vb** file is not included by default in the project, it will be generated in the **My Project** folder in your VB project directory.
* Ensure to register the license key at the beginning of the application's entry point class.

{% tabs %}
{% highlight c# %}
static void Main()
{
	//Register Syncfusion license
	Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("YOUR LICENSE KEY");
	
    Application.EnableVisualStyles();
    Application.SetCompatibleTextRenderingDefault(false);
    Application.Run(new Form1());
}
{% endhighlight %}

{% highlight vb %}
Public Sub New()
		MyBase.New(Global.Microsoft.VisualBasic.ApplicationServices.AuthenticationMode.Windows)
		'Register Syncfusion License
		Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("YOUR LICENSE KEY")
		Me.IsSingleInstance = False
		Me.EnableVisualStyles = True
		Me.SaveMySettingsOnExit = True
		Me.ShutdownStyle = Global.Microsoft.VisualBasic.ApplicationServices.ShutdownMode.AfterMainFormCloses
End Sub
{% endhighlight %}

{% endtabs %}

By default, when converting a C# project to a VB project, a program.vb file is generated. If you choose to set the entry point in the program.vb file, it is mandatory to register the license key in the same file.

{% tabs %}
{% highlight Program.vb %}
Public Sub Main()
	    'Register Syncfusion License key
        Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("YOUR LICENSE KEY")
        Application.EnableVisualStyles()
        Application.SetCompatibleTextRenderingDefault(False)
        Application.Run(New Form1)
	End Sub
{% endhighlight %}

{% endtabs %}