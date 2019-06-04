---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating colorpickerui adv
platform: WindowsForms
control: ColorPickerUIAdv
documentation: ug
---
# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **ColorPickerUIAdv** with it’s basic functionalities.


## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#colorpickeruiadv) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details on how to install nuget packages in Windows Forms application.

## Adding the ColorPickerUIAdv control via designer

1) Create a new Windows Forms application in Visual Studio.

2) The **ColorPickerUIAdv** control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically.

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

2) Add the following assembly references to the project.
	
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

4) Create an instance of **ColorPickerUIAdv** and add it to the form.

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


## Color Selection

At runtime a particular color should be focused or selected by using `SelectedColor` property.

{% tabs %}

{% highlight C# %}

this.colorPickerUIAdv1.SelectedColor = System.Drawing.Color.White;

{% endhighlight %}

{% highlight vb %}

Me.colorPickerUIAdv1.SelectedColor = System.Drawing.Color.White

{% endhighlight %}

{% endtabs %}

![Windows Forms ColorPickerUIAdv showing selected color](ColorPickerUIAdv_Images/ColorPickerUIAdv_colorselection.png)

