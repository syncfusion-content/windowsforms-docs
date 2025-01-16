---
layout: post
title: Localization in Windows Forms Spreadsheet control | Syncfusion
description: Learn about Localization support in Syncfusion® Windows Forms Spreadsheet control, its elements and more details.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Localization in Windows Forms Spreadsheet

Localization is the process of configuring the application to a specific language. Spreadsheet provides support to localize all the static text in a Ribbon and all dialogs to any desired language. Localization can be done by adding resource file and setting the specific culture in the application.

Spreadsheet allows you to set custom resource using Resx file. You can define your string values in resource file for a specific culture and set the culture in your application.

## Set current UI culture to the application

To set the CultureInformation in the Application, set the `CurrentUICulture` before the InitializeComponent() method is called. 

Setting of the culture information,

{% tabs %}
{% highlight c# %}
   
public MainWindow()
{
    System.Threading.Thread.CurrentThread.CurrentUICulture = new CultureInfo("ja-JP");
    InitializeComponent();
}

{% endhighlight %}
{% endtabs %}

Now, the Application is set to the Japanese Culture info. 

## Localization using resource file

The following steps show how to implement the localization in Spreadsheet,

* Create a folder and name it as ‘Resources’ in your application.
* Add the default resource[English("en-US")] file of `Spreadsheet` in the 'Resources' folder named as Syncfusion.Spreadsheet.Windows.resx.
  You can download the Resx file [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.SfSpreadsheet.Windows991194474)
* Create Resx(resource) file under the 'Resources' folder and name it as Syncfusion.Spreadsheet.Windows.[Culture name].resx. 
  For example, Syncfusion.Spreadsheet.Windows.ja.resx for Japanese culture. 

![Multiple resource files to change the default strings](localization_images/Loc_Image1.JPG)

* Add the resource key such as name and its corresponding localized value in Resource Designer of Syncfusion.Spreadsheet.Windows.ja.resx file.
  For your reference, you can download the Japanese("ja-JP") Resx file [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.SfSpreadsheet.Windows991194474)

![Resource file for Japanese culture](localization_images/Loc_Image2.JPG)


The following screenshot shows you the localization in Spreadsheet,

![Localized strings with Japanese culture](localization_images/localization_img1.jpg)

## Modifying the localized strings in resource file

Users can modify the default localized strings in Resource file by adding the default [Resx](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Syncfusion.SfSpreadsheet.Windows991194474) (resource) file of `Spreadsheet` in the 'Resources' folder of your application and name it as Syncfusion.Spreadsheet.Windows.resx.

Now, the default localized strings can be modified by changing the Name/Value pair in the Syncfusion.Spreadsheet.Windows.resx file.

![Modified default strings of English culture](localization_images/Loc_Image3.jpg)
