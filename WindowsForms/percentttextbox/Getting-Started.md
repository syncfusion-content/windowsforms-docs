---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: This section describes how to add percent tex box control into application
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Getting Started

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#percenttextbox) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application.

You can find more details about installing the NuGet packages in a Windows Forms application in the following link: 

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

### Create a simple application with PercentTextBox

You can create a Windows Forms application with PercentTextBox using the following steps:

### Create a project

Create a new Windows Forms project in Visual Studio to display the PercentTextBox control.

## Add control through designer

The PercentTextBox control can be added to an application by dragging it from the toolbox to a designer view. The Syncfusion.Shared.Base assembly reference will be added automatically:

![PercentTextBox control added by designer](PercentTextBox-Images/wf-percent-text-box-control-designer.png) 

## Add control manually in code

To add the control manually in C#, follow the given steps:

**1.**	Add the **Syncfusion.Shared.Base** assembly reference to the project: 
 
**2.**	Include the **Syncfusion.Windows.Forms.Tools** namespace.

{% tabs %}
{% highlight C# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}
{% endtabs %}

**3.**	Create a PercentTextBox instance, and add it to the window.

{% tabs %}
{% highlight C# %}
PercentTextBox currencyTextBox1= new PercentTextBox();
this.Controls.Add(currencyTextBox1);
{% endhighlight %}
{% highlight VB %}
Dim currencyTextBox1 As PercentTextBox = New PercentTextBox()
Me.Controls.Add(currencyTextBox1) 
{% endhighlight %}
{% endtabs %}

![PercentTextBox control added by code](PercentTextBox-Images/wf-percent-text-box-control.png) 

## Maximum and minimum value constraints

You can set the maximum and minimum percentage values using the [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~MaxValue.html) and [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~MinValue.html) properties of PercentTextBox.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.MaxValue = 6;
this.percentTextBox1.MinValue = -6;
{% endhighlight %}
{% highlight VB %}
Me.percentTextBox1.MaxValue = 6
Me.percentTextBox1.MinValue = -6
{% endhighlight %}
{% endtabs %}

## Change number format

You can customize the number format using the [PercentDecimalDigits](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentDecimalDigits.html), [PercentDecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentDecimalSeparator.html), [PercentGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentGroupSeparator.html), and [PercentGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentGroupSizes.html) properties of PercentTextBox.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.PercentValue = 12.873;
this.percentTextBox1.PercentDecimalDigits = 3;
this.percentTextBox1.PercentDecimalSeparator = ".";
this.percentTextBox1.PercentGroupSeparator = ",";
this.percentTextBox1.PercentGroupSizes = new int[] { 2 };
{% endhighlight %}
{% highlight VB %}
Me.percentTextBox1.PercentValue = 12.873
Me.percentTextBox1.PercentDecimalDigits = 3
Me.percentTextBox1.PercentDecimalSeparator = "."
Me.percentTextBox1.PercentGroupSeparator = ","
Me.percentTextBox1.PercentGroupSizes = new int[] { 2 }
{% endhighlight %}
{% endtabs %}
 
![PercentTextBox control added by code](PercentTextBox-Images/number-format.png) 