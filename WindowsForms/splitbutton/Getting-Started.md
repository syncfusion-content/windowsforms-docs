---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: SplitButton 
documentation: ug
---

# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **"SplitButton"** with it's basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#splitbutton) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details on how to install nuget packages in Windows Forms application. 

## Adding a SplitButton control through designer

The **"SplitButton"** control can be added through designer by following steps.

**Step 1**: Create a new Windows Forms application in Visual Studio. 

**Step 2**: The **"SplitButton"** control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows


   ![Windows forms SplitButton drag and drop from toolbox](Getting-Started_images/Getting-Started_img1.png)

**Step 3**: Set the desired properties for **"SplitButton"** control through the **"Properties"** dialog.


## Adding a SplitButton control through code

**Step 1**: Create a C# or VB application though Visual Studio.

**Step 2**: Add the following assembly reference to the project.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

**Step 3**: Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

**Step 4**: Create an instance of **"SplitButton"** control and add it to the form.

{% tabs %}
{% highlight c# %}

Syncfusion.Windows.Forms.Tools.SplitButton splitButton1;
splitButton1 = new Syncfusion.Windows.Forms.Tools.SplitButton();
this.Controls.Add(splitButton1);

{% endhighlight %}

{% highlight vb %}

Dim splitButton As Syncfusion.Windows.Forms.Tools.SplitButton1
splitButton1 = New Syncfusion.Windows.Forms.Tools.SplitButton()
Me.Controls.Add(splitButton1)

{% endhighlight %}
{% endtabs %}


