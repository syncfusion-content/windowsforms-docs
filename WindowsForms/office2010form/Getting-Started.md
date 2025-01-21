---
layout: post
title: Getting Started with WinForms Office2010Form | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Office2010Form control, its elements and more details.
platform: WindowsForms
control: Office2010 Form
documentation: ug
---

# Getting Started with Windows Forms Office2010Form

This section describes how to configure `Office2010Form` control in a Windows Forms application.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#office2010form) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

## Creating simple application with Office2010Form

You can create the Windows Forms application with Office2010Form control as follows:

1. [Creating project](#creating-the-project)
2. [Configure Office2010Form](#configure-office2010form)

### Creating the project

Create a new Windows Forms project in the Visual Studio to change the standard form into Office2010Form.

### Configure Office2010Form

`Office2010Form` is an advanced standard Form, we can configure it by following the given steps:

**Step 1:** Add the following required assembly references to the project:

* Syncfusion.Shared.Base.dll	

**Step 2:** Include the namespaces **Syncfusion.Windows.Forms**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms

{% endhighlight  %}

{% endtabs %}
   
**Step 3:** Change the class to inherit `Office2010Form` instead of the standard form.

{% tabs %}

{% highlight C# %}

public partial class Form1 : Office2010Form 
{
	public Form1()
    {

		this.Text = "Office2010Form";
		
	}
}

{% endhighlight %}

{% highlight VB %}

Partial Public Class Form1 Inherits Office2010Form

Public Sub New()

Me.Text = "Office2010Form"

End Sub

End Class
 
{% endhighlight %}

{% endtabs %} 
   
![Winforms showing applied the office2010form](GettingStarted_images/Office2010Form.png)
