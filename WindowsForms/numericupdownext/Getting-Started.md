---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating numericupdownext
platform: WindowsForms
control: NumericUpDownExt
documentation: ug
---

# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio, and add the **NumericUpDownExt** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#numericupdownext) section to get the list of assemblies or NuGet package details that need to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details on how to install NuGet packages in a Windows Forms application.

## Adding the NumericUpDownExt control via designer

1) Create a new Windows Forms application in Visual Studio.

2) The **NumericUpDownExt** control can be added to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

   ![Drag and drop NumericUpDownExt from toolbox](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img1.png)

3) The **NumericUpDownExt** will allow you to display numeric values by clicking on the up and down buttons.

   ![Windows Forms NumericUpDownExt showing numeric values](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img2.png)

## Adding the NumericUpDownExt control via code

The following steps illustrate how to create an **NumericUpDownExt** control programmatically:

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly reference to the project.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

3) Include the required namespace.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

4) Create an instance of the **NumericUpDownExt** control and add it to the form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.NumericUpDownExt numericUpDownExt1;
this.numericUpDownExt1 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();
this.Controls.Add(this.numericUpDownExt1);

{% endhighlight %}

{% highlight vb %}

Private numericUpDownExt1 As Syncfusion.Windows.Forms.Tools.NumericUpDownExt
Me.numericUpDownExt1 = New Syncfusion.Windows.Forms.Tools.NumericUpDownExt()
Me.Controls.Add(Me.numericUpDownExt1)

{% endhighlight %}
{% endtabs %}


5) Set the following properties of the **NumericUpDownExt** control.

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.Location = new System.Drawing.Point(70, 29);
this.numericUpDownExt1.Name = "numericUpDownExt1";
this.numericUpDownExt1.Size = new System.Drawing.Size(84, 20);

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.Location = New System.Drawing.Point(70, 29)
Me.numericUpDownExt1.Name = "numericUpDownExt1"
Me.numericUpDownExt1.Size = New System.Drawing.Size(84, 20)

{% endhighlight %}
{% endtabs %}

## Display settings

The **NumericUpDownExt** provides the following properties to set the display characteristics associated with the integer value. The properties are `DecimalPlaces` and `ThousandsSeparator`.

{% tabs %}

{% highlight C# %}

this.numericUpDownExt1.DecimalPlaces = 2;
this.numericUpDownExt1.ThousandsSeparator = true;

[% endhighlight %]

{% highlight vb %}

Me.numericUpDownExt1.DecimalPlaces = 2
Me.numericUpDownExt1.ThousandsSeparator = True

{% endhighlight %}

{% endtabs %}

![Windows Forms showing display settings of the control](Display-Settings_images/Display-Settings_img1.png)

## Value settings

The **NumericUpDownExt** provides the following properties to set the values with integer value. The properties are Value, Hexadecimal, Minimum and Increment.

* Value - Set the value assigned to the spin box.
* Hexadecimal - The value indicating whether the spin box should display the value its contains in hexadecimal format.
* Minimum - Set the minimum allowed value to the spin box.
* Increment - The value to increment or decrement the spin box when the up or down buttons are clicked. The default value is set to 1.

{% tabs %}

{% highlight C# %}

this.numericUpDownExt1.Value = new decimal(new int[] {25, 0, 0, 0});
this.numericUpDownExt1.Hexadecimal = true;
this.numericUpDownExt1.Minimum = new decimal(new int[] {50, 0, 0, 0});
this.numericUpDownExt1.Increment = new decimal(new int[] {5, 0, 0, 0});

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.Value = New Decimal(New Integer() {25, 0, 0, 0})
Me.numericUpDownExt1.Hexadecimal = True
Me.numericUpDownExt1.Minimum = New Decimal(New Integer() {50, 0, 0, 0})
Me.numericUpDownExt1.Increment = New Decimal(New Integer() {5, 0, 0, 0})

{% endhighlight %}

{% endtabs %}