---
layout: post
title: Getting Started with Windows Forms Color Picker | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Color Picker (ColorPickerUIAdv) control, its elements, and more.
platform: WindowsForms
control: ColorPickerUIAdv
documentation: ug
---
# Getting Started with Windows Forms Color Picker (ColorPickerUIAdv)

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **ColorPickerUIAdv** with its basic functionalities.


## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#colorpickeruiadv) section to get the list of assemblies or details of NuGet package that needs to be added as reference to use the control in any application.

Click [NuGet Packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to learn how to install nuget packages in Windows Forms application.

## Adding the ColorPickerUIAdv control via designer

1) Create a new Windows Forms application in Visual Studio.

2) The [ColorPickerUIAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv.html) control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically:

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows


![Windows forms ColorPickerUIAdv drag and drop from toolbox](ColorPickerUIAdv_Images/ColorPickerUIAdv_toolbox.jpeg) 


## Adding the ColorPickerUIAdv control via code

It can be added programmatically by performing the following steps.

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly references to the project:
	
* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

3) Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

4) Create an instance of [ColorPickerUIAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv.html), and add it to the form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv colorPickerUIAdv1;
ColorPickerUIAdv cpa = new ColorPickerUIAdv();
cpa.Size = new Size(200, 180);
this.Controls.Add(cpa);

{% endhighlight %}

{% highlight vb %}

Private colorPickerUIAdv1 As Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv 
Private cpa As ColorPickerUIadv = New ColorPickerUIadv()
Private cpa.Size = New Size(200, 180)
Me.Controls.Add(cpa)
 
{% endhighlight %}
{% endtabs %}

   ![ColorPickerUIAdv for Windows Forms](ColorPickerUIAdv_Images/ColorPickerUIAdv.jpeg) 


## Color selection

At run time, a particular color should be focused or selected by using the [SelectedColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv.html#Syncfusion_Windows_Forms_Tools_ColorPickerUIAdv_SelectedColor) property.

{% tabs %}

{% highlight C# %}

this.colorPickerUIAdv1.SelectedColor = System.Drawing.Color.White;

{% endhighlight %}

{% highlight vb %}

Me.colorPickerUIAdv1.SelectedColor = System.Drawing.Color.White

{% endhighlight %}

{% endtabs %}

![Windows Forms ColorPickerUIAdv showing selected color](ColorPickerUIAdv_Images/ColorPickerUIAdv_colorselection.png)

