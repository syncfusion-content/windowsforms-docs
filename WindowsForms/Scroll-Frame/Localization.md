---
layout: post
title: Localization in Windows Forms Scroll Frame control | Syncfusion®
description: Learn about Localization support in Syncfusion® Windows Forms Scroll Frame (SfScrollFrame) control and more details.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

## Localization

Localization is the process of translating the application resources into different language for the specific cultures. You can localize the default context menu of the scrollbars by adding resource file. Application culture can be changed by setting the CurrentUICulture before InitializeComponent() method.

### Adding Resx file to application

To add the resx file for the application, follow steps:

1. Create new folder and named as Resources in your application.

2. Add the default resource file of `SfScrollFrame` into Resources folder. You can download the Syncfusion.Core.WinForms.resx [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.Core.WinForms-1127975576).
![WinForms showing add the default resource file in scrollframe](SfScrollFrame_images/SfScrollFrame_img10.jpg)

3. Right-click on the Resources folder, select Add and then NewItem. 

4. In Add New Item wizard, select the Resource File option and name the filename as Syncfusion.Core.WinForms.&lt;culture name&gt;.resx. For example, you have to give name as Syncfusion.Core.WinForms.de-DE.resx for German culture. 

5. The culture name indicates the name of language and country
![WinForms showing the resoure file name new added in scrollframe](SfScrollFrame_images/SfScrollFrame_img11.jpg) 

6. Now, select Add option to add the resource file in Resources folder.<br>
![WinForms showing the different resource file added in scrollframe ](SfScrollFrame_images/SfScrollFrame_img12.jpg)

7. Add the Name or Value pair in Resource Designer of Syncfusion.Core.WinForms.de-DE.resx file and change its corresponding value to the corresponding culture.
![Winforms showing the add name or value in resource file in scrollframe](SfScrollFrame_images/SfScrollFrame_img13.jpg) <br>
![Winforms showing the applied the localization in scrollframe](SfScrollFrame_images/SfScrollFrame_img14.jpg)

### Editing the default culture resource

You can edit the default resource file by adding it to Resources folder of your application where SfScrollFrame reads the static texts from here. You can download the default resource file from [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.Core.WinForms-1127975576).

![WinForms showing the edit the default resource fiel in scrollframe](SfScrollFrame_images/SfScrollFrame_img15.jpg)

![Winforms showing the add name or value in resource file in scrollframe](SfScrollFrame_images/SfScrollFrame_img16.jpg)

![Winforms showing the applied the localization in scrollframe](SfScrollFrame_images/SfScrollFrame_img17.jpg)

### Localize when the resource file present in different assembly or different namespace

If resource (.resx) files are added into different assembly other than start up application, call the `SetResources` method of `LocalizationResource` follows.

{% tabs %}
{% highlight c# %}
System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");
LocalizationResourceBase.SetResources(typeof(ClassName).Assembly, "nameSpace");
InitializeComponent();
{% endhighlight %}
{% endtabs %}