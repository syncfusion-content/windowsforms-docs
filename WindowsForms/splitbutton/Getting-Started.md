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

**Step 4**: Run the application.

 ![Windows forms SplitButton showing output through designer](Getting-Started_images/SplitButton_throughdesigner.png)

## Adding a SplitButton control through code

**Step 1**: Create a C# or VB application though Visual Studio.

**Step 2**: Add the following assembly reference to the project.

* Syncfusion.Shared.Base
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

**Step 5**: Set the following properties for **"SplitButton"** control by through code.

{% tabs %}
{% highlight c# %}

this.splitButton1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(22)))), ((int)(((byte)(165)))), ((int)(((byte)(220)))));
this.splitButton1.BeforeTouchSize = new System.Drawing.Size(150, 43);
this.splitButton1.DropDownIconColor = System.Drawing.Color.White;
this.splitButton1.DropDownPosition = Syncfusion.Windows.Forms.Tools.Position.Bottom;
this.splitButton1.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
this.splitButton1.ForeColor = System.Drawing.Color.White;
this.splitButton1.Location = new System.Drawing.Point(60, 33);
this.splitButton1.MinimumSize = new System.Drawing.Size(75, 23);
this.splitButton1.Name = "splitButton1";
this.splitButton1.ShowDropDownOnButtonClick = false;
this.splitButton1.Size = new System.Drawing.Size(150, 43);
this.splitButton1.Style = Syncfusion.Windows.Forms.Tools.SplitButtonVisualStyle.Metro;
this.splitButton1.TabIndex = 3;
this.splitButton1.Text = "Find";
this.splitButton1.ThemeName = "Metro";

{% endhighlight %}

{% highlight vb %}

Me.SplitButton1.BackColor = System.Drawing.Color.FromArgb(CType(CType(22, Byte), Integer), CType(CType(165, Byte), Integer), CType(CType(220, Byte), Integer))
Me.SplitButton1.BeforeTouchSize = New System.Drawing.Size(150, 43)
Me.SplitButton1.DropDownIconColor = Color.White
Me.SplitButton1.DropDownPosition = Syncfusion.Windows.Forms.Tools.Position.Bottom
Me.SplitButton1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
Me.SplitButton1.ForeColor = System.Drawing.Color.Black
Me.SplitButton1.Location = New System.Drawing.Point(60, 33)
Me.SplitButton1.MinimumSize = New System.Drawing.Size(75, 23)
Me.SplitButton1.Name = "SplitButton1"
MetroSplitButtonRenderer1.SplitButton = Me.SplitButton1
Me.SplitButton1.Renderer = MetroSplitButtonRenderer1
Me.SplitButton1.ShowDropDownOnButtonClick = False
Me.SplitButton1.Size = New System.Drawing.Size(150, 43)
Me.SplitButton1.Style = SplitButtonVisualStyle.Metro
Me.SplitButton1.TabIndex = 3
Me.SplitButton1.Text = "Find"
Me.SplitButton1.ThemeName = "Metro"
		
{% endhighlight %}		
{% endtabs %}

**Step 6**: Run the application.

![Windows forms SplitButton showing output through code](Getting-Started_images/SplitButton_throughcode.png)

