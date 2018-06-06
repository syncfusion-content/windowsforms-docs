---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: How to Configure Office2010Form.
platform: WindowsForms
control: Office2010 Form
documentation: ug
---

# Getting started

This section describes how to inherit `Office2010Form` control in a Windows Forms application.

## Assembly deployment

The following assembly file should be added as reference to use the Office2010Form in any application:

<table>
<tr>
<td>
{{'**Required assembly**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Base
</td>
<td>
Syncfusion.Shared.Base contains style related properties of Office2010Form and various editor controls.
</td>
</tr>
</table>

## Installing NuGet Packages

To create the Windows Forms application with Office2010Form, the following nuget packages should be installed.

<table>
<tr>
<td>{{'**S.no**'| markdownify }}
</td>
<td>{{'**Framework version**'| markdownify }}
</td>
<td>{{'**NuGet Packages**'| markdownify }}
</td>
</tr>
<tr>
<td> 1
</td>
<td> 2.0
</td>
<td> Syncfusion.Shared.Base20
</td>
</tr>
<tr>
<td> 2
</td>
<td> 3.5
</td>
<td> Syncfusion.Shared.Base35
</td>
</tr>
<tr>
<td> 3
</td>
<td> 4.0
</td>
<td> Syncfusion.Shared.Base40
</td>
</tr>
<tr>
<td> 4
</td>
<td> 4.5
</td>
<td> Syncfusion.Shared.Base45
</td>
</tr>
<tr>
<td> 5
</td>
<td> 4.5.1
</td>
<td> Syncfusion.Shared.Base451
</td>
</tr>
<tr>
<td> 6
</td>
<td> 4.6
</td>
<td>Syncfusion.Shared.Base46
</td>
</tr>
</table>

Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

# Creating simple application with Office2010Form

You can create the Windows Forms application with Office2010Form control as follows:

1. [Creating project](#creating-the-project)
2. [Configure Office2010Form](#configure-office2010form)

### Creating the project

Create a new Windows Forms project in the Visual Studio to change the standard form into Office2010Form.

## Configure Office2010Form

The standard form can be changed into the `Office2010Form` by following the given steps.

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
   
![](GettingStarted_images/Office2010Form.png)
