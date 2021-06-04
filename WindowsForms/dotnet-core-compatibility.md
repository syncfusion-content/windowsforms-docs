---
layout: post
title: .NET Core | Windows Forms | Syncfusion
description: Learn here about how to creating the Windows Forms Applications using .NET Core and the Syncfusion Windows Forms controls
platform: windowsforms
control: .NET Core
documentation: ug
---

# WinForms Applications using .NET Core and Syncfusion WinForms Controls

Syncfusion Essential Studio for Windows Forms suits .NET core assemblies for building Windows Forms .NET Core applications using Syncfusion Controls. This section explains how to create the project in .NET Core application and using syncfusion Windows Forms controls.

N> All Syncfusion Windows Forms controls supports .NET Core Framework except the controls labeled as `classic`.

## Create a .NET Core project

**Step 1**: Open Visual Studio, go to **File > New > Project...** and you can now see **Create a new project** dialog. Here, select **Windows Forms App (.NET Core)** template and click **Next**. 

![NETcore showing create the project](NETcore_images/NETcore_createproject.jpeg)

**Step 2**: You will now see **Configure your new project** dialog. Here, fill in the necessary details and click **Create**.

 ![NETcore showing configure the project](NETcore_images/NETcore_configureproject.jpeg)

**Step 3**: Finally, Windows Forms (.NET Core) sample project is created.

![NETcore application output](NETcore_images/NETcore_sample.jpeg)

**Step 4**: Before adding your controls into the application, first you need to remove the default template like in the below screenshot. 

![NETcore showing hide the code](NETcore_images/NETcore_hidecode.jpeg)


N> If you do not remove the default template, you cannot see your control in the output form.

**Step 5**: Now, you can add your controls. To do so, follow the immediate section **Adding controls in Windows Forms (.NET Core) application** for more details. 

## Adding controls in Windows Forms (.NET Core) application

The below section explains how to add your controls in Windows Forms (.NET Core) application.

### Through assembly deployment

In **Solution Explorer**, right-click on **Dependencies** and select **Add Reference**. 

![NETcore showing add reference](NETcore_images/NETcore_reference.png)

Now, **Reference Manager** dialog will be opened. Here click **Browse** and select the needed assemblies from the location mentioned in below note section. On selecting necessary assemblies, click **Add** and then click **Ok**. Now, required assemblies are added in to the project, like in the below screenshot.

N> You can get Syncfusion Windows Forms (.NET Core) controls assemblies from `netcoreapp3.0` folder in the following location - C:\Program Files (x86)\Syncfusion\Essential Studio\Windows\x.x.x.x\precompiledassemblies

![NETcore showing assembly](NETcore_images/NETcore_assembly.jpeg)

### Through NuGet Package

[Check here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details regarding how to install the NuGet packages in Windows Forms application.  

### Example: Adding ButtonAdv control through code

We are now going to see a demo on how to add **ButtonAdv** control in WinForms .NET Core application.

**Step 1**:	Add the following dependent assembly for the inclusion of **ButtonAdv** control.

* Syncfusion.Shared.Base

**Step 2**: Create an instance of the control. Assign necessary properties with proper values and add the control instance to the form. 

{% tabs %}
{% highlight c# %}

ButtonAdv button = new ButtonAdv();
button.Text = ”ButtonAdv”;
this.controls.add(button);

{% endhighlight %}
{% endtabs %}

**Step 3**: Run the application.

![NETcore showing control output](NETcore_images/NETcore_controloutput.jpeg)

