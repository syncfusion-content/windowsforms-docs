---
layout: post
title: Getting Started | CurrencyEdit | WindowsForms | Syncfusion
description: This section describes how to add currency edit control into application.
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Getting Started

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#currencyedit) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application.

You can find more details about installing the NuGet packages in a Windows Forms application in the following link: 

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

### Create a simple application with CurrencyEdit

You can create a Windows Forms application with [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) using the following steps:

### Create a project

Create a new Windows Forms project in Visual Studio to display the [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) control.

## Add control through designer

The [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) control can be added to an application by dragging it from the toolbox to a designer view. The following assembly references are added automatically:

* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows
* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows

![CurrencyEdit control added by designer](Overview_images/wf-currency-edit-control-added-designer.png) 

## Add control manually in code

To add the control manually in C#, follow the given steps:

**1.** Add the following required assembly references to the project: 

* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows
* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows

**2.** Include the **Syncfusion.Windows.Forms.Tools** namespace.

{% tabs %}
{% highlight C# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}
{% endtabs %}

**3.** Create a [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) instance, and add it to the window.

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

## Show or hide drop-down calculator

You can show or hide the calculator button in the CurrencyEdit control by setting the [ShowCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~ShowCalculator.html) property.

{% tabs %}
{% highlight C# %}
// Hide the calculator button
currencyEdit1.ShowCalculator = false;
{% endhighlight %}
{% highlight VB %}
' Hide the calculator button
currencyEdit1.ShowCalculator = False
{% endhighlight %}
{% endtabs %}

![CurrencyEdit control calculator disable](Overview_images/wf-currency-edit-control-calculator-button-disable.png) 

