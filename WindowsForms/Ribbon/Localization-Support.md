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

1. Include the required namespaces at the beginning of the source file.

2. Create a class that implements the `ILocalizationProvider` interface defined in the Syncfusion.Windows.Forms namespace in the Syncfusion.Shared.Base.dll.

3. Return the localized versions of the strings corresponding to the string identifiers.

4. String identifiers are defined in the `ToolsResourceIdentifier` classes in Syncfusion.Tools.Windows

{% capture codesnippet1 %}​
{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

5. Leave an empty string for the rest of the identifiers that are not involved in the localization. These identifiers are loaded with a default value.

6. Assign this instance to the Provider property of the LocalizationProvider class before the InitializeComponent call in the constructor of the application.

{% capture codesnippet2 %}​
{% tabs %}

{% highlight c# %}

LocalizationProvider.Provider = new localization();

{% endhighlight %}

{% highlight vb %}

LocalizationProvider.Provider = New localization()

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

7. The Following is an example for localization

{% tabs %}

{% highlight c# %}

class localization : ILocalizationProvider
    {

        public string GetLocalizedString(System.Globalization.CultureInfo culture, string stringname, object obj)
        {

            switch (stringname)
            {

                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonAdd:
                    return "啊錒别 ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRemove:
                    return "可用呢  ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonCancel:
                    return "锕如如 ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonOk:
                    return "别";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonReset:
                    return "地方把小";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogLabel:
                    return "都非";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogChooseCommands:
                    return "无后们 ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogMainTab:
                    return "无拍  ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewGroup:
                    return "才了  ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewTab:
                    return "来把 ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRename:
                    return "人额女";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogCustomizationLabel:
                    return "才上 来锕把";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogCaption:
                    return "才上 人额女";
                case ToolsResourceIdentifiers.CustomizeQuickAccessLabel:
                    return "才上 来锕把";
                case ToolsResourceIdentifiers.QuickAccessCustomizeMenu:
                    return "啊錒别";
                case ToolsResourceIdentifiers.QuickAccessAddItem:
                    return "啊錒别";

                case ToolsResourceIdentifiers.QuickAccessDialogButtonAdd:
                    return "啊錒别";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonCancel:
                    return "锕如如";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonOk:
                    return "别";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonReset:
                    return "地方把小";
                case ToolsResourceIdentifiers.QuickAccessDialogButtonRemove:
                    return "可用呢";
                case ToolsResourceIdentifiers.QuickAccessMinimizeTheRibbon:
                    return "啊錒别 如额呢";
                case ToolsResourceIdentifiers.QuickAccessPlaceAboveRibbon:
                    return "錒为你 啊錒别 ";
                case ToolsResourceIdentifiers.QuickAccessPlaceBelowRibbon:
                    return "地方把小 无不的 ";
                case ToolsResourceIdentifiers.QuickAccessToolBarLabel:
                    return "地方把小 无不的 ";


                case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCancelButton:
                    return "锕如如";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCaption:
                    return "如额你啊吗额";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameOkButton:
                    return "别";
                case ToolsResourceIdentifiers.CustomizeRibbonRenameDisplayLabel:
                    return "都三片来啊 了阿不";

                case ToolsResourceIdentifiers.CustomizationLabel:
                    return "都三片来啊 了阿不";
                case ToolsResourceIdentifiers.CustomizeMenu:
                    return "都三片来啊 了阿不";
                case ToolsResourceIdentifiers.QuickAccessDialogDropDownName:
                    return "都三片来啊 了阿不";
                case ToolsResourceIdentifiers.QuickAccessCustomizeCaption:
                    return "都三片来啊 ";
                case ToolsResourceIdentifiers.QuickAccessDialogCommands:
                    return "都三片来啊 ";
                case ToolsResourceIdentifiers.CustomizeRibbonDialogColumnHeader:
                    return "都三片来啊 ";

                case ToolsResourceIdentifiers.CustomMenu:
                    return "都三片来啊 ";
                case ToolsResourceIdentifiers.QuickAccessDialogCustomizeRibbon:
                    return "都三片来啊 ";    
                
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
                Return "啊錒别 "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRemove
                Return "可用呢  "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonCancel
                Return "锕如如 "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonOk
                Return "别"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonReset
                Return "地方把小"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogLabel
                Return "都非"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogChooseCommands
                Return "无后们 "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogMainTab
                Return "无拍  "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewGroup
                Return "才了  "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonNewTab
                Return "来把 "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogButtonRename
                Return "人额女"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogCustomizationLabel
                Return "才上 来锕把"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogCaption
                Return "才上 人额女"
            Case ToolsResourceIdentifiers.CustomizeQuickAccessLabel
                Return "才上 来锕把"
            Case ToolsResourceIdentifiers.QuickAccessCustomizeMenu
                Return "啊錒别"
            Case ToolsResourceIdentifiers.QuickAccessAddItem
                Return "啊錒别"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonAdd
                Return "啊錒别"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonCancel
                Return "锕如如"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonOk
                Return "别"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonReset
                Return "地方把小"
            Case ToolsResourceIdentifiers.QuickAccessDialogButtonRemove
                Return "可用呢"
            Case ToolsResourceIdentifiers.QuickAccessMinimizeTheRibbon
                Return "啊錒别 如额呢"
            Case ToolsResourceIdentifiers.QuickAccessPlaceAboveRibbon
                Return "錒为你 啊錒别 "
            Case ToolsResourceIdentifiers.QuickAccessPlaceBelowRibbon
                Return "地方把小 无不的 "
            Case ToolsResourceIdentifiers.QuickAccessToolBarLabel
                Return "地方把小 无不的 "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCancelButton
                Return "锕如如"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameCaption
                Return "如额你啊吗额"
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogRenameOkButton
                Return "别"
            Case ToolsResourceIdentifiers.CustomizeRibbonRenameDisplayLabel
                Return "都三片来啊 了阿不"
            Case ToolsResourceIdentifiers.CustomizationLabel
                Return "都三片来啊 了阿不"
            Case ToolsResourceIdentifiers.CustomizeMenu
                Return "都三片来啊 了阿不"
            Case ToolsResourceIdentifiers.QuickAccessDialogDropDownName
                Return "都三片来啊 了阿不"
            Case ToolsResourceIdentifiers.QuickAccessCustomizeCaption
                Return "都三片来啊 "
            Case ToolsResourceIdentifiers.QuickAccessDialogCommands
                Return "都三片来啊 "
            Case ToolsResourceIdentifiers.CustomizeRibbonDialogColumnHeader
                Return "都三片来啊 "
            Case ToolsResourceIdentifiers.CustomMenu
                Return "都三片来啊 "
            Case ToolsResourceIdentifiers.QuickAccessDialogCustomizeRibbon
                Return "都三片来啊 "
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
`Cancel’ button in Rename popup window<br/><br/></td></tr>
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

In Right To Left support, RibbonControlAdv aligns all its controls from right To left when the ribbon property `RightToLeft’ is set to Yes.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.RightToLeft = RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

this.ribbonControlAdv1.RightToLeft = RightToLeft.Yes;

{% endhighlight %}

{% endtabs %}

![Localization-Support_img2](Localization_Support_Images/Localization-Support_img2.jpg)

