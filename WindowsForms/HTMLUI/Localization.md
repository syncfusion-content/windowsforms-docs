---
layout: post
title: Localization | WindowsForms | Syncfusion
description: Localization
platform: WindowsForms
control: HTMLUI
documentation: ug
---

## Localization

Localization is the process of making application multilingual by formatting the content according to the cultures. HTMLUI control can be localized in any Languages, based on application requirement by following below steps.

Step 1: Need to initialize the LocalizationProvider class, inherited from the ILocalizationProvider interface, before the initializeComponent call in the constructor of an application.

Step 2: It will add the GetLocalizedString function in the LocalizationProvider class.It is needed to provide the Localization content, for the required components used in HTMLUI control.

For example:
Here, HTMLUI control is localized in German Language.

{% tabs %}

{% highlight C# %}

//Call the Localizer

LocalizationProvider.Provider = new Localizer();

// localizer inherits the interface ILocationProvider

public class Localizer : ILocalizationProvider
    {
        #region ILocalizationProvider Members

        public string GetLocalizedString(System.Globalization.CultureInfo culture, string name, object obj)
        {
            switch (name)
            {
                 #region HTMLUI
                ///<summary> 
                ///
                ///</summary>
                case HTMLUIResourceIdentifiers.FindNext:
                    return "Nächstes finden";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.Title:
                    return "Finden";

                case HTMLUIResourceIdentifiers.Cancel:
                    return "Stornieren";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.Direction:
                    return "Richtung";

                case HTMLUIResourceIdentifiers.Down:
                    return "Nieder";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.FindWhat:
                    return "Finde was";

                case HTMLUIResourceIdentifiers.Matchcase:
                    return "Match Fall";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.Up:
                    return "Oben";
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
}
{% endhighlight %}

{% highlight VB %}

'Call the Localizer
LocalizationProvider.Provider = New Localizer

' localizer inherits the interface ILocationProvider

Public Class Localizer
    Implements ILocalizationProvider
    
    Public Function GetLocalizedString(ByVal culture As System.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) As String
        Select Case (name)
        End Select
        
        #
        Dim HTMLUI As region
        HTMLUIResourceIdentifiers.FindNext
        Return "N�chstes finden"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.Title
        Return "Finden"
        HTMLUIResourceIdentifiers.Cancel
        Return "Stornieren"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.Direction
        Return "Richtung"
        HTMLUIResourceIdentifiers.Down
        Return "Nieder"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.FindWhat
        Return "Finde was"
        HTMLUIResourceIdentifiers.Matchcase
        Return "Match Fall"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.Up
        Return "Oben"
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

![](Localization_images/htmluilocalization.png)