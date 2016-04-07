---
layout: post
title: Localization 
description: How to localize the Spreadsheet to any language settings
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Localization

Spreadsheet provides support to localize all the static text in a Ribbon and all dialogs to any desired language.

Spreadsheet allows you to set custom resource using Resx file. You can define your string values in resource file for a specific culture and set the culture in your application. The given string value will be set to the Spreadsheet.

The following steps show how to localize the Spreadsheet,

* Create folder names as ‘Resources’ in the application, 
* Create a resource(.resx) file and name it as Syncfusion.Spreadsheet.Windows.[Culture name].resx. For example, Syncfusion.Spreadsheet.Windows.ja.resx.

Set the CultureInformation in the application, before the InitializeComponent() method is called. 

Setting of the culture information,

{% tabs %}
{% highlight c# %}

    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("ja-JP");

{% endhighlight %}
{% endtabs %}

Now, the application is set to the Japanese CultureInfo. 

The following screenshot shows you the localization in Spreadsheet,

![](localization_images/localization_img1.jpg)


