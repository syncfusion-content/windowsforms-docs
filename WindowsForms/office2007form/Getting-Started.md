---
layout: post
title: Getting Started with Windows Forms Office2007 Form | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms Office2007 Form control. Explore setup, features, examples, and customization options.
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

# Getting Started with Windows Forms Office2007 Form

This section describes how to configure the `Office2007Form` control in a Windows Forms application.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#office2007form) section for the list of assemblies and NuGet packages that must be added as references to use the control.

```
PM> Install-Package Syncfusion.Shared.Base
```

For more details on installing NuGet packages in a Windows Forms application, see [How to install nuget packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages).

## Creating simple application with Office2007Form

You can create the Windows Forms application with the Office2007Form control as follows:

1. [Creating the project](#creating-the-project)
2. [Configure Office2007Form](#configure-office2007form)

### Creating the project

Create a new Windows Forms project in Visual Studio to use the standard form with Office2007 styling.

### Configure Office2007Form

`Office2007Form` is an advanced standard `Form`. Configure it by following the given steps:

**Step 1:** Add the following required assembly reference to the project:

* `Syncfusion.Shared.Base.dll`

**Step 2:** Include the `Syncfusion.Windows.Forms` namespace.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms

{% endhighlight %}

{% endtabs %}

**Step 3:** Change the class to inherit `Office2007Form` instead of the standard form.

{% tabs %}

{% highlight c# %}

public partial class Form1 : Office2007Form
{
    public Form1()
    {
        this.Text = "Office2007Form";
    }
}

{% endhighlight %}

{% highlight vb %}

Partial Public Class Form1
    Inherits Office2007Form

    Public Sub New()
        Me.Text = "Office2007Form"
    End Sub
End Class

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form displayed with the Office 2007-styled caption and client area](Office2007-Form_images/Office2007Form.png)

