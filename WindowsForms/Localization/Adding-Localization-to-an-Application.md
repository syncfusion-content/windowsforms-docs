---
layout: post
title: Adding Localization to an Application
description: adding localization to an application
platform: WindowsForms
control: Localization
documentation: ug
---

# Adding Localization to an Application

Use the following procedure to localize the FindDialogBox in the Edit control:

1. Include the required namespaces at the beginning of the source file.





				using Syncfusion.Windows.Forms;



				using Syncfusion.Windows.Forms.Edit; 









				Imports Syncfusion.Windows.Forms



				Imports Syncfusion.Windows.Forms.Edit





2. Create a class that implements the ILocalizationProvider interface defined in the Syncfusion.Windows.Forms namespace in the Syncfusion.Shared.Base.dll.
3. Return the localized versions of the strings corresponding to the string identifiers.
4. String identifiers are defined in the ResourceIdentifiers and the EditResourceIdentifiers classes in Syncfusion.Shared.Base and Syncfusion.Edit.Windows assemblies respectively.



             Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers Syncfusion.Windows.Forms.ResourceIdentifiers



5. Leave an empty string for the rest of the identifiers that are not involved in the localization. These identifiers will be loaded with a default value.
6. Assign this instance to the Provider property of the LocalizationProvider class, before the InitializeComponent call in the constructor of the application.



              LocalizationProvider.Provider = new Localizer();





             LocalizationProvider.Provider = New Localizer()



7. The following code sample is the result:



				public string GetLocalizedString(System.Globalization.CultureInfo culture, string name,object obj)

						{

							switch (name)

							{

								#region Find Dialog

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

								#endregion              



								default:

									return string.Empty;

							}

						}







				Public Function GetLocalizedString(ByVal culture As System.Globalization.CultureInfo, ByVal name As String, ByVal obj As Object) As String

						Select Case name

							'#Region "Find Dialog"

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

								'#End Region



								Return String.Empty

						End Select

					End Function



   ![](Overview_images/Overview_img3.png)
   {:.prettyprint}   
