---
layout: post
title: Localization in Windows Forms MessageBox control | Syncfusion
description: Learn here all about the localization feature of Syncfusion Windows Forms MessageBox (MessageBoxAdv) control and more.
platform: WindowsForms
control: MessageBoxAdv
documentation: ug
---

# Localization in Windows Forms MessageBox (MessageBoxAdv)

Localization is the process of translating the application resources into different language for the specific cultures. MessageBoxAdv control can be localized in any Languages, based on application requirement by following below steps.

The following steps helps to localize the text in MessageBoxAdv:

Step 1. Include the required namespaces at the beginning of the file.

{% capture codesnippet1 %}​
{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

Step 2. Need to initialize the [LocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.LocalizationProvider.html) class, inherited from the ILocalizationProvider interface, before the InitializeComponent call in the constructor of an application.

{% capture codesnippet2 %}​
{% tabs %}

{% highlight c# %}

LocalizationProvider.Provider = new Localizer();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New Localizer()

{% endhighlight %}

{% endtabs %}  
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

Step 3. Add the GetLocalizedString function in the [LocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.LocalizationProvider.html) class in which provide the Localization content, for the required components used in MessageBoxAdv.

        For example:
        Here, MessageBoxAdv is localized in German Language.

{% capture codesnippet3 %}​
{% tabs %}

{% highlight C# %}

MessageBoxAdv.Show(this, "Änderungen speichern?", "Datei geändert", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

// localizer inherits the interface ILocationProvider
public class Localizer : ILocalizationProvider
{

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
{

switch (name)
{

// Yes Button in German Language
case ResourceIdentifiers.Yes:
return "Ja";

// No Button in German Language
case ResourceIdentifiers.No:
return "Nein";

// default
default:
return string.Empty;

}

}

}

{% endhighlight %}

{% highlight VB %}

'MessageBox show
MessageBoxAdv.Show(Me, "Änderungen speichern?", "Datei geändert", MessageBoxButtons.YesNo, MessageBoxIcon.Question)

'localizer inherits the interface of ILocationProvider
Public Class Localizer

Implements ILocalizationProvider

'MessageBoxAdv Localization

Public Function GetLocalizedString(ByVal culture As System.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) As String Implements ILocalizationProvider.GetLocalizedString

Select Case name

' Yes Button in German Language
Case ResourceIdentifiers.Yes
Return "Ja"

' No Button in German Language
Case ResourceIdentifiers.No
Return "Nein"

' default
Case Else
Return String.Empty

End Select

End Function

End Class

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

![Apply Localization in Windows Forms MessageBox](MessageBoxAdv_images/MessageBoxAdv_img31.jpg)
