---
layout: post
title: Localization | WindowsForms | Syncfusion
description: Localization
platform: WindowsForms
control: TabSplitterContainer
documentation: ug
---

## Localization

Localization is the process of making application multilingual by formatting the content according to the cultures. TabSplitterContainer control can be localized in any Languages, based on application requirement by following below steps.

Step 1: Need to initialize the LocalizationProvider class, inherited from the ILocalizationProvider interface, before the initializeComponent call in the constructor of an application.

Step 2: It will add the GetLocalizedString function in the LocalizationProvider class.It is needed to provide the Localization content, for the required components used in TabSplitterContainer control.

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
                    return "Swap-Fenster";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterVerticalSplit:
                    return "Vertikale Teilung";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterHorizontalSplit:
                    return "Horizontale Teilung";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterExpandPane:
                    return "Erweitern Sie den Bereich";
                ///<summary> 
                ///
                ///</summary>
                case ToolsResourceIdentifiers.TabSplitterCollapsePane:
                    return "Fenster ausblenden";


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
        Return "Swap-Fenster"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterVerticalSplit
        Return "Vertikale Teilung"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterHorizontalSplit
        Return "Horizontale Teilung"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterExpandPane
        Return "Erweitern Sie den Bereich"
        '''<summary> 
        '''
        '''</summary>
        ToolsResourceIdentifiers.TabSplitterCollapsePane
        Return "Fenster ausblenden"
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

![](Localization_images/Localization1.png)
![](Localization_images/Localization2.png)
![](Localization_images/Localization3.png)
![](Localization_images/Localization4.png)
![](Localization_images/Localization5.png)
