---
layout: post
title:SfScrollFrame/ContextMenu
description: This section explains how to customize the context menu of the SfScrollFrame.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

## Localization
Localization is the process of translating the application resources into different language for the specific cultures. You can localize the default context menu of the scrollbars by adding resource file. Application culture can be changed by setting CurrentUICulture before InitializeComponent() method.

### Adding Resx file to application
To add the resx file for the application for localization follow the below steps,

1. Create new folder and named as **Resources** in your application.

2. Add the default resource file of `SfScrollFrame` into **Resources* folder. You can download the Syncfusion.Core.WinForms.resx [here](http://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.Core.WinForms-1127975576).<br>
![](SfScrollFrame_images/SfScrollFrame_img10.jpg)

3. Right-click on the Resources folder, select **Add* and then **NewItem**. 

4. In Add New Item wizard, select the **Resource File** option and name the filename as **Syncfusion.Core.WinForms.&lt;culture name&gt;.resx**. For example, you have to give name as **Syncfusion.Core.WinForms.de-DE.resx** for German culture. 

5. The culture name that indicates the name of language and country.<br>
![](SfScrollFrame_images/SfScrollFrame_img11.jpg) 

6. Now, select Add ption to add the resource file in **Resources** folder.<br>
![](SfScrollFrame_images/SfScrollFrame_img12.jpg)

7. Add the Name/Value pair in Resource Designer of **Syncfusion.Core.WinForms.de-DE.resx**file and change its corresponding value to corresponding culture.<br>
![](SfScrollFrame_images/SfScrollFrame_img13.jpg) <br>
![](SfScrollFrame_images/SfScrollFrame_img14.jpg)

### Editing the default culture resource
You can edit default resource file by adding it to Resources folder of your application where SfScrollFrame reads the static texts from here. You can download the default resource file from [here](http://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.Core.WinForms-1127975576).

![](SfScrollFrame_images/SfScrollFrame_img15.jpg)

![](SfScrollFrame_images/SfScrollFrame_img16.jpg)

![](SfScrollFrame_images/SfScrollFrame_img17.jpg)

### Localize when the resource file present in different assembly or different namespace?
If resource (.resx) files are added into different assembly other than start up application, then call the `SetResources` method of `LocalizationResource` like below.

{% tabs %}
{% highlight c# %}
System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");
LocalizationResourceBase.SetResources(typeof(ClassName).Assembly, "nameSpace");
InitializeComponent();
{% endhighlight %}
{% endtabs %}