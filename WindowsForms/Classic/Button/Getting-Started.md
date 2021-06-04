---
layout: post
title: Getting Started with Windows Forms xptoolbar control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms ButtonAdv(Classic) control and more details.
platform: WindowsForms
control: ButtonAdv
documentation: ug
---

# Getting Started with Windows Forms ButtonAdv(Classic)

This section explains how to create a new Windows Forms project in Visual Studio and add **ButtonAdv"** with it's basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#buttonadv) section to get the list of assemblies or NuGet package details which needs to be added as reference to use the control in any application.

[Check here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details about on how to install nuget packages in Windows Forms application. 

## Adding a ButtonAdv control through designer

**Step 1**: Create a new Windows Forms application in Visual Studio. Drag and drop the ButtonAdv from toolbox into form design view. The following dependent assemblies will be added automatically.

* Syncfusion.Shared.Base

![Windows forms ButtonAdv drag and drop from toolbox](Overview_images/ButtonAdv_dragdrop.png)

![Windows forms ButtonAdv Assembly reference](Overview_images/ButtonAdv_reference.png)

**Step 2**: Set the desired properties for **"ButtonAdv"** control through the **"Properties"** dialog window. Here we have illustrated an example of how to add image and customize its properties. 

![Windows forms ButtonAdv customizing Image property](Overview_images/ButtonAdv_image.png)

![Windows forms ButtonAdv TextImage relation property](Overview_images/ButtonAdv_textimage.png)

**Step 3**: Run the application and the following output will be shown:

![Windows forms ButtonAdv through designer](Overview_images/ButtonAdvoutputdesigner_office2019theme.png)

## Adding a ButtonAdv control through code

**Step 1**: Create a new Windows Forms application in Visual Studio. Add the following required assembly references and namespace to the project. 

* Syncfusion.Shared.Base

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

![Windows forms ButtonAdv dependency assembly reference](Overview_images/ButtonAdvimagereference.png)
 
**Step 2**: In Form1.cs, create an instance of **"ButtonAdv"** control and add in to the form. Also you can customize the ButtonAdv properties using the following code.

{% tabs %}

{% highlight c# %}

 public Form1()
 {
            
            InitializeComponent();
            ButtonAdv button = new ButtonAdv();
            button.UseVisualStyle = true;
            button.Location = new System.Drawing.Point(296, 179);
            button.Name = "buttonAdv1";
            button.Size = new System.Drawing.Size(165, 82);
            button.Text = "ButtonAdv";
            button.ThemeName = "Office2019Colorful";
            this.Controls.Add(button);
}

{% endhighlight %}

{% highlight vb %}

Public Sub New()

    InitializeComponent()
    Dim button As ButtonAdv = New ButtonAdv()
    button.UseVisualStyle = True
    button.Location = New System.Drawing.Point(296, 179)
    button.Name = "buttonAdv1"
    button.Size = New System.Drawing.Size(165, 82)
    button.Text = "ButtonAdv"
    button.ThemeName = "Office2019Colorful"
    Me.Controls.Add(button)

End Sub

{% endhighlight %}

{% endtabs %}

**Step 3**: Run the application and the following output will be shown.

![Windows forms ButtonAdv through code](Overview_images/ButtonAdvoutputthroughcode.png)

## Adding an image and relation location for the image with ButtonAdv's Text

In ButtonAdv control, we can embed image using the **Image** property. Meanwhile in-order to set the image along with custom text, we can use the **Text** property and define relation between image and text using **TextImageRelation** property.

{% tabs %}

{% highlight c# %}

 public Form1()
 {
            
            InitializeComponent();
            ButtonAdv button = new ButtonAdv();
            //Adding the image to ButtonAdv control
            button.Image = global::WindowsFormsApplication1.Properties.Resources.Calculatorimage;
            button.Location = new System.Drawing.Point(296, 179);
            button.Name = "buttonAdv1";
            button.Size = new System.Drawing.Size(165, 82);
            button.Text = "ButtonAdv";
            //Setting the TextImageRelation property to the button
            button.TextImageRelation = TextImageRelation.ImageBeforeText;
            button.ThemeName = "Office2019Colorful";
            this.Controls.Add(button);
}

{% endhighlight %}

{% highlight vb %}

Public Sub New()

    InitializeComponent()
    Dim button As ButtonAdv = New ButtonAdv()
    'Adding the image to ButtonAdv control
    button.Image = [global].WindowsFormsApplication1.Properties.Resources.Calculatorimage
    button.Location = New System.Drawing.Point(296, 179)
    button.Name = "buttonAdv1"
    button.Size = New System.Drawing.Size(165, 82)
    button.Text = "ButtonAdv"
    'Setting the TextImageRelation property to the button
    button.TextImageRelation = TextImageRelation.ImageBeforeText
    button.ThemeName = "Office2019Colorful"
    Me.Controls.Add(button)

End Sub

{% endhighlight %}

{% endtabs %}

![Windows forms ButtonAdv through code](Overview_images/ButtonAdvoutputdesigner_office2019theme.png)

