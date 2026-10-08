---
layout: post
title: Getting Started with Windows Forms NumericUpDownExt | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms NumericUpDownExt control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: NumericUpDownExt
documentation: ug
---

# Getting Started with Windows Forms NumericUpDownExt

This section briefly describes how to create a new Windows Forms project in Visual Studio and add the **NumericUpDownExt** control with its basic functionality.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#numericupdownext) section to get the list of assemblies or the details of NuGet package that need to be added as reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details about installing NuGet packages in a Windows Forms application.

You can also add the required assemblies as references from the Package Manager Console using the following PowerShell command:

```powershell
Install-Package Syncfusion.Tools.Windows
```

## Adding the NumericUpDownExt control via designer

1. Create a new Windows Forms application in Visual Studio.

2. Add the [NumericUpDownExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExt.html) control to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically:

    * Syncfusion.Grid.Base
    * Syncfusion.Grid.Windows
    * Syncfusion.Shared.Base
    * Syncfusion.Shared.Windows
    * Syncfusion.Tools.Base
    * Syncfusion.Tools.Windows

![Drag and drop NumericUpDownExt from toolbox](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img1.png)

The **NumericUpDownExt** allows you to display numeric values by clicking the up and down buttons on the spin box.

![Windows Forms NumericUpDownExt showing numeric values](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img2.png)

## Adding the NumericUpDownExt control via code

The following steps describe how to create a NumericUpDownExt control programmatically:

1. Create a C# or VB application via Visual Studio.

2. Add the following assembly references to the project:

    * Syncfusion.Grid.Base
    * Syncfusion.Grid.Windows
    * Syncfusion.Shared.Base
    * Syncfusion.Shared.Windows
    * Syncfusion.Tools.Base
    * Syncfusion.Tools.Windows

3. Include the required namespace.

{% capture codesnippet1 %}​
{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

4. Create an instance of the [NumericUpDownExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExt.html) control and add it to **Form1**.

{% capture codesnippet2 %}​
{% tabs %}
{% highlight c# %}

public partial class Form1 : Form
{
    private Syncfusion.Windows.Forms.Tools.NumericUpDownExt numericUpDownExt1;

    public Form1()
    {
        InitializeComponent();

        this.numericUpDownExt1 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();
        this.numericUpDownExt1.Location = new System.Drawing.Point(70, 29);
        this.numericUpDownExt1.Name = "numericUpDownExt1";
        this.numericUpDownExt1.Size = new System.Drawing.Size(84, 20);
        this.Controls.Add(this.numericUpDownExt1);
    }
}

{% endhighlight %}

{% highlight vb %}

Public Partial Class Form1
    Inherits Form

    Private numericUpDownExt1 As Syncfusion.Windows.Forms.Tools.NumericUpDownExt

    Public Sub New()
        InitializeComponent()

        Me.numericUpDownExt1 = New Syncfusion.Windows.Forms.Tools.NumericUpDownExt()
        Me.numericUpDownExt1.Location = New System.Drawing.Point(70, 29)
        Me.numericUpDownExt1.Name = "numericUpDownExt1"
        Me.numericUpDownExt1.Size = New System.Drawing.Size(84, 20)
        Me.Controls.Add(Me.numericUpDownExt1)
    End Sub
End Class

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

## Display settings

The **NumericUpDownExt** provides the [DecimalPlaces](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExtActionList.html#Syncfusion_Windows_Forms_Tools_NumericUpDownExtActionList_DecimalPlaces) and [ThousandsSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExtActionList.html#Syncfusion_Windows_Forms_Tools_NumericUpDownExtActionList_ThousandsSeparator) properties to set the display characteristics associated with the integer value.

{% tabs %}

{% highlight C# %}

this.numericUpDownExt1.DecimalPlaces = 2;
this.numericUpDownExt1.ThousandsSeparator = true;

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.DecimalPlaces = 2
Me.numericUpDownExt1.ThousandsSeparator = True

{% endhighlight %}

{% endtabs %}

![Windows Forms shows display settings of the control](Display-Settings_images/Display-Settings_img1.png)

## Value settings

The **NumericUpDownExt** provides the following properties to control the integer value:

* [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExtActionList.html#Syncfusion_Windows_Forms_Tools_NumericUpDownExtActionList_Value) - Sets the value assigned to the spin box.
* [Hexadecimal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExtActionList.html#Syncfusion_Windows_Forms_Tools_NumericUpDownExtActionList_Hexadecimal) - Indicates whether the spin box should display the value it contains in hexadecimal format.
* [Minimum](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExtActionList.html#Syncfusion_Windows_Forms_Tools_NumericUpDownExtActionList_Minimum) - Sets the minimum allowed value to the spin box.
* [Increment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericUpDownExtActionList.html#Syncfusion_Windows_Forms_Tools_NumericUpDownExtActionList_Increment) - Increments or decrements the spin box when the up and down buttons are clicked. The default value is set to 1.

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
