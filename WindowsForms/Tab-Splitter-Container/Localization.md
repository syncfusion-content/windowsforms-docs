---
layout: post
title: Localization in Windows Forms Tab Splitter Container | Syncfusion
description: Learn about Localization support in Syncfusion Windows Forms Tab Splitter Container control and more details.
platform: WinForms
control: TabSplitterContainer
documentation: ug
---

# Localization in Windows Forms Tab Splitter Container

Localization is the process of making application multilingual by formatting the content according to the cultures. TabSplitterContainer control can be localized in any Languages, based on application requirement by following below steps.

Step 1: Need to initialize the LocalizationProvider class, inherited from the [ILocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ILocalizationProvider.html) interface, before the InitializeComponent call in the constructor of an application.

Step 2: It will add the [GetLocalizedString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ILocalizationProvider.html#Syncfusion_Windows_Forms_ILocalizationProvider_GetLocalizedString_System_Globalization_CultureInfo_System_String_System_Object_) function in the [LocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.LocalizationProvider.html) class. It is needed to provide the Localization content, for the required components used in TabSplitterContainer control.

For example:
Here, TabSplitterContainer control is localized in German Language.

{% tabs %}

{% highlight C# %}

//Call the Localizer

LocalizationProvider.Provider = new Localizer();

 // localizer inherits the interface of ILocationProvider
    public class Localizer : ILocalizationProvider
    {
        #region ILocalizationProvider Members

        public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)
        {
            switch (name)
            {
                #region TabSplitterControl
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterSwapPanes:
                    return "Tab-Teiler-Bereiche tauschen";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterVerticalSplit:
                    return "Registerteiler-Vertikalteilung";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterHorizontalSplit:
                    return "Registerteiler-Horizontale Teilung";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterExpandPane:
                    return "Registerteiler-Bereich erweitern";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterCollapsePane:
                    return "Registerteiler-Bereich minimieren";


                ///<summary>
                /// default
                ///</summary>
                default:
                    return string.Empty;
             #endregion
            }
        }

        #endregion
    }
{% endhighlight %}

{% highlight VB %}

'Call the Localizer

LocalizationProvider.Provider = New Localizer

'' localizer inherits the interface of ILocationProvider
Public Class Localizer
    Implements ILocalizationProvider
    
    Public Function GetLocalizedString(ByVal culture As System.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) As String
        Select Case (name)
        End Select
        
        #
        Dim TabSplitterControl As region
        ToolsResourceIdentifiers.TabSplitterSwapPanes
        Return "Tab-Teiler-Bereiche tauschen"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterVerticalSplit
        Return "Registerteiler-Vertikalteilung"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterHorizontalSplit
        Return "Registerteiler-Horizontale Teilung"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterExpandPane
        Return "Registerteiler-Bereich erweitern"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterCollapsePane
        Return "Registerteiler-Bereich minimieren"
        '''<summary>
        ''' default
        '''</summary>
        Return string.Empty
        #
        endregion
    End Function
End Class

{% endhighlight %}

{% endtabs %}

![Tab splitter localization](Localization_images/Localization.png)
