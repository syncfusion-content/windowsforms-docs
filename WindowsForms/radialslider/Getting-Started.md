---
layout: post
title: Getting Started | RadialSlider | WindowsForms | Syncfusion
description: This section describes how to add radial slider control into WindowsForms application
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Getting started

This section briefly describes how to create a new Windows Forms project in Visual Studio and add the **RadialSlider** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#radialslider) section to get the list of assemblies or NuGet package details that need to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details on how to install NuGet packages in a Windows Forms application.

## Adding the RadialSlider control via designer

The following steps describe how to create an **RadialSlider** control via the designer.

1) Create a new Windows Forms application in Visual Studio.

2) The [RadialSlider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider.html) control can be added to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

![Search RadialSlider in ToolBox](Getting-Started_images/RadialSlider-img1.png) 

3) Set the desired properties for [RadialSlider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider.html) control using **Properties** dialog.

## Adding the RadialSlider control via code

The following steps illustrate how to create an **RadialSlider** control programmatically.

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

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

4) Create an instance of [RadialSlider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider.html) control and add it to the form.

{% tabs %}

{% highlight C# %}

RadialSlider radialSlider1 = new RadialSlider();
radialSlider1.Size = new System.Drawing.Size(282, 282);
this.Controls.Add(radialSlider1);

{% endhighlight %}

{% highlight VB %}

Dim radialSlider1 As RadialSlider = New RadialSlider
radialSlider1.Size = New System.Drawing.Size(282, 282)
Me.Controls.Add(radialSlider1)

{% endhighlight %}

{% endtabs %}

![RadialSlider Control added in form](Getting-Started_images/RadialSlider-img2.png)

## Values

The value of **RadialSlider** control can be restricted within minimum and maximum limit.

* **MinimumValue** - The slider initial value depends on its minimum value and the default minimum value is 0. The minimum value can be changed by using the [MinimumValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~MinimumValue.html) property.

* **MaximumValue** - The slider end value depends on its maximum value and the default maximum value is 10. The maximum value can be changed by using the [MaximumValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~MaximumValue.html) property.

* **Value** - The slider's `Value` property is used to get the currently selected value, or change it to required value.


{% tabs %}

{% highlight C# %}

radialSlider1.MinimumValue = 50;
radialSlider1.MaximumValue = 100;
radialSlider1.Value = 50;

{% endhighlight %}

{% highlight vb %}

radialSlider1.MinimumValue = 50
radialSlider1.MaximumValue = 100
radialSlider1.Value = 50

{% endhighlight %}

{% endtabs %}

![Windows Forms RadialSlider showing maximum and minimum value](Getting-Started_images/RadialSlider_value.png)

## Slider Value Changed Event

We can get the current slider value by using the [ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~ValueChanged_EV.html) event.

{% tabs %}

{% highlight C# %}

this.radialSlider1.ValueChanged += new Syncfusion.Windows.Forms.Tools.RadialSlider.ValueChangedEventHandler(radialSlider1_ValueChanged);

private void radialSlider1_ValueChanged(object sender, Syncfusion.Windows.Forms.Tools.RadialSlider.ValueChangedEventArgs args)
{
  this.richTextBox1.SelectionFont = new System.Drawing.Font(Font.Name, (float)this.radialSlider1.Value);
  this.Refresh();
}

{% endhighlight %}

{% highlight VB %}

AddHandler Me.radialSlider1.ValueChanged, AddressOf Me.radialSlider1_ValueChanged

Private Sub radialSlider1_ValueChanged(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.RadialSlider.ValueChangedEventArgs)
Me.richTextBox1.SelectionFont = New System.Drawing.Font(Font.Name, CType(Me.radialSlider1.Value,Single))
Me.Refresh
End Sub

{% endhighlight %}

{% endtabs %}

## Division

The division for the [RadialSlider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider.html) can be customized using the [SliderDivision](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~SliderDivision.html) property. The default slider division is 10.

{% tabs %}

{% highlight C# %}

radialSlider1.SliderDivision = 5;

{% endhighlight %}

{% highlight vb %}

Me.radialSlider1.SliderDivision = 5

{% endhighlight %}

{% endtabs %}

![Windows Forms RadialSlider showing division between the range](Getting-Started_images/RadialSlider_division.png)

## Slider Style

The **RadialSlider** supports two different styles for its appearance via [SliderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~SliderStyle.html) property.

* **Default** - This style will render the slider control with two hollow circles and a small circle as center, with its dividend ticks.

* **Frame** - This style will paint the background of the slider control with an HQ frame.

{% tabs %}

{% highlight C# %}

radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Frame;

{% endhighlight %}

{% highlight vb %}

radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Frame

{% endhighlight %}

{% endtabs %}

![Windows Forms RadialSlider showing different slider styles](Getting-Started_images/RadialSlider_style.png)

The outside circle can be shown by using the [ShowOuterCircle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~ShowOuterCircle.html) property. The default value is set as 'True'.

{% tabs %}

{% highlight C# %}

radialSlider1.ShowOuterCircle = true;

{% endhighlight %}

{% highlight vb %}

Me.radialSlider1.ShowOuterCircle = True

{% endhighlight %}

{% endtabs %}

![Windows Forms RadialSlider showing outer circle](Getting-Started_images/RadialSlider_outercircle.png)

