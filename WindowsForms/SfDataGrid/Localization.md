---
layout: post
title: Localization
description: This section explains about the localization support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Localization
Localization is the process of translating the application resources into different language for the specific cultures. The SfDataGrid can be localized by adding [resource](https://msdn.microsoft.com/library/aa992030.aspx) file. Application culture can be changed by setting [CurrentUICulture ](https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.currentuiculture(v=vs.110).aspx)before `InitializeComponent` method.

## Localize at Sample Level
To localize the SfDataGrid based on `CurrentUICulture` using resource files, follow the below steps.


1) Create new folder and named as Resources in your application.

2) Add the default resource file of SfDataGrid into Resources folder. You can download the `Syncfusion.SfDataGrid.WinForms.resx` [here](http://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.SfDataGrid.WinForms-917181687.zip).

![](Localization_images/Localization_img1.png) 

3) Right-click on the Resources folder, select**Add** and then **NewItem**.

4) In Add New Item wizard, select the **Resource File** option and name the filename as Syncfusion.SfDataGrid.WinForms.&lt;culture name&gt;.resx. For example, have to give name as Syncfusion.SfDataGrid.WinForms.de-DE.resx for German culture.

![](Localization_images/Localization_img2.png)

5) The culture name that indicates the name of language and country.
6) Now, select `Add` option to add the resource file in**Resources** folder.

![](Localization_images/Localization_img3.png) 

7) Add the Name/Value pair in Resource Designer of Syncfusion. SfDataGrid.WinForms.de-DE.resx file and change its corresponding value to corresponding culture.

![](Localization_images/Localization_img4.png) 

8) Now, set the `CurrentCulture` of the Application before the `InitializeComponent` method and Run the sample.

{% tabs %}
{% highlight c# %}
public Form1()
{
    System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("de-DE");
    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");
    InitializeComponent();
}        
{% endhighlight %}
{% highlight vb %}
Public Sub New()
	System.Threading.Thread.CurrentThread.CurrentCulture = New System.Globalization.CultureInfo("de-DE")
	System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo("de-DE")
	InitializeComponent()
End Sub  
{% endhighlight %}
{% endtabs %}

![](Localization_images/Localization_img5.png)

## Editing Default Resource File
The default resource file can be edited by adding it to Resources folder of the application where SfDataGrid reads the static texts from here. The default resource file can be download from [here](http://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.SfDataGrid.WinForms-917181687.zip).

![](Localization_images/Localization_img6.png)

Now, change the Name/Value pair in Resource Designer of `Syncfusion.SfDataGrid.WinForms.resx` file.

![](Localization_images/Localization_img7.png)

Now run the sample,

![](Localization_images/Localization_img8.png)

## Localize Resource File with Different Assembly or Namespace
By default, SfDataGrid try to read the resource file from executing assembly and its default namespace by using [Assembly.GetExecuteAssembly](https://msdn.microsoft.com/en-us/library/system.reflection.assembly.getexecutingassembly.aspx) method. When the resource file is located at different assembly or namespace, then it can be set to the SfDataGrid by using[SR.SetResources](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SR~SetResources.html) method.

{% tabs %}
{% highlight c# %}
public Form1()
{
    System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("de-DE");
    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");

    // Set the Custom assembly and namespace for the localization.
    SR.SetResources(typeof(CustomSfDataGrid).Assembly, "SfDataGridExt");
    InitializeComponent();
}        
{% endhighlight %}
{% highlight vb %}
public Form1()
{
    System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("de-DE");
    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");

    // Set the Custom assembly and namespace for the localization.
    SR.SetResources(typeof(CustomSfDataGrid).Assembly, "SfDataGridExt");
    InitializeComponent();
}        
{% endhighlight %}
{% endtabs %}
