---
layout: post
title: Steps to add Syncfusion® Essential® Windows Forms controls 
description: Learn here about Steps to Add Syncfusion® controls support in Syncfusion® Essential® Windows Forms, and more.
platform: windowsforms
control: Introduction
documentation: ug
---

# Add Windows Forms Syncfusion<sup>®</sup> Controls 

The Syncfusion<sup>®</sup> Windows Forms controls can be added in a Visual Studio projects by using either of the following ways,

* Through Designer
* Through Code-Behind
* Through Project Template
* Through Item Template

## Through Designer

Syncfusion<sup>®</sup> UI for Windows Forms are added automatically to the Visual Studio Toolbox during installation. The following steps helps to add required Essential<sup>®</sup> Windows Forms control through drag and drop from Toolbox. For example: **TextBoxExt**

1.Create a Windows Forms project in Visual Studio.

2.Find **TextBoxExt** by typing the name of the “TextBoxExt” in the search box.

![Add-Syncfusion-Control_images1](Add-Syncfusion-Control_images/AddSyncfusionControls_img1.jpeg)

3.Drag **TextBoxExt** and drop it in the designer.

![Add-Syncfusion-Control_images2](Add-Syncfusion-Control_images/AddSyncfusionControls_img2.jpeg)

## Through Code-Behind

Syncfusion<sup>®</sup> UI for Windows Forms can added at runtime using C# / VB. The following steps helps to add required Essential<sup>®</sup> Windows Forms control through code. For example: **TextBoxExt**.

1. Create a Windows Forms project in Visual Studio and refer to the following assemblies.

   * Syncfusion.Tools.Base.dll
   * Syncfusion.Tools.Windows.dll
   * Syncfusion.Shared.Base.dll
   * Syncfusion.Shared.Windows.dll

2. Create an instance of **TextBoxExt** using it namespace

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

Syncfusion.Windows.Forms.Tools.TextBoxExt textBoxExt1 = new Syncfusion.Windows.Forms.Tools.TextBoxExt();

{% endhighlight %}

{% highlight VB %}

Dim textBoxExt1 As New Syncfusion.Windows.Forms.Tools.TextBoxExt()

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

3. Set Location and Size of the control with require value. Here, set its location as (100,100) and Size as (200,25) through its `Location` and ‘Size’ property respectively.

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}

this.textBoxExt1.Location = new System.Drawing.Point(100, 100);

this.textBoxExt1.Size = new System.Drawing.Size(200, 25);

{% endhighlight %}

{% highlight VB %}

Me.textBoxExt1.Location = New System.Drawing.Point(100, 100)

Me.textBoxExt1.Size = New System.Drawing.Size(200, 25)

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

4. Add the created instance to the parent form (or the needed layout panels) through its child collection property that named as `Controls`.

{% capture codesnippet3 %}
{% tabs %}

