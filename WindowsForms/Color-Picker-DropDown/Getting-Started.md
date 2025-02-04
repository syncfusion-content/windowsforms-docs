---
layout: post
title: Getting Started | Windows Forms Color Picker DropDown | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Color Picker DropDown (ColorPickerButton) control, its elements, and more.
platform: windowsforms
control: ColorPickerDropDown
documentation: ug
---
# Getting Started with Windows Forms Color Picker DropDown

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **ColorPickerButton** with it’s basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#colorpickerbutton) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Refer here](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details on how to install nuget packages in Windows Forms application.


## Adding the ColorPickerButton control via designer

1. Create a new Windows Forms application in Visual Studio.

2. The **ColorPickerButton** control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically.

   * Syncfusion.Shared.Base

![Drag and drop ColorPickerButton from toolbox](ColorPickerButton_images/Overview_img247.jpeg) 

## Adding the ColorPickerButton control via code

The following steps illustrate how to create an **ColorPickerButton** control programmatically:

1. Create a C# or VB application via Visual Studio.

2. Add the following assembly reference to the project.

   * Syncfusion.Shared.Base

3. Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}


4. Create an instance of the **ColorPickerButton** control and add it to the form.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.ColorPickerButton colorPickerButton1;
this.colorPickerButton1 = new Syncfusion.Windows.Forms.ColorPickerButton();
this.colorPickerButton1.Text = "Select a Color";
this.Controls.Add(this.colorPickerButton1);

{% endhighlight %}

{% highlight vb %}

Private colorPickerButton1 As Syncfusion.Windows.Forms.ColorPickerButton
Me.colorPickerButton1 = New Syncfusion.Windows.Forms.ColorPickerButton()
Me.colorPickerButton1.Text = "Select a Color"
Me.Controls.Add(Me.colorPickerButton1)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}


5. Clicking this button at runtime will display the ColorUIControl.

   ![Windows Forms ColorPickerButton showing with ColorUI](ColorPickerButton_images/Overview_img248.jpeg) 

## Select a color and group

At run time a particular color group tab should be focused or selected by using `SelectedColorGroup` property.

The options are as follows,

* SystemColors
* StandardColors
* CustomColors
* UserColors
* None (Default)

Use `SelectedColor` property to specify the initially selected color.

{% tabs %}

{% highlight C# %}

this.colorPickerButton1.SelectedColor = System.Drawing.Color.OrangeRed;
this.colorPickerButton1.SelectedColorGroup = Syncfusion.Windows.Forms.ColorUISelectedGroup.StandardColors;

{% endhighlight %}

{% highlight vb %}

Me.colorPickerButton1.SelectedColor = System.Drawing.Color.OrangeRed
Me.colorPickerButton1.SelectedColorGroup = Syncfusion.Windows.Forms.ColorUISelectedGroup.StandardColors

{% endhighlight %}

{% endtabs %}

![Windows Forms ColorPickerButton showing selected colors and groups](ColorPickerButton_images/ColorPickerButton_selectedcolors.png)

{% seealso %}
 
[Appearance and Behavior Settings](https://help.syncfusion.com/windowsforms/color-picker-dropdown/customization-settings)

{% endseealso %}
 
 