---
layout: post
title: Getting Started with Windows Forms CheckBox control | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms CheckBox (CheckBoxAdv) control and more details.
platform: windowsforms
control: CheckBoxAdv
documentation: ug
---

# Getting Started with Windows Forms CheckBox (CheckBoxAdv)

This section gives detailed description on Getting Started of [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control.

## Assembly Deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#checkboxadv) section to get the list of assemblies or details of NuGet package that needs to be added as reference to use the control in any application.

Refer to [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install nuget packages in a Windows Forms application.

## Adding CheckBoxAdv control via designer

The following steps explain how to create the CheckBoxAdv control via designer.

1. Create a new Windows Forms Project in Visual Studio.

2. Drag and drop the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) from toolbox in Form designer window. 

3. The [dependent assemblies](https://help.syncfusion.com/windowsforms/control-dependencies#buttonedit) will be added automatically.

![WindowsForms CheckBox drag and drop from toolbox](getting-Started-images/windowsforms-checkbox-drag-and-drop-from-toolbox.png)

## Adding CheckBoxAdv control via code

In order to add [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control manually, do the below steps,

1. Add the required [assembly references](https://help.syncfusion.com/windowsforms/control-dependencies#sfdatagrid) to the project.

2. Create the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control instance and add it to the Form.

3. Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

CheckBoxAdv checkBoxAdv = new CheckBoxAdv() {Text="CheckBoxAdv", Height = 25, Width = 200 };
this.Controls.Add(checkBoxAdv);

{% endhighlight %}

{% highlight vb %}

Dim checkBoxAdv As CheckBoxAdv = New CheckBoxAdv() With {.Text="CheckBoxAdv", .Height = 25, .Width = 200}
Me.Controls.Add(checkBoxAdv)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

## CheckBox State

You can get or set the current checked status of [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) using the [Checked](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_Checked) or [CheckState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_CheckState) property. The default value of Checked property is `false` and CheckState property is `Unchecked`.

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.Checked = true;
this.checkBoxAdv1.CheckState = System.Windows.Forms.CheckState.Checked;

{% endhighlight %}
{% highlight VB %}

Me.checkBoxAdv1.Checked = True
Me.checkBoxAdv1.CheckState = System.Windows.Forms.CheckState.Checked

{% endhighlight %}
{% endtabs %}

![WindowsForms CheckBox showing checked state of the control](overview_images/windowsforms-checkbox-check-state.png)

N> To learn more about the CheckBoxAdv states click [here](https://help.syncfusion.com/windowsforms/checkbox/checkboxadv-settings).
