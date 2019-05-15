---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: Creating  ButtonAdv
platform: WindowsForms
control: ButtonAdv
documentation: ug
---

# Getting Started

This section explains how to create a new Windows Forms project in Visual Studio and add **"RadioButtonAdv"** with it's basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#buttonadv) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details about on how to install nuget packages in Windows Forms application. 

## Adding a ButtonAdv control through designer

The **"ButtonAdv"** control can be added through designer by following steps.

**Step 1**: The **"ButtonAdv"** control can be added to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically.

* Syncfusion.Shared.Base

![Windows forms ButtonAdv drag and drop from toolbox](Overview_images/Overview_img111.jpeg)

**Step 2**: Set the desired properties for **"ButtonAdv"** control through the **"Properties"** dialog.

**Step 3**: Click the **"Image"** property in **"Property"** dialog of control. Now, **"Select Resource"** dialog will be opened. Then, you can select image and click **"OK"**.

![Windows forms ButtonAdv showing at run time](Overview_images/ButtonAdv_image.png)

**Step 4**: Set the **"TextImageRelation"** in control **"Property"** dialog, like in the below screenshot.

![Windows forms ButtonAdv showing at run time](Overview_images/ButtonAdv_textimage.png)



## Adding a ButtonAdv control through code

**Step 1**: Create C# or VB application through Visual Studio.

**Step 2**: Add the following assembly reference to the project.

* Syncfusion.Shared.Base

**Step 3**: Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}
 
**Step 4**: Create an instance of the **"ButtonAdv"** control and add it to the form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.ButtonAdv buttonAdv1;
this.buttonAdv1 = new Syncfusion.Windows.Forms.ButtonAdv();
this.Controls.Add(this.buttonAdv1);

{% endhighlight %}

{% highlight vb %}

Private buttonAdv1 As Syncfusion.Windows.Forms.ButtonAdv
Me.buttonAdv1 = New Syncfusion.Windows.Forms.ButtonAdv 
Me.Controls.Add(Me.buttonAdv1)

{% endhighlight %}
{% endtabs %}

**Step 5**: Add an image into the **"ButtonAdv"** control and sets the relative location of the image to the text.

Refer below code,

{% tabs %}

{% highlight c# %}

// Add an image into the control.

this.buttonAdv1.Image = global::treeview.Properties.Resources.Calculator;

// Sets the relative location of the image to the text.

this.buttonAdv1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;

{% endhighlight %}

{% highlight vb %}

' Add an image into the control.

Me.buttonAdv1.Image = Global.treeview.Properties.Resources.Calculator

' Sets the relative location of the image to the text.

Me.buttonAdv1.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText

{% endhighlight %}

{% endtabs %}

