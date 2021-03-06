---
layout: post
title: Localization Support in Windows Forms Ribbon control | Syncfusion
description: Learn about Localization Support in Syncfusion Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Localization Support in Windows Forms Ribbon (RibbonControlAdv)

RibbonControlAdv now supports adaptation of its controls and its details to meet different languages and cultural requirements. This involves configuring the ribbon to a specific language.

## Adding ILocalizationProvider

1.	Include the required namespaces at the beginning of the source file.

2.	Create a class that implements the `ILocalizationProvider` interface defined in the Syncfusion.Windows.Forms namespace in the Syncfusion.Shared.Base.dll.

3.	Return the localized versions of the strings corresponding to the string identifiers.

4.	String identifiers are defined in the `ToolsResourceIdentifier` classes in Syncfusion.Tools.Windows

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

5.	 Leave an empty string for the rest of the identifiers that are not involved in the localization. These identifiers are loaded with a default value.

6.	Assign this instance to the Provider property of the LocalizationProvider class before the InitializeComponent call in the constructor of the application.

{% tabs %}

{% highlight c# %}

LocalizationProvider.Provider = new localization();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New localization()

{% endhighlight %}

{% endtabs %}

7.	The Following is an example for localization

{% tabs %}

{% highlight c# %}

class localization : ILocalizationProvider
    {

        public string GetLocalizedString(System.Globalization.CultureInfo culture, string stringname, object obj)
        {

            switch (stringname)
            {

                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonAdd:
                    return "????????? ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRemove:
                    return "?????????  ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonCancel:
                    return "????????? ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonOk:
                    return "???";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonReset:
                    return "????????????";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogLabel:
                    return "??????";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogChooseCommands:
                    return "????????? ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogMainTab:
                    return "??????  ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewGroup:
                    return "??????  ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewTab:
                    return "?????? ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRename:
                    return "?????????";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogCustomizationLabel:
                    return "?????? ?????????";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogCaption:
                    return "?????? ?????????";
                case ToolsResourceIdentifiers.CustomizeQuickAccessLabel:
                    return "?????? ?????????";
                case ToolsResourceIdentifiers.QuickAccessCustomizeMenu:
                    return "?????????";
                case ToolsResourceIdentifiers.QuickAccessAddItem:
                    return "?????????";

                case ToolsResourceIdentifiers.QuickAccessDialogButtonAdd:
                    return "?????????";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonCancel:
                    return "?????????";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonOk:
                    return "???";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonReset:
                    return "????????????";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonRemove:
                    return "?????????";
                case ToolsResourceIdentifiers.QuickAccessMinimizeTheRibbon:
                    return "????????? ?????????";
                case ToolsResourceIdentifiers.QuickAccessPlaceAboveRibbon:
                    return "????????? ????????? ";
                case ToolsResourceIdentifiers.QuickAccessPlaceBelowRibbon:
                    return "???????????? ????????? ";
                case ToolsResourceIdentifiers.QuickAccessToolBarLabel:
                    return "???????????? ????????? ";


                case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCancelButton:
                    return "?????????";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCaption:
                    return "??????????????????";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameOkButton:
                    return "???";
                case ToolsResourceIdentifiers.CustomizeRibbonRenameDisplayLabel:
                    return "??????????????? ?????????";

                case ToolsResourceIdentifiers.CustomizationLabel:
                    return "??????????????? ?????????";
                case ToolsResourceIdentifiers.CustomizeMenu:
                    return "??????????????? ?????????";
                case ToolsResourceIdentifiers.QuickAccessDialogDropDownName:
                    return "??????????????? ?????????";
                case ToolsResourceIdentifiers.QuickAccessCustomizeCaption:
                    return "??????????????? ";
                case ToolsResourceIdentifiers.QuickAccessDialogCommands:
                    return "??????????????? ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogColumnHeader:
                    return "??????????????? ";

                case ToolsResourceIdentifiers.CustomMenu:
                    return "??????????????? ";
                case ToolsResourceIdentifiers.QuickAccessDialogCustomizeRibbon:
                    return "??????????????? ";    
                
                default:
                    return string.Empty;

            }
        }
    }


{% endhighlight %}

{% highlight vb %}

Class localization
    Inherits ILocalizationProvider

    Public Function GetLocalizedString(ByVal culture As System.Globalization.CultureInfo, ByVal stringname As String, ByVal obj As Object) As String
        Select Case stringname
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonAdd
                Return "????????? "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRemove
                Return "?????????  "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonCancel
                Return "????????? "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonOk
                Return "???"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonReset
                Return "????????????"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogLabel
                Return "??????"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogChooseCommands
                Return "????????? "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogMainTab
                Return "??????  "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewGroup
                Return "??????  "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewTab
                Return "?????? "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRename
                Return "?????????"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogCustomizationLabel
                Return "?????? ?????????"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogCaption
                Return "?????? ?????????"
            Case ToolsResourceIdentifiers.CustomizeQuickAccessLabel
                Return "?????? ?????????"
            Case ToolsResourceIdentifiers.QuickAccessCustomizeMenu
                Return "?????????"
            Case ToolsResourceIdentifiers.QuickAccessAddItem
                Return "?????????"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonAdd
                Return "?????????"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonCancel
                Return "?????????"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonOk
                Return "???"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonReset
                Return "????????????"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonRemove
                Return "?????????"
            Case ToolsResourceIdentifiers.QuickAccessMinimizeTheRibbon
                Return "????????? ?????????"
            Case ToolsResourceIdentifiers.QuickAccessPlaceAboveRibbon
                Return "????????? ????????? "
            Case ToolsResourceIdentifiers.QuickAccessPlaceBelowRibbon
                Return "???????????? ????????? "
            Case ToolsResourceIdentifiers.QuickAccessToolBarLabel
                Return "???????????? ????????? "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCancelButton
                Return "?????????"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCaption
                Return "??????????????????"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameOkButton
                Return "???"
            Case ToolsResourceIdentifiers.CustomizeRibbonRenameDisplayLabel
                Return "??????????????? ?????????"
            Case ToolsResourceIdentifiers.CustomizationLabel
                Return "??????????????? ?????????"
            Case ToolsResourceIdentifiers.CustomizeMenu
                Return "??????????????? ?????????"
            Case ToolsResourceIdentifiers.QuickAccessDialogDropDownName
                Return "??????????????? ?????????"
            Case ToolsResourceIdentifiers.QuickAccessCustomizeCaption
                Return "??????????????? "
            Case ToolsResourceIdentifiers.QuickAccessDialogCommands
                Return "??????????????? "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogColumnHeader
                Return "??????????????? "
            Case ToolsResourceIdentifiers.CustomMenu
                Return "??????????????? "
            Case ToolsResourceIdentifiers.QuickAccessDialogCustomizeRibbon
                Return "??????????????? "
            Case Else
                Return String.Empty
        End Select
    End Function
End Class

{% endhighlight %}

{% endtabs %}

![Localization-Support_img1](Localization_Support_Images/Localization-Support_img1.jpg)

## Ribbon Resource Identifier

<table>
<tr>
<th>
String<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
CustomizeRibbonDialogButtonAdd<br/><br/></td><td>
`Add` button to add selected item in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonRemove<br/><br/></td><td>
`Remove` button to remove selected item in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonCancel<br/><br/></td><td>
`Cancel` button to cancel the changes in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonOk<br/><br/></td><td>
`Ok` button to save the changes in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonReset<br/><br/></td><td>
`Reset` button to reset all the customizations in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogLabel<br/><br/></td><td>
Main `Customize the Ribbon` label in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogChooseCommands<br/><br/></td><td>
`Choose Commands from` combo box header<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogMainTab<br/><br/></td><td>
`Customize Ribbon` tab header in left panel in Customize window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonNewGroup<br/><br/></td><td>
`New Group` button to add new group in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonNewTab<br/><br/></td><td>
`New Tab` button to add new tab in Customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogButtonRename<br/><br/></td><td>
`Rename` button to rename selected item in customize Ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogCustomizationLabel<br/><br/></td><td>
`Customizations` label in customize ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogCaption<br/><br/></td><td>
Caption in customize ribbon window<br/><br/></td></tr>
<tr>
<td>
CustomizeQuickAccessLabel<br/><br/></td><td>
Main label in customize QAT<br/><br/></td></tr>
<tr>
<td>
QuickAccessCustomizeMenu<br/><br/></td><td>
Customize menu in quick access<br/><br/></td></tr>
<tr>
<td>
QuickAccessAddItem<br/><br/></td><td>
Add Item label in quick access<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogButtonAdd<br/><br/></td><td>
`Add` button to add selected item in Customize QAT window<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogButtonCancel<br/><br/></td><td>
`Cancel` button to cancel the changes in Customize QAT window<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogButtonOk<br/><br/></td><td>
`Ok` button to save the changes in Customize QAT window<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogButtonReset<br/><br/></td><td>
`Reset` button to reset all the customizations in Customize QAT window<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogButtonRemove<br/><br/></td><td>
`Remove` button to remove selected item in Customize QAT window<br/><br/></td></tr>
<tr>
<td>
QuickAccessMinimizeTheRibbon<br/><br/></td><td>
MinimizeTheRibbon option in quick access<br/><br/></td></tr>
<tr>
<td>
QuickAccessPlaceAboveRibbon<br/><br/></td><td>
PlaceAboveRibbon option in quick access<br/><br/></td></tr>
<tr>
<td>
QuickAccessPlaceBelowRibbon<br/><br/></td><td>
PlaceBelowRibbon option in quick access<br/><br/></td></tr>
<tr>
<td>
QuickAccessToolBarLabel<br/><br/></td><td>
QAT label<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogRenameCancelButton<br/><br/></td><td>
`Cancel??? button in Rename popup window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogRenameCaption<br/><br/></td><td>
Rename caption in rename popup window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogRenameOkButton<br/><br/></td><td>
`Ok` button in rename popup window<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonRenameDisplayLabel<br/><br/></td><td>
Display Name label in rename popup window<br/><br/></td></tr>
<tr>
<td>
CustomizationLabel<br/><br/></td><td>
Customization label in window<br/><br/></td></tr>
<tr>
<td>
CustomizeMenu<br/><br/></td><td>
Customize menu option<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogDropDownName<br/><br/></td><td>
Drop down name in quick access dialog<br/><br/></td></tr>
<tr>
<td>
QuickAccessCustomizeCaption<br/><br/></td><td>
Customize caption in customizing QAT.<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogCommands<br/><br/></td><td>
Commands dialog in quick access<br/><br/></td></tr>
<tr>
<td>
CustomizeRibbonDialogColumnHeader<br/><br/></td><td>
Column header in Customize ribbon <br/><br/></td></tr>
<tr>
<td>
CustomMenu<br/><br/></td><td>
Custom menu label<br/><br/></td></tr>
<tr>
<td>
QuickAccessDialogCustomizeRibbon<br/><br/></td><td>
Quick access dialog in customize ribbon window<br/><br/></td></tr>
</table>

## Right To Left

In Right To Left support, RibbonControlAdv aligns all its controls from right To left when the ribbon property `RightToLeft??? is set to Yes.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.RightToLeft = RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

this.ribbonControlAdv1.RightToLeft = RightToLeft.Yes;

{% endhighlight %}

{% endtabs %}

![Localization-Support_img2](Localization_Support_Images/Localization-Support_img2.jpg)

