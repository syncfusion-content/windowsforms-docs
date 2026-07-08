---
layout: post
title: Getting Started with Windows Forms Syntax Editor | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Syntax Editor control and more details.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Getting Started with Windows Forms Syntax Editor

This section explains how to create an interactive code editor application like the Microsoft Visual Studio Editor by using the EditControl.

> **Prerequisites**
> - Visual Studio 2017 or later with the **.NET desktop development** workload installed.
> - A WinForms project that targets a .NET Framework (4.5+) or .NET (Core 3.1 / 5 / 6 / 7 / 8) version supported by your Syncfusion WinForms release.
> - Syncfusion WinForms controls installed locally, or a NuGet reference to `Syncfusion.Edit.Windows` (see [Assembly Deployment](#assembly-deployment)).

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#editcontrol) section for the list of assemblies or the NuGet package details that must be referenced to use the control in any application.

Refer to [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install NuGet packages in a Windows Forms application.

To install via the NuGet Package Manager Console, run:

```
Install-Package Syncfusion.Edit.Windows
```

## Adding EditControl via designer

1. Create a new Windows Forms project in Visual Studio.

2. Add the [EditControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) to the application by dragging it from the toolbox to the designer surface. The following dependent assemblies are added automatically:

	* Syncfusion.Shared.Base
	* Syncfusion.Tools.Windows
	* Syncfusion.Edit.Windows

![Windows Forms EditControl drag and drop from toolbox](Getting-Started_images/Getting-Started_img2.png)

## Adding EditControl via code

To add the control manually, follow these steps:

1. Create a C# or VB.NET application in Visual Studio.

2. Add the following assembly references to the project:

	* Syncfusion.Shared.Base
	* Syncfusion.Tools.Windows
	* Syncfusion.Edit.Windows

3. Create an instance of the [EditControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) and add it to the form.

{% capture codesnippet1 %}
{% tabs %}
{% highlight C# %}

// Create the EditControl instance.

private Syncfusion.Windows.Forms.Edit.EditControl editControl1;

editControl1 = new Syncfusion.Windows.Forms.Edit.EditControl();

// Set an appropriate size for the EditControl.

editControl1.Size = new Size(50, 50);

// Set the Dock property to the appropriate DockStyle enumeration value if desired.

editControl1.Dock = DockStyle.Fill;

// Set an appropriate BorderStyle to the EditControl instance.

editControl1.BorderStyle = BorderStyle.Fixed3D;

// Adding the edit control to the form.

this.Controls.Add(editControl1);

{% endhighlight %}


{% highlight VB %}

'Create the EditControl instance.

private editControl1 As Syncfusion.Windows.Forms.Edit.EditControl

editControl1 = New Syncfusion.Windows.Forms.Edit.EditControl()

'Set an appropriate size for the EditControl.

editControl1.Size = New Size(50, 50)

' Set the Dock property to the appropriate DockStyle enumeration value if desired.

editControl1.Dock = DockStyle.Fill

'Set an appropriate BorderStyle to the EditControl instance.

editControl1.BorderStyle = BorderStyle.Fixed3D

' Adding the edit control to the form.

Me.Controls.Add(editControl1)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }} 

![Windows Forms showing EditControl](Getting-Started_images/Getting-Started_img3.png)

## Loading a file into the document

This section explains how to load a file into the EditControl.

{% tabs %}

{% highlight C# %}

// Loading the files into edit control by passing the file name as parameter to the LoadFile function.

this.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\FileName.cs");

{% endhighlight %}


{% highlight VB %}

` Loading the files into edit control by passing the file name as parameter to the LoadFile function.

Me.editControl1.LoadFile(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\FileName.cs")

{% endhighlight %}

{% endtabs %}

## Syntax highlighting

The [EditControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) offers built-in syntax highlighting for the most commonly used languages and also provides support for configuring a new custom language.

The EditControl has built-in syntax highlighting support for the following languages:

* C#
* VB.NET
* XML
* HTML
* Java
* SQL
* PowerShell
* C
* JavaScript
* VBScript
* Delphi

{% tabs %}

{% highlight C# %}

// Apply the built-in configuration for a known language.

this.editControl1.ApplyConfiguration(KnownLanguages.CSharp);

{% endhighlight %}


{% highlight VB %}

' Apply the built-in configuration for a known language.

Me.editControl1.ApplyConfiguration(KnownLanguages.CSharp)

{% endhighlight %}

{% endtabs %}

![Windows Forms EditControl configured for C Sharp language](Getting-Started_images/Getting-Started_img4.png)

## Custom language configuration

The EditControl supports custom language configuration. You can plug in an external XML configuration file that defines a custom language and then apply it with the [Configurator.Open](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_Configurator) and [ApplyConfiguration](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ApplyConfiguration_System_String_) methods.

1. Create a configuration file (for example, `config.xml`) and set its **Copy to Output Directory** property to **Copy if newer**.

{% capture codesnippet2 %}
{% highlight xaml %}

<?xml version="1.0" encoding="utf-8" ?>
<ArrayOfConfigLanguage>
	<ConfigLanguage name="LISP">
		<formats>
			<format name="Text" Font="Courier New, 10pt" FontColor="Salmon" />
			<format name="KeyWord" Font="Courier New, 10pt" FontColor="Blue" />
			<format name="String" Font="Courier New, 10pt, style=Bold" FontColor="Red" />
			<format name="Operator" Font="Courier New, 10pt" FontColor="DarkCyan" />
		</formats>
		<extensions>
			<extension>lsp</extension>
		</extensions>
		<lexems>
			<lexem BeginBlock="(" Type="Operator" />
			<lexem BeginBlock=")" Type="Operator" />
			<lexem BeginBlock="'" Type="Operator" />
			<lexem BeginBlock="car" Type="KeyWord" />
			<lexem BeginBlock="cdr" Type="KeyWord" />
			<lexem BeginBlock="cons" Type="KeyWord" />
		</lexems>
		<splits>
			<split>#Region</split>
			<split>#End Region</split>
		</splits>
	</ConfigLanguage>
</ArrayOfConfigLanguage>
{% endhighlight %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }} 

2. Apply the configuration file to the EditControl.

{% capture codesnippet3 %}
{% tabs %}
{% highlight C# %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

// Plug in an external configuration file.

this.editControl1.Configurator.Open(configFile);

// Apply the configuration defined in the configuration file.

this.editControl1.ApplyConfiguration("LISP");

{% endhighlight %}


{% highlight VB %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

' Plug in an external configuration file.

Me.editControl1.Configurator.Open(configFile)

' Apply the configuration defined in the configuration file.

Me.editControl1.ApplyConfiguration("LISP")

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }} 

![Windows Forms EditControl configured for custom language](Getting-Started_images/Getting-Started_img5.png)

N> You can refer to our [WinForms Syntax Editor](https://www.syncfusion.com/winforms-ui-controls/syntax-editor) feature tour page for its unique feature set. You can also explore our [WinForms Syntax Editor example](https://github.com/syncfusion/winforms-demos/tree/master/edit) that shows how to create interactive code-editor applications with syntax highlighting, text indentation, IntelliSense, and more.