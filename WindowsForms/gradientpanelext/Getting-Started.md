---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating gradientpanelext
platform: WindowsForms
control: GradientPanelExt
documentation: ug
---
# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio, and add the **GradientPanelExt** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#gradientpanelext) section to get the list of assemblies or NuGet package details that need to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details on how to install NuGet packages in a Windows Forms application.

## Adding the GradientPanelExt control via designer

The following steps describe how to create the **GradientPanelExt** control via the designer.

1) Create a new Windows Forms application in Visual Studio.

2) The **GradientPanelExt** control can be added to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically.

* Syncfusion.Shared.Base

   ![Drag and drop GradientPanelExt from toolbox](GradientPanelExt_images/Overview_img373.png)
 
3) The Gradient colors for the panel can be set by defining gradient styles and colors.

4) We can add the primitives to the control using **GradientPanelExt PrimitiveCollection Editor which is displayed by `Primitive` property. Please refer below screenshot.

   ![Windows Forms GradientPanelExt showing primitive collection editor](GradientPanelExt_images/Overview_img374.png)

5) Set the primitive alignment and position. 

## Adding the GradientPanelExt control via code

The following steps illustrate how to create an **GradientPanelExt** control programmatically.

1) Create a C# or VB application via Visual Studio.

2) Add the following reference to the project.

* Syncfusion.Shared.Base

3) Include the required namespace

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

4) Create an instance of **GradientPanelExt** and add it to the form. 

{% tabs %}

{% highlight C# %}

GradientPanelExt gradientPanelExt = new GradientPanelExt();
this.Controls.Add(gradientPanelExt);

{% endhighlight %}

{% highlight vb %}

Private gradientPanelExt As GradientPanelExt = New GradientPanelExt()
Me.Controls.Add(gradientPanelExt)

{% endhighlight %}

{% endtabs %}

5) Set the following properties and add primitives to the gradient panel.

{% tabs %}
{% highlight c# %}

//GradientPanelExt
GradientPanelExt gradientPanelExt = new GradientPanelExt();
this.Controls.Add(gradientPanelExt);
gradientPanelExt.BackColor = System.Drawing.Color.Transparent;
gradientPanelExt.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.SystemColors.ControlText, System.Drawing.Color.MediumSlateBlue);
gradientPanelExt.Size = new System.Drawing.Size(343, 128);
gradientPanelExt.CornerRadius = 10;

//First Label
Label label1 = new Label();
label1.Location = new System.Drawing.Point(52, 29);
label1.BackColor = System.Drawing.Color.Transparent;
label1.ForeColor = System.Drawing.Color.White;
label1.Size = new System.Drawing.Size(58, 13);
label1.Text = "Username:";

//Second Label
Label label2 = new Label();
label2.Location = new System.Drawing.Point(52, 60);
label2.BackColor = System.Drawing.Color.Transparent;
label2.ForeColor = System.Drawing.Color.White;
label2.Size = new System.Drawing.Size(58, 13);
label2.Text = "Password:";

//First TextBoxExt
TextBoxExt textBoxExt1 = new TextBoxExt();
textBoxExt1.Location = new System.Drawing.Point(113, 26);
textBoxExt1.Size = new System.Drawing.Size(100, 20);
textBoxExt1.Text = "David carter";

//Second TextBoxExt
TextBoxExt textBoxExt2 = new TextBoxExt();
textBoxExt2.Location = new System.Drawing.Point(113, 57);
textBoxExt2.PasswordChar = '*';
textBoxExt2.Size = new System.Drawing.Size(100, 20);
textBoxExt2.Text = "Welcome";

//textPrimitive1
TextPrimitive textPrimitive1 = new TextPrimitive();
textPrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Top;
textPrimitive1.BorderColor = System.Drawing.Color.Transparent;
textPrimitive1.Size = new System.Drawing.Size(50, 20);
textPrimitive1.Text = "Login";
textPrimitive1.TextColor = System.Drawing.Color.White;

// textPrimitive2
TextPrimitive textPrimitive2 = new TextPrimitive();
textPrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;
textPrimitive2.BackColor = System.Drawing.Color.White;
textPrimitive2.Position = 104;
textPrimitive2.Size = new System.Drawing.Size(40, 20);
textPrimitive2.Text = "Ok";
textPrimitive2.TextColor = System.Drawing.Color.Black;
            
