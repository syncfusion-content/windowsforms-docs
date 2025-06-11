---
layout: post
title: Localization in Windows Forms Tab Splitter Container | Syncfusion®
description: Learn about Localization support in Syncfusion® Windows Forms Tab Splitter Container control and more details.
platform: windowsforms
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

private TabSplitterContainer tabSplitterContainer1 = new Syncfusion.Windows.Forms.Tools.TabSplitterContainer();
private TabSplitterPage tabSplitterPage1 = new TabSplitterPage();
private TabSplitterPage tabSplitterPage2 = new TabSplitterPage();

this.tabSplitterPage1.Text = "XAML";
this.tabSplitterPage2.Text = "Design";

this.tabSplitterPage1.BackColor = System.Drawing.SystemColors.ControlLightLight;
this.tabSplitterPage2.BackColor = System.Drawing.SystemColors.ControlLightLight;
  
this.tabSplitterContainer1.Location = new System.Drawing.Point(92, 70);
this.tabSplitterContainer1.Name = "tabSplitterContainer2";
this.tabSplitterContainer1.Size = new System.Drawing.Size(1189, 35);
this.tabSplitterContainer1.SplitterBackColor = System.Drawing.SystemColors.Control;
this.tabSplitterContainer1.SplitterPosition = 10;
this.tabSplitterContainer1.PrimaryPages.AddRange(new TabSplitterPage[] { tabSplitterPage1 });
this.tabSplitterContainer1.SecondaryPages.AddRange(new TabSplitterPage[] { tabSplitterPage2 });

LocalizationProvider.Provider = new Localizer();

this.Controls.Add(tabSplitterContainer1);

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

Private tabSplitterContainer1 As New Syncfusion.Windows.Forms.Tools.TabSplitterContainer()
Private tabSplitterPage1 As New TabSplitterPage()
Private tabSplitterPage2 As New TabSplitterPage()

tabSplitterPage1.Text = "XAML"
tabSplitterPage2.Text = "Design"

tabSplitterPage1.BackColor = System.Drawing.SystemColors.ControlLightLight
tabSplitterPage2.BackColor = System.Drawing.SystemColors.ControlLightLight

tabSplitterContainer1.Location = New System.Drawing.Point(92, 70)
tabSplitterContainer1.Name = "tabSplitterContainer2"
tabSplitterContainer1.Size = New System.Drawing.Size(1189, 35)
tabSplitterContainer1.SplitterBackColor = System.Drawing.SystemColors.Control
tabSplitterContainer1.SplitterPosition = 10
tabSplitterContainer1.PrimaryPages.AddRange(New TabSplitterPage() {tabSplitterPage1})
tabSplitterContainer1.SecondaryPages.AddRange(New TabSplitterPage() {tabSplitterPage2})

'Call the Localizer
LocalizationProvider.Provider = New Localizer()

Me.Controls.Add(tabSplitterContainer1)

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
