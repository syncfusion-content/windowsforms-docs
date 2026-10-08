---
layout: post
title: Getting Started with Windows Forms CurrencyTextBox | Syncfusion®
description: Learn here about getting started with Syncfusion Windows Forms CurrencyTextBox control, its elements and more.
platform: windowsforms
control: CurrencyTextBox
documentation: ug
---

# Getting Started with WinForms Currency TextBox

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#currencytextbox) section to get the list of assemblies or NuGet packages that need to be added as a reference to use the control in any application.

You can find more details about installing the NuGet packages in a Windows Forms application at the following link:

[How to install NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

### Create a simple application with WinForms Currency TextBox

You can create a Windows Forms application with the [WinForms Currency TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html) using the following steps:

### Create a project

Create a new Windows Forms project in Visual Studio to display the [WinForms Currency TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html) control.

## Add control through designer

The [WinForms Currency TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html) control can be added to an application by dragging it from the toolbox onto the designer surface. The **Syncfusion.Shared.Base** assembly reference will be added automatically:

![WinForms Currency TextBox control added to the form via the designer](Overview_images/wf-currency-text-box-control-added-designer.png)

## Add control manually in code

To add the control manually, follow the steps below:

1. Add the **Syncfusion.Shared.Base** assembly reference to the project.

2. Add the **Syncfusion.Windows.Forms.Tools** namespace:

{% capture codesnippet1 %}
{% tabs %}
{% highlight C# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}


3. Create a [WinForms Currency TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html) instance and add it to the form:

{% capture codesnippet2 %}
{% tabs %}
{% highlight C# %}
CurrencyEdit currencyEdit1 = new CurrencyEdit();
this.Controls.Add(currencyEdit1);
{% endhighlight %}
{% highlight VB %}
Dim currencyEdit1 As New CurrencyEdit()
Me.Controls.Add(currencyEdit1)
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}


![WinForms Currency TextBox control shown at runtime](Overview_images/wf-currency-text-box-control.png)

## Set the maximum and minimum values

You can set the maximum and minimum value of the currency through the [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_MaxValue) and [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_MinValue) properties of the [WinForms Currency TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html).

{% tabs %}
{% highlight C# %}
this.currencyTextBox1.MaxValue = 10;
this.currencyTextBox1.MinValue = 5;
{% endhighlight %}
{% highlight VB %}
Me.currencyTextBox1.MaxValue = 10
Me.currencyTextBox1.MinValue = 5
{% endhighlight %}
{% endtabs %}


## Set currency symbol

You can define the custom currency symbol using the [CurrencySymbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_CurrencySymbol) property of the [WinForms Currency TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html).

{% tabs %}
{% highlight C# %}
//Setting custom currency symbol
this.currencyTextBox1.CurrencySymbol = "€";
{% endhighlight %}
{% highlight VB %}
'Setting custom currency symbol
Me.currencyTextBox1.CurrencySymbol = "€"
{% endhighlight %}
{% endtabs %}

![WinForms Currency TextBox showing the custom Euro currency symbol](Overview_images/wf-currency-text-box-control-currency-symbol.png)

## Number format

You can customize the number format using the [CurrencyDecimalDigits](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_CurrencyDecimalDigits), [CurrencyDecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_CurrencyDecimalSeparator), [CurrencyGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_CurrencyGroupSeparator), and [CurrencyGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyTextBox.html#Syncfusion_Windows_Forms_Tools_CurrencyTextBox_CurrencyGroupSizes) properties of the WinForms Currency TextBox.

{% tabs %}
{% highlight C# %}
this.currencyTextBox1.DecimalValue = 2132423543;
this.currencyTextBox1.CurrencyDecimalDigits = 3;
this.currencyTextBox1.CurrencyDecimalSeparator = "/";
this.currencyTextBox1.CurrencyGroupSeparator = "*";
this.currencyTextBox1.CurrencyGroupSizes = new int[] { 3 };
{% endhighlight %}
{% highlight VB %}
Me.currencyTextBox1.DecimalValue = 2132423543
Me.currencyTextBox1.CurrencyDecimalDigits = 3
Me.currencyTextBox1.CurrencyDecimalSeparator = "."
Me.currencyTextBox1.CurrencyGroupSeparator = ","
Me.currencyTextBox1.CurrencyGroupSizes = New Integer() {3}
{% endhighlight %}
{% endtabs %}

![WinForms Currency TextBox with a custom number format applied](Overview_images/number-format.png) 
