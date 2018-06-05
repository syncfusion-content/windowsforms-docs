---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: MetroForm
documentation: ug
---

# Getting started

This section describes how to inherit a `MetroForm` control in a Windows Forms application and overview of its basic functionalities.

* Adding MetroForm control

## Assembly deployment

The following assembly file should be added as reference to use the MetroForm in any application:

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
Syncfusion.Shared.Base contains style related properties of MetroForm and various editor controls.
</td>
</tr>
</table>

## Installing NuGet Packages

To use MetroForm control in Windows Forms application via nuget, the following packages should be installed.
 
<table>
<tr>
<td>{{'**S.No**'| markdownify }}
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

# Creating simple application with MetroForm

You can create the Windows Forms application with MetroForm control as follows:

1. [Creating project](#creating-the-project)
2. [Configure MetroForm](#configure-metroForm)
3. [Add Caption Labels](#add-caption-labels)
3. [Add Caption Images](#add-caption-images)

## Creating the project

Create a new Windows Forms project in the Visual Studio to change the default form into MetroForm.

## Configure MetroForm

The default Form can be changed into the MetroForm by following the given steps.

To add control manually in C#, follow the given steps:

**Step 1** - Add the following required assembly references to the project:

	* Syncfusion.Shared.Base.dll	

**Step 2** - Include the namespaces **Syncfusion.Windows.Forms**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms

{% endhighlight  %}

{% endtabs %}
   
**Step 3** - Change the class to inherit the MetroForm instead of the default Form as follows.

{% tabs %}

{% highlight C# %}

public partial class MetroForm : MetroForm 

{% endhighlight %}

{% highlight VB %}

Partial Public Class MetroForm Inherits MetroForm
 
{% endhighlight %}

{% endtabs %} 
   
![](Getting-Started_images/MetroForm.png)

## Add Caption Labels

The `MetroForm` allows you to add caption labels with design and appearance. Caption labels can be added to the MetroForm through the `CaptionLabels`collection.

Following code illustrates how to add the caption labels to the MetroForm:

{% tabs %}

{% highlight C# %}

// Add caption labels for MetroForm

Syncfusion.Windows.Forms.CaptionLabel captionLabel1 = new Syncfusion.Windows.Forms.CaptionLabel();

captionLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

captionLabel1.ForeColor = System.Drawing.Color.White;

captionLabel1.Name = "CaptionLabel1";

captionLabel1.Size = new System.Drawing.Size(400, 24);

captionLabel1.Text = "Label";

this.CaptionLabels.Add(captionLabel1);

{% endhighlight  %}

{% highlight VB %}

' Add caption labels for MetroForm

Dim captionLabel1 As Syncfusion.Windows.Forms.CaptionLabel = New Syncfusion.Windows.Forms.CaptionLabel

captionLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)))

captionLabel1.ForeColor = System.Drawing.Color.White

captionLabel1.Name = "CaptionLabel1"

captionLabel1.Size = new System.Drawing.Size(400, 24)

captionLabel1.Text = "Label"

Me.CaptionLabels.Add(captionLabel1)

{% endhighlight  %}

{% endtabs %} 

![](Getting-Started_images/Captionlabel.png)

## Add Caption Images

The `MetroForm` allows you to add caption images with design and appearance. Caption images can be added to the MetroForm through the `CaptionImages`collection.
Following code illustrates how to add the caption images to the MetroForm:

{% tabs %}

{% highlight C# %}

// Add caption image for MetroForm

Syncfusion.Windows.Forms.CaptionImage captionImage1 = new Syncfusion.Windows.Forms.CaptionImage();

captionImage1.BackColor = System.Drawing.Color.Transparent;

captionImage1.Image = ((System.Drawing.Image)(resources.GetObject("captionImage1.Image")));

captionImage1.Location = new System.Drawing.Point(30, 5);

captionImage1.Name = "CaptionImage1";

captionImage1.Size = new System.Drawing.Size(35, 35);

this.CaptionImages.Add(captionImage1);

{% endhighlight  %}

{% highlight VB %}

' Add caption image for MetroForm

Dim captionImage1 As Syncfusion.Windows.Forms.CaptionImage = New Syncfusion.Windows.Forms.CaptionImage

captionImage1.BackColor = System.Drawing.Color.Transparent

captionImage1.Image = ((System.Drawing.Image)(resources.GetObject("captionImage1.Image")))

captionImage1.Location = New System.Drawing.Point(30, 5)

captionImage1.Name = "CaptionImage1"

captionImage1.Size = New System.Drawing.Size(35, 35)

Me.CaptionImages.Add(captionImage1)

{% endhighlight  %}

{% endtabs %} 

![](Getting-Started_images/Captionimage.png)
