---
layout: post
title: Localization in Windows Forms ComboBox control | Syncfusion
description: Learn about Localization support in Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Localization in Windows Forms ComboBox (SfComboBox)

Localization is a process of translating the application resources into different languages for some specific cultures. The SfComboBox can be localized by adding the `resource` file. Application culture can be changed by setting the `CurrentUICulture` before `InitializeComponent` method.

## Localize at sample level

To localize the SfComboBox based on the `CurrentUICulture` by using the resource files, follow the steps:

1. Create a new folder and name it as Resources in your application.
2. Add the default resource file of the SfListView into Resources folder. You can download the `Syncfusion.   SfListView.WinForms.resx` [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/ResourceFile1283641291).

  ![Folder in which the resource file to be added](Localization_images/Localization_img1.png)
3. Right click on the Resources folder, select Add then NewItem.
4. In the Add New Item wizard, select the Resource file option and name the filename as Syncfusion.SfListView.WinForms.<culture name>.resx. For example, give name as Syncfusion.SfListView.WinForms.de-DE.resx for German culture.
    
  ![Custom resource file](Localization_images/Localization_img2.png)
5. The culture name that indicates the name of the language and country.
6. Now, select Add option to add the resource file in Resources folder.

  ![Newly added resource file](Localization_images/Localization_img3.png)
7. Add the Name or Value pair in the Resource Designer of Syncfusion.SfListView.WinForms.de-DE.resx file and change its corresponding value to the corresponding culture.

  ![Editing the default strings](Localization_images/Localization_img4.png)
8. Now, set the `CurrentCulture` of the Application before the `InitializeComponent` method and run the sample.

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

![ComboBox with localized strings](Localization_images/Localization_img5.png)

## Editing default resource file

The default resource file can be edited by adding it to the Resources folder of the application where SfComboBox reads the static texts here. The default resource file can be downloaded [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/ResourceFile1283641291).

![Default resource file](Localization_images/Localization_img6.png)

Now, change the Name or Value pair in the Resource Designer of `Syncfusion.SfListView.WinForms.resx` file.

![Editing the default strings](Localization_images/Localization_img7.png)

Run the sample.

![Customized strings in default culture](Localization_images/Localization_img8.png)

## Localize resource file with different assembly or namespace

By default, the `SfListView` tries to read the resource file from executing assembly and its default namespace by using the Assembly.GetExecuteAssembly method. When the resource file is located at different assembly or namespace, it can be set to the `SfListView` by using the SR.SetResources method.

{% tabs %}
{% highlight c# %}
public Form1()
{
    System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("de-DE");
    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");

    // Set the Custom assembly and namespace for the localization.
    SR.SetResources(typeof(CustomSfListView).Assembly, "SfListViewExt");
    InitializeComponent();
}
{% endhighlight %}
{% highlight vb %}
Public Sub New()
	System.Threading.Thread.CurrentThread.CurrentCulture = New System.Globalization.CultureInfo("de-DE")
	System.Threading.Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo("de-DE")

	' Set the Custom assembly and namespace for the localization.
	SR.SetResources(GetType(CustomSfListView).Assembly, "SfListViewExt")
	InitializeComponent()
End Sub
{% endhighlight %}
{% endtabs %}

## Right to left 

The SfComboBox control elements can be aligned in right-to-left layout. The control can be laid out from right to left when the `RightToLeft` property is set to `Yes`.

{% tabs %}
{% highlight c# %}
sfComboBox1.RightToLeft = RightToLeft.Yes;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.RightToLeft = RightToLeft.Yes
{% endhighlight %}
{% endtabs %}

![SfComboBox with RightToLeft alignment](Localization_images/Localization_img9.png)