{% highlight C# %}

//here this denotes parent main form

this.Controls.Add(this.textBoxExt1);

{% endhighlight %}

{% highlight VB %}

'here this denotes parent main form

Me.Controls.Add(Me.textBoxExt1) 

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

![Add-Syncfusion-Control_images3](Add-Syncfusion-Control_images/AddSyncfusionControls_img3.jpeg)

## Through Project Template

Syncfusion<sup>®</sup> provides the Visual Studio Project Templates for the Syncfusion<sup>®</sup> Windows Forms platform to create Syncfusion<sup>®</sup> Windows Forms Application. 

I> The Syncfusion<sup>®</sup> Windows Forms templates are available from v14.3.0.49. 

### Create Syncfusion<sup>®</sup> Windows Forms Project 

The following steps direct you to create the Syncfusion<sup>®</sup> Windows Forms project through the Visual Studio Project Template. 

1. To create a Syncfusion<sup>®</sup> Windows Forms project, choose New Project-> Syncfusion<sup>®</sup>->Windows->Syncfusion<sup>®</sup> Windows Forms Application from Visual Studio

   ![Add-Syncfusion-Control_images1](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-1.png)

2. Name the Project, choose the destination location when required and set the Framework of the project, then click OK.  

   N> Minimum target Framework is 3.5 for Syncfusion<sup>®</sup> Windows Forms project templates. 

3. Choose the options to configure the Syncfusion<sup>®</sup> Windows Forms Application by using the following Project Configuration Wizard.  
  
   ![Add-Syncfusion-Control_images2](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-2.png)
                                                     
   ### Project configurations: 

   **Language:** Select the language, either C# or VB. 

   ![Add-Syncfusion-Control_images3](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-3.png)

   **Assemblies From:** Choose the assembly location from where it is going to be added to the project. 

   ![Add-Syncfusion-Control_images4](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-4.png)

   **Select Control:** Choose the control based on your need. 

   ![Add-Syncfusion-Control_images5](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-5.png)
      
4. Once the Project Configuration Wizard is done, the Syncfusion<sup>®</sup> Windows Forms project is created with required references and forms. 

   ![Add-Syncfusion-Control_images6](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-6.png)

   ![Add-Syncfusion-Control_images7](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-7.png)

5. Then, Syncfusion<sup>®</sup> licensing registration required message box will be shown as follow, if you are installed the trial setup or NuGet packages since Syncfusion<sup>®</sup> introduced the licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio<sup>®</sup> release. Please navigate to the [help topic](https://help.syncfusion.com/common/essential-studio/licensing/overview#how-to-generate-syncfusion-license-key) which is shown in the licensing message box to generate and register the Syncfusion<sup>®</sup> license key to your project. Refer to this [blog](https://www.syncfusion.com/blogs/post/whats-new-in-2018-volume-2.aspx) post for understanding the licensing changes introduced in Essential Studio<sup>®</sup>.

   ![Add-Syncfusion-Control_images8](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-8.png)   

## Through Item Template

The Syncfusion<sup>®</sup> Item Templates Add new item feature provides support to Windows Forms platform. To add the Syncfusion<sup>®</sup> item files in Visual Studio, install Syncfusion<sup>®</sup> Essential Studio<sup>®</sup> for Windows Forms platform.The item template available from Syncfusion<sup>®</sup> Essential Studio<sup>®</sup> v13.1.0.21.

### Using Syncfusion<sup>®</sup> Item Template Gallery

Follow the given steps to add the Syncfusion<sup>®</sup> item in Visual Studio.

1. Open a new or existing Windows Forms application.

2. Right-click on the Windows Forms Project from the Solution Explorer. Select the Add Syncfusion<sup>®</sup> Item  New Item... option. Refer to the following screenshot
   for more information.

   ![Add-Syncfusion-Control_images1](Add-Syncfusion-Control_images\Syncfusion-Item-Template-Gallery-1.png)

3. Now the Syncfusion<sup>®</sup> Item Template Gallery window will open.

   ![Add-Syncfusion-Control_images2](Add-Syncfusion-Control_images\Syncfusion-Item-Template-Gallery-2.png)
   
4. Select the required version and themes or Form from the Syncfusion<sup>®</sup> Item Template Gallery. 

   ![Add-Syncfusion-Control_images3](Add-Syncfusion-Control_images\Syncfusion-Item-Template-Gallery-3.png)
   
   ![Add-Syncfusion-Control_images4](Add-Syncfusion-Control_images\Syncfusion-Item-Template-Gallery-4.png)

#### Platform

This is a combo box where you can choose the application’s platform. For now it contains Windows Forms Platform alone.

#### Version

Syncfusion’s Installed Build Versions are listed for Syncfusion<sup>®</sup> Essential Studio<sup>®</sup> v13.1.0.21 and later, for the installed Windows Forms platform. 

#### Template Gallery

This part contains a set of Syncfusion<sup>®</sup> Item Templates, and you can choose the Item Templates based on your need.

When Add button is clicked, then the selected item template is added to the project.

![Add-Syncfusion-Control_images5](Add-Syncfusion-Control_images\Syncfusion-Item-Template-Gallery-5.png)

5.Then, Syncfusion<sup>®</sup> licensing registration required message box will be shown as follow, if you are installed the trial setup or NuGet packages since Syncfusion<sup>®</sup> introduced the licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio<sup>®</sup> release. Please navigate to the [help topic](https://help.syncfusion.com/common/essential-studio/licensing/overview#how-to-generate-syncfusion-license-key) which is shown in the licensing message box to generate and register the Syncfusion<sup>®</sup> license key to your project. Refer to this [blog](https://www.syncfusion.com/blogs/post/whats-new-in-2018-volume-2.aspx) post for understanding the licensing changes introduced in Essential Studio<sup>®</sup>.

   ![Add-Syncfusion-Control_images8](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-8.png)

### Using Visual Studio Add new Item

Syncfusion<sup>®</sup> Project Template can be also add from the Visual Studio Item Template. Right-click on the Windows Forms Project Add ->New Item. You can refer to the following screenshot for more information.

![Add-Syncfusion-Control_images1](Add-Syncfusion-Control_images\Syncfusion-Add-New-Item-1.png)

1. The Syncfusion<sup>®</sup> Item Templates are available under the Syncfusion<sup>®</sup> tab. It is available for both C# Items and VB Items. 

   ![Add-Syncfusion-Control_images2](Add-Syncfusion-Control_images\Syncfusion-Add-New-Item-2.png)

2. Now the selected template is added to the project along with Syncfusion<sup>®</sup> references.

   ![Add-Syncfusion-Control_images3](Add-Syncfusion-Control_images\Syncfusion-Add-New-Item-3.png)

   ![Add-Syncfusion-Control_images4](Add-Syncfusion-Control_images\Syncfusion-Add-New-Item-4.png)

3. Then, Syncfusion<sup>®</sup> licensing registration required message box will be shown as follow, if you are installed the trial setup or NuGet packages since Syncfusion<sup>®</sup> introduced the licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio<sup>®</sup> release. Please navigate to the [help topic](https://help.syncfusion.com/common/essential-studio/licensing/overview#how-to-generate-syncfusion-license-key) which is shown in the licensing message box to generate and register the Syncfusion<sup>®</sup> license key to your project. Refer to this [blog](https://www.syncfusion.com/blogs/post/whats-new-in-2018-volume-2.aspx) post for understanding the licensing changes introduced in Essential Studio<sup>®</sup>.

   ![Add-Syncfusion-Control_images8](Add-Syncfusion-Control_images\Syncfusion-Project-Template-Gallery-8.png)
