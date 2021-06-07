---
layout: post
title: Getting Started with Windows Forms CurrencyEdit control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms CurrencyEdit control, its elements, and more.
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Getting Started with Windows Forms CurrencyEdit

## Assembly deployment

Refer to the [Control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#currencyedit) section to get the list of assemblies or details of NuGet package that needs to be added as a reference to use the control in any application.

Click [NuGet Packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to learn how to install nuget packages in a Windows Forms application.

## Adding the CurrencyEdit control via designer

1) Create a new Windows Forms project in Visual Studio.

2) The [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) control can be added to an application by dragging it from the toolbox to a designer view. The following dependent assemblies will be added automatically:

* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows
* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows

![CurrencyEdit control added by designer](Overview_images/wf-currency-edit-control-added-designer.png) 

## Adding CurrencyEdit control via code

To add the control manually in C#, follow the given steps:

1) Create a C# or VB application using Visual Studio.

2) Add the following assembly references to the project:

* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows
* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows

3) Include the required namespace.

{% tabs %}
{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}
{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

4) Create an instance of the [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) control, and add it to form.

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

![CurrencyEdit control](Overview_images/wf-currency-edit-control.png) 

5) Set the currency value using the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_Text) property, and change the culture using the `Culture` property of currency symbol.

{% tabs %}
{% highlight C# %}

// Set currency value.
currencyEdit1.TextBox.Text = "$2.00";

// To change the culture.
currencyEdit1.TextBox.Culture = new System.Globalization.CultureInfo("ksh-DE");

{% endhighlight %}
{% highlight VB %}

' Set currency value.
currencyEdit1.TextBox.Text = "$2.00"

' To change the culture.
currencyEdit1.TextBox.Culture = New System.Globalization.CultureInfo("ksh-DE")

{% endhighlight %}
{% endtabs %}

![Windows Forms CurrencyEdit showing changed value and currency symbol](Overview_images/CurrencyEdit_value.png)

## Show or hide the drop-down calculator

You can show or hide the calculator button in the CurrencyEdit control by setting the [ShowCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_ShowCalculator) property.

{% tabs %}
{% highlight C# %}

// Hide the calculator button.
currencyEdit1.ShowCalculator = false;

{% endhighlight %}
{% highlight VB %}

' Hide the calculator button.
currencyEdit1.ShowCalculator = False

{% endhighlight %}
{% endtabs %}

![CurrencyEdit control calculator is disabled](Overview_images/wf-currency-edit-control-calculator-button-disable.png)

