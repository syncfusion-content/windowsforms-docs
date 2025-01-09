---
layout: post
title: Localization in Windows Forms Html Viewer control | Syncfusion
description: Learn about Localization support in Syncfusion Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# Localization in Windows Forms Html Viewer (HTMLUI)

Localization is the process of making application multilingual by formatting the content according to the cultures. HTMLUIControl can be localized in any Languages, based on application requirement by following below steps.

Step 1: Need to initialize the [LocalizationProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.LocalizationProvider.html) class, inherited from the ILocalizationProvider interface, before the InitializeComponent call in the constructor of an application.

Step 2: It will add the [GetLocalizedString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellModelBase.html#Syncfusion_Windows_Forms_Grid_GridCellModelBase_GetLocalizedString_System_String_) function in the LocalizationProvider class. It is needed to provide the Localization content, for the required components used in HTMLUIControl.

For example:
Here, HTMLUIControl is localized in German Language.

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
                    return "Weiter suchen";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.Title:
                    return "Suchen";

                case HTMLUIResourceIdentifiers.Cancel:
                    return "Abbrechen";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.Direction:
                    return "Richtung";

                case HTMLUIResourceIdentifiers.Down:
                    return "Abwärts";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.FindWhat:
                    return "Suchen nach";

                case HTMLUIResourceIdentifiers.Matchcase:
                    return "Groß-/Kleinschreibung beachten";

                ///<summary>
                ///
                ///</summary>                    
                case HTMLUIResourceIdentifiers.Up:
                    return "Aufwärts";
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
        Return "Weiter suchen"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.Title
        Return "Suchen"
        HTMLUIResourceIdentifiers.Cancel
        Return "Abbrechen"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.Direction
        Return "Richtung"
        HTMLUIResourceIdentifiers.Down
        Return "Abwärts"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.FindWhat
        Return "Suchen nach"
        HTMLUIResourceIdentifiers.Matchcase
        Return "Groß-/Kleinschreibung beachten"
        '''<summary>
        '''
        '''</summary>                    
        HTMLUIResourceIdentifiers.Up
        Return "Aufwärts"
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

![HTMLUIControl localization](Localization_images/htmluilocalization.png)
