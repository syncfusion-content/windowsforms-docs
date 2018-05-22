---
layout: post
title: Getting-Started 
description: How to add EditControl and and enable its basic features.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Getting Started

This section explains how to create an interactive code editor application like Microsoft Visual Studio Editor by using the EditControl.

## Assembly deployment

The following list of assemblies should be added as reference to use the EditControl in any application:

<table>
<tr>
<th>
{{'**Required assemblies**'| markdownify }}
</th>
<th>
{{'**Description**'| markdownify }}
</th>
</tr>
<tr>
<td>
Syncfusion.Shared.Base.dll
</td>
<td>
Syncfusion.Shared.Base contains style related properties of EditControl and various editor controls
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Windows.dll
</td>
<td>
Syncfusion.Tools.Windows contains classes that handles all UI operations, fundamentals and base classes of Tools control which are used in the EditControl
</td>
</tr>
<tr>
<td>
Syncfusion.Edit.Windows.dll
</td>
<td>
Syncfusion.Edit.Windows contains the class that handles all UI operations and contains helper class of EditControl
</td>
</tr>
</table>

## Installing NuGet Packages

To create the Windows Forms application with EditControl, the following nuget packages should be installed.

<table>
<tr>
<td>{{'**S.No**'| markdownify }}
</td>
<td>{{'**Framework version**'| markdownify }}
</td>
<td>{{'**NuGet Packages**'| markdownify }}
</td>
</tr>
<tr>
<td> 1
</td>
<td> 2.0
</td>
<td> Syncfusion.Edit.Windows20
</td>
</tr>
<tr>
<td> 2
</td>
<td> 3.5
</td>
<td> Syncfusion.Edit.Windows35
</td>
</tr>
<tr>
<td> 3
</td>
<td> 4.0
</td>
<td> Syncfusion.Edit.Windows40
</td>
</tr>
<tr>
<td> 4
</td>
<td> 4.5
</td>
<td> Syncfusion.Edit.Windows45
</td>
</tr>
<tr>
<td> 5
</td>
<td> 4.5.1
</td>
<td> Syncfusion.Edit.Windows451
</td>
</tr>
<tr>
<td> 6
</td>
<td> 4.6
</td>
<td> Syncfusion.Edit.Windows46
</td>
</tr>
</table>

Please find more details regarding how to install the nuget packages in windows form application in the below link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

# Creating simple application with EditControl

You can create the Windows Forms application with EditControl as follows:

1. [Creating the project](#creating-the-project)
2. [Adding control via Designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Loading a file into Document](#loading-a-file-into-document)
5. [Syntax Highlighting](#syntax-highlighting)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the EditControl.

## Adding control via designer

The EditControl can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

   * Syncfusion.Shared.Base.dll
   * Syncfusion.Tools.Windows.dll
   * Syncfusion.Edit.Windows.dll

![](Getting-Started_images/Getting-Started_img2.png)

## Adding control manually in code

To add control manually in C#, follow the given steps:

1. Add the following required assembly references to the project:

   * Syncfusion.Shared.Base.dll
   * Syncfusion.Tools.Windows.dll
   * Syncfusion.Edit.Windows.dll

2. Create [EditControl](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl.html) control instance and add it to the form.

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

The following illustration shows EditControl was created.

![](Getting-Started_images/Getting-Started_img3.png)

## Loading a file into document

This option helps to load file into EditControl.

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

EditControl offers mostly used languages like C#, VB, XML, HTML, JScript, PowerShell, SQL as built-in and also provides support to configure new custom language based on requirement.

**Built-in syntax highlighting languages**

EditControl has a built-in syntax highlighting support for the following languages.

  * C
  * C#
  * Delphi
  * XML
  * HTML
  * VB.NET
  * SQL
  * Java
  * VBScript
  * JScript
  * PowerShell
  * Text

The following code example illustrates the C# configuration settings in EditControl.

{% tabs %}

{% highlight C# %}

// Considering configuration settings for C# as an example. Using the [KnownLanguages](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.html) enumerator.

this.editControl1.ApplyConfiguration(KnownLanguages.CSharp);

{% endhighlight %}


{% highlight VB %}

' Considering configuration settings for C# as an example. Using the [KnownLanguages](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.Enums.KnownLanguages.html) enumerator.

Me.editControl1.ApplyConfiguration(KnownLanguages.CSharp)

{% endhighlight %}

{% endtabs %}

![](Getting-Started_images/Getting-Started_img4.png)

**Custom language configuration**

EditControl provides supports for custom language configuration. You can plug-in an external configuration file that defines a custom language to the EditControl by using the [Configurator.Open](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~Configurator.html) and [ApplyConfiguration](https://help.syncfusion.com/cr/cref_files/windowsforms/edit/Syncfusion.Edit.Windows~Syncfusion.Windows.Forms.Edit.EditControl~ApplyConfiguration.html) function, as shown in the below code snippet.

**Step 1** : Creating a Configuration file

The following code snippet illustrates a sample configuration file that can be used for syntax highlighting a LISP-like code.

{% highlight xaml %}

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

{% endhighlight %}

**Step 2** : How to configure the created configuration file in EditControl

{% tabs %}

{% highlight C# %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

// Plug-in an external configuration file.

this.editControl1.Configurator.Open(configFile);

// Apply the configuration defined in the configuration file.

this.editControl1.ApplyConfiguration("LISP");

{% endhighlight %}


{% highlight VB %}

private string configFile = Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\config.xml";

' Plug-in an external configuration file.

Me.editControl1.Configurator.Open(configFile)

' Apply the configuration defined in the configuration file.

Me.editControl1.ApplyConfiguration("LISP")

{% endhighlight %}

{% endtabs %}

![](Getting-Started_images/Getting-Started_img5.png)
