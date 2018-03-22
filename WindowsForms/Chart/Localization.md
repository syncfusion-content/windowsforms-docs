---
layout: post
title: Localization | Windows Forms | Syncfusion
description: localization 
platform: windowsforms
control: Chart
documentation: ug
---

# Localization 

Localization allows a chart to display data according to the language and culture specific to a particular country or region.

EssentialChart now supports localization; built-in resource files for specific languages can be easily added.  Context menu items, exception messages, and some of the toolbar items can be localized.

### Use Case Scenario

This enables you to localize any part of the chart that has static strings in it.

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th><th>
Dependencies</th></tr>
<tr>
<td>
Localize </td><td>
Get or set the localization culture of Grid.</td><td>
Server side</td><td>
A string containing the name of the target System.Globalization.CultureInfo </td><td>
NA</td><td>
NA</td></tr>
</table>

Adding Localization to an application

1. Create your localization resource file (.resx) in the  bin > Debug folder with the following naming convention:
   * ChartControl.<your culture info name>.resx

   N> It is mandatory to follow this naming convention.

   ![](Localization_images/Localization_img2.png)

2. Enter the UI name in the Name column and the equivalent term you want in the Value column of the resource file.

   ![D:/Feature2011_VOL4/English.PNG](Localization_images/Localization_img3.png)

    N> It is mandatory to specify equivalent terms for all static element to localize the chart.

3. Specify the culture using the Localize property as given in the following code:

{% highlight c# %}

this.chartControl1.Localize=”de-DE”;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Localize=”de-DE”

{% endhighlight %}

![](Localization_images/Localization_img5.png)

### Sample Link

To view a sample

1. Open the Syncfusion Dashboard.
2. Select User Interface > Windows Forms.
3. Click Run Samples.
4. Navigate to Culture Localization > Localization sample.

You can find the resource file for the localization in English at the following location:

[ChartControl_Resource](http://www.syncfusion.com/uploads/redirect.aspx?&team=support&file=ChartControl_Resource-1347262360.zip)