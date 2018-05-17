---
layout: post
title: Localization 
description: This section explains about the localization support in EditControl.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Localization

Localization is the process of translating the application resources into different language for the specific cultures. `EditControl` supports complete localization to any desired language of all the dialogs boxes and strings associated with it. It can be localized by using `ILocalizationProvider`.

The following steps helps to localize the `FindDialogBox` in the EditControl:

1) Include the required namespaces at the beginning of the file.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms;
using Syncfusion.Windows.Forms.Edit;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms
Imports Syncfusion.Windows.Forms.Edit

{% endhighlight %}

{% endtabs %}

2) Create a class that implements the `ILocalizationProvider` interface defined in the Syncfusion.Windows.Forms namespace.

3) Return the localized versions of the strings corresponding to the string identifiers.

4) String identifiers are defined in the `ResourceIdentifiers` and the `EditResourceIdentifiers` classes in Syncfusion.Shared.Base and Syncfusion.Edit.Windows assemblies respectively.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers;
using Syncfusion.Windows.Forms.ResourceIdentifiers;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers
Imports Syncfusion.Windows.Forms.ResourceIdentifiers

{% endhighlight %}

{% endtabs %}

5) Assign this instance to the `Provider` property of the `LocalizationProvider` class before the InitializeComponent call in the constructor of the application.

{% tabs %}

{% highlight c# %}

LocalizationProvider.Provider = new Localizer();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New Localizer()

{% endhighlight %}

{% endtabs %}  

6) The following code example is a reference to assign Localization string 

{% tabs %}

{% highlight c# %}

public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)

{

switch (name)

{

case Localizer.EditResourceIdentifiers.FDbtnClose:

return "schließen";

case Localizer.EditResourceIdentifiers.FDbtnFind:

return "finden";

case Localizer.EditResourceIdentifiers.FDbtnMarkAll:

return "markieren Sie alle";              

case Localizer.EditResourceIdentifiers.FDchkCase:

return "übereinstimmen Fall";               

case Localizer.EditResourceIdentifiers.FDchkHidden:

return "Suche hidden";

case Localizer.EditResourceIdentifiers.FDchkRegular:

return "Suche regelmäßige";

case Localizer.EditResourceIdentifiers.FDchkUp:

return "Suche Up";

case Localizer.EditResourceIdentifiers.FDchkWholeWord:

return "Ganzes Wort";

case Localizer.EditResourceIdentifiers.FDchkWrap:

return "Zeilenumbruch";

case Localizer.EditResourceIdentifiers.FDGroupTitle:

return "Suchen";

case Localizer.EditResourceIdentifiers.FDMain:

return "Startseite";

case Localizer.EditResourceIdentifiers.FDrdbDocument:

return "Document";

case Localizer.EditResourceIdentifiers.FDrdbSelection:

return "Auswahl";

case Localizer.EditResourceIdentifiers.FDTitle:

return "Kommentar";
             
default:

return string.Empty;

}

}

{% endhighlight %}

{% highlight vb %}

Public Function GetLocalizedString(ByVal culture AsSystem.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) AsString

Select Case name

Case Localizer.EditResourceIdentifiers.FDbtnClose

Return "schließen"

Case Localizer.EditResourceIdentifiers.FDbtnFind

Return "finden"

Case Localizer.EditResourceIdentifiers.FDbtnMarkAll

Return "markieren Sie alle"

Case Localizer.EditResourceIdentifiers.FDchkCase

Return "übereinstimmen Fall"

Case Localizer.EditResourceIdentifiers.FDchkHidden

Return "Suche hidden"

Case Localizer.EditResourceIdentifiers.FDchkRegular

Return "Suche regelmäßige"

Case Localizer.EditResourceIdentifiers.FDchkUp

Return "Suche Up"

Case Localizer.EditResourceIdentifiers.FDchkWholeWord

Return "Ganzes Wort"

Case Localizer.EditResourceIdentifiers.FDchkWrap

Return "Zeilenumbruch"

Case Localizer.EditResourceIdentifiers.FDGroupTitle

Return "Suchen"

Case Localizer.EditResourceIdentifiers.FDMain

Return "Startseite"

Case Localizer.EditResourceIdentifiers.FDrdbDocument

Return "Document"

Case Localizer.EditResourceIdentifiers.FDrdbSelection

Return "Auswahl"

Case Localizer.EditResourceIdentifiers.FDTitle

Return "Kommentar"

Case Else

Return String.Empty

End Select

End Function

{% endhighlight %}

{% endtabs %}

![](Localization-and-Globalization_images\Localization-and-Globalization_img5.png)

A sample which demonstrates the above features is available in the below sample installation path.

Installation Location\Syncfusion\Essential Studio\Version Number\Windows\Edit.Windows\Samples\Localization