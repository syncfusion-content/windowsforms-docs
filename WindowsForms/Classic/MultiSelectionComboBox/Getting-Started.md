---
layout: post
title: Getting Started with Windows Forms MultiSelectionComboBox | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms MultiSelectionComboBox (Classic) control, its elements, and more.
platform: WindowsForms
control: MultiSelectionComboBox
documentation: ug
---

# Getting Started with Windows Forms MultiSelectionComboBox

This section briefly describes you on how to design a MultiSelectionComboBox control in a Windows Forms Application.

* Assembly deployment
* Adding a MultiSelectionComboBox Control
* Configuring the MultiSelectionComboBox Control

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#multiselectioncombobox) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Check here](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details about on how to install nuget packages in Windows Forms application.


## Adding a MultiSelectionComboBox control

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drop a MultiSelectionComboBox control on the Form. The MultiSelectionComboBox is loaded in the form as illustrated in the following screenshot.

  ![Windows Forms MultiSelectionComboBox Overview Image335](Overview_images/Overview_img335.png) 

## Configuring the MultiSelectionComboBox control

The commonly used settings of the MultiSelectionComboBox control can be configured either through Designer using the Smart tag or through the Properties window or through code.

## Add control via designer

The MultiSelectionComboBox control provides full support for the Windows Forms designer. To use a MultiSelectionComboBox control in your application, all you need to do is drag-and-drop the MultiSelectionComboBox control from the toolbox onto your form. You can then set any of its properties through the property grid. The following required assembly references are added automatically to the project:

  * Syncfusion.Grid.Base.dll
  * Syncfusion.Grid.Windows.dll
  * Syncfusion.Shared.Base.dll
  * Syncfusion.Shared.Windows.dll
  * Syncfusion.Tools.Base.dll
  * Syncfusion.Tools.Windows.dll

![Overview_img336](Overview_images/Overview_img336.png)

## Add control manually using code

To add MultiSelectionComboBox control to a Windows Forms application through code behind,

1. Create C# or VB application through Visual Studio.

2. Add the following required assembly references to the project:

Syncfusion.Grid.Base.dll
Syncfusion.Grid.Windows.dll
Syncfusion.Shared.Base.dll
Syncfusion.Shared.Windows.dll
Syncfusion.Tools.Base.dll
Syncfusion.Tools.Windows.dll

3. Include the namespaces “Syncfusion.Windows.Forms” and “Syncfusion.Windows.Forms.Tools”.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

//namespaces
using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}
 
'namespaces
Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

4. Create an instance of the MultiSelectionComboBox control and add it to the Form.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

MultiSelectionComboBox MultiSelectionComboBox1 = new MultiSelectionComboBox();
this.MultiSelectionComboBox1.ButtonStyle = ButtonAppearance.Metro;
this.MultiSelectionComboBox1.Size = new System.Drawing.Size(217, 30);
this.MultiSelectionComboBox1.UseVisualStyle = true;
this.Controls.Add(this.MultiSelectionComboBox1);

{% endhighlight %}

{% highlight vb %}

Dim MultiSelectionComboBox1 As MultiSelectionComboBox = New MultiSelectionComboBox()
Me.MultiSelectionComboBox1.ButtonStyle = ButtonAppearance.Metro
Me.MultiSelectionComboBox1.Size = New System.Drawing.Size(217, 30)        Me.MultiSelectionComboBox1.UseVisualStyle = True
Me.Controls.Add(Me.MultiSelectionComboBox1)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}