// textPrimitive3
TextPrimitive textPrimitive3 = new TextPrimitive();
textPrimitive3.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;
textPrimitive3.BackColor = System.Drawing.Color.White;
textPrimitive3.Position = 160;
textPrimitive3.Size = new System.Drawing.Size(40, 20);
textPrimitive3.Text = "Cancel";
textPrimitive3.TextColor = System.Drawing.Color.Black;

//Adding primitives
gradientPanelExt.Primitives.AddRange(new Primitive[] { textPrimitive1, textPrimitive2, textPrimitive3 });

//Add the controls
gradientPanelExt.Controls.Add(label1);
gradientPanelExt.Controls.Add(label2);
gradientPanelExt.Controls.Add(textBoxExt1);
gradientPanelExt.Controls.Add(textBoxExt2);

{% endhighlight %}

{% highlight vb %}

'GradientPanelExt
Dim gradientPanelExt As New GradientPanelExt()
Me.Controls.Add(gradientPanelExt)
gradientPanelExt.BackColor = System.Drawing.Color.Transparent
gradientPanelExt.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.SystemColors.ControlText, System.Drawing.Color.MediumSlateBlue)
gradientPanelExt.Size = New System.Drawing.Size(343, 128)
gradientPanelExt.CornerRadius = 10

'First Label
Dim label1 As New Label()
label1.Location = New System.Drawing.Point(52, 29)
label1.BackColor = System.Drawing.Color.Transparent
label1.ForeColor = System.Drawing.Color.White
label1.Size = New System.Drawing.Size(58, 13)
label1.Text = "Username:"

'Second Label
Dim label2 As New Label()
label2.Location = New System.Drawing.Point(52, 60)
label2.BackColor = System.Drawing.Color.Transparent
label2.ForeColor = System.Drawing.Color.White
label2.Size = New System.Drawing.Size(58, 13)
label2.Text = "Password:"

'First TextBoxExt
Dim textBoxExt1 As New TextBoxExt()
textBoxExt1.Location = New System.Drawing.Point(113, 26)
textBoxExt1.Size = New System.Drawing.Size(100, 20)
textBoxExt1.Text = "David carter"

'Second TextBoxExt
Dim textBoxExt2 As New TextBoxExt()
textBoxExt2.Location = New System.Drawing.Point(113, 57)
textBoxExt2.PasswordChar = "*"c
textBoxExt2.Size = New System.Drawing.Size(100, 20)
textBoxExt2.Text = "Welcome"

'textPrimitive1
Dim textPrimitive1 As New TextPrimitive()
textPrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Top
textPrimitive1.BorderColor = System.Drawing.Color.Transparent
textPrimitive1.Size = New System.Drawing.Size(50, 20)
textPrimitive1.Text = "Login"
textPrimitive1.TextColor = System.Drawing.Color.White

' textPrimitive2
Dim textPrimitive2 As New TextPrimitive()
textPrimitive2.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom
textPrimitive2.BackColor = System.Drawing.Color.White
textPrimitive2.Position = 104
textPrimitive2.Size = New System.Drawing.Size(40, 20)
textPrimitive2.Text = "Ok"
textPrimitive2.TextColor = System.Drawing.Color.Black

' textPrimitive3
Dim textPrimitive3 As New TextPrimitive()
textPrimitive3.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom
textPrimitive3.BackColor = System.Drawing.Color.White
textPrimitive3.Position = 160
textPrimitive3.Size = New System.Drawing.Size(40, 20)
textPrimitive3.Text = "Cancel"
textPrimitive3.TextColor = System.Drawing.Color.Black

'Adding primitives
gradientPanelExt.Primitives.AddRange(New Primitive() { textPrimitive1, textPrimitive2, textPrimitive3 })

'Add the controls
gradientPanelExt.Controls.Add(label1)
gradientPanelExt.Controls.Add(label2)
gradientPanelExt.Controls.Add(textBoxExt1)
gradientPanelExt.Controls.Add(textBoxExt2)

{% endhighlight %}
{% endtabs %}
 
![Windows Forms GradientPanelExt showing added primitives and other controls](GradientPanelExt_images\GradientPanelExt_addcontrols.png)
