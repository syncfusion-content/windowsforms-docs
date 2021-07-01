---
layout: post
title: Backstage in Windows Forms Ribbon control | Syncfusion
description: Learn about Backstage support in Syncfusion Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Backstage in Windows Forms Ribbon (RibbonControlAdv)

The Ribbon Backstage will appear when the user clicks on Menu button, it allows to make actions for the whole document such as Save, Save As and print. It can be used to show the recent changes in the document and even closing the application.

Backstage structure will have two areas, left side which contain all the items in backstage panel and the right side which shows content of the BackstageTab.

There are three items that can be used in BackStage. They are

*	BackStage Button – A clickable item which acts as a simple button.
*	BackStageTab – A simple tab, as you click on it, displays its content.
*	BackStageSeparator – A simple line which separates neighboring items and can be used to differentiate different set of items to improve readability.  

![WindowsForms Ribbon BackStage](BackStage_Images/WindowsForms-Ribbon-BackStage.jpg)

## Open BackStage

In designer backstage can be opened by using smart tag of the backstage control below the designer and select `ShowBackstage`.

![WindowsForms Ribbon open BackStage using ShowBackStage](BackStage_Images/WindowsForms-Ribbon-open-BackStage-using-ShowBackStage.jpg)

Or backstage can be accessed by going into BackStage property grid and changing `IsVisible` as true.

In run time BackStage can be opened by right clicking on the `MenuButton`.

![WindowsForms Ribbon open BackStage using MenuButton](BackStage_Images/WindowsForms-Ribbon-open-BackStage-using-MenuButton.jpg)

## Create BackStage Button

BackStage Button can be added through Smart tag of backstage view and it can be customized using property grid of that button.

![WindowsForms Ribbon BackStage Adding BackStageButton](BackStage_Images/WindowsForms-Ribbon-BackStage-Adding-BackStageButton.jpg)

Through coding

{% tabs %}

{% highlight c# %}

//Creating new backstage buttons
private Syncfusion.Windows.Forms.BackStageButton saveAsBackStageButton;
private Syncfusion.Windows.Forms.BackStageButton optionsBackStageButton;
private Syncfusion.Windows.Forms.BackStageButton exitBackStageButton;

//Creating new instance and customizing
this.optionsBackStageButton = new Syncfusion.Windows.Forms.BackStageButton();
this.saveAsBackStageButton = new Syncfusion.Windows.Forms.BackStageButton();
this.exitBackStageButton = new Syncfusion.Windows.Forms.BackStageButton();
this.optionsBackStageButton.Text = "Options";
this.saveAsBackStageButton.Text = "Save As";
this.exitBackStageButton.Text = "Exit";

//Adding them to backstage controls
this.backStage1.Controls.Add(optionsBackStageButton);
this.backStage1.Controls.Add(saveAsBackStageButton);
this.backStage1.Controls.Add(exitBackStageButton);


{% endhighlight %}

{% highlight vb %}

Private saveAsBackStageButton As Syncfusion.Windows.Forms.BackStageButton
Private optionsBackStageButton As Syncfusion.Windows.Forms.BackStageButton
Private exitBackStageButton As Syncfusion.Windows.Forms.BackStageButton)

Me.optionsBackStageButton = New Syncfusion.Windows.Forms.BackStageButton()
Me.saveAsBackStageButton = New Syncfusion.Windows.Forms.BackStageButton()
Me.exitBackStageButton = New Syncfusion.Windows.Forms.BackStageButton()
Me.optionsBackStageButton.Text = "Options"
Me.saveAsBackStageButton.Text = "Save As"
Me.exitBackStageButton.Text = "Exit"

Me.backStage1.Controls.Add(optionsBackStageButton)
Me.backStage1.Controls.Add(saveAsBackStageButton)
Me.backStage1.Controls.Add(exitBackStageButton)

{% endhighlight %}

{% endtabs %}

## Create BackStage Tab

BackStage Tab can be added through smart tag of backstage view and it can be customized using the property grid.

![WindowsForms Ribbon BackStage Adding BackStageTab](BackStage_Images/WindowsForms-Ribbon-BackStage-Adding-BackStageTab.jpg)

Through coding

{% tabs %}

{% highlight c# %}

//Creating new backstage tabs
private Syncfusion.Windows.Forms.BackStageTab openExportBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab saveAttachmentsBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab openBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab officeAccountsBackStageTab;
private Syncfusion.Windows.Forms.BackStageTab printBackStageTab;

//Creating new instance and customizing
this.openExportBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.saveAttachmentsBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.openBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.officeAccountsBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();
this.printBackStageTab = new Syncfusion.Windows.Forms.BackStageTab();

this.openExportBackStageTab.Text = "Open/Export";
this.saveAttachmentsBackStageTab.Text = "Save Attachments";
this.openBackStageTab.Text = "Open";
this.officeAccountsBackStageTab.Text = "Office Accounts";
this.printBackStageTab.Text = "Print";


//Adding them to backstage controls
this.backStage1.Controls.Add(openExportBackStageTab);
this.backStage1.Controls.Add(saveAttachmentsBackStageTab);
this.backStage1.Controls.Add(openBackStageTab);
this.backStage1.Controls.Add(officeAccountsBackStageTab);
this.backStage1.Controls.Add(printBackStageTab);

{% endhighlight %}

{% highlight vb %}

Private openExportBackStageTab As Syncfusion.Windows.Forms.BackStageTab
Private saveAttachmentsBackStageTab As Syncfusion.Windows.Forms.BackStageTab
Private openBackStageTab As Syncfusion.Windows.Forms.BackStageTab
Private officeAccountsBackStageTab As Syncfusion.Windows.Forms.BackStageTab
Private printBackStageTab As Syncfusion.Windows.Forms.BackStageTab

Me.openExportBackStageTab.Text = "Open/Export"
Me.saveAttachmentsBackStageTab.Text = "Save Attachments"
Me.openBackStageTab.Text = "Open"
Me.officeAccountsBackStageTab.Text = "Office Accounts"
Me.printBackStageTab.Text = "Print"

Me.backStage1.Controls.Add(openExportBackStageTab)
Me.backStage1.Controls.Add(saveAttachmentsBackStageTab)
Me.backStage1.Controls.Add(openBackStageTab)
Me.backStage1.Controls.Add(officeAccountsBackStageTab)
Me.backStage1.Controls.Add(printBackStageTab)

{% endhighlight %}

{% endtabs %}

![WindowsForms Ribbon BackStage with items](BackStage_Images/WindowsForms-Ribbon-BackStage-with-items.jpg)

### Adding Controls into BackStageTab

If backstage view is visible on the designer, select the tab and on left side empty space is available to add the controls for that tab, you can add the controls in that area from toolbox.

![WindowsForms Ribbon BackStage Adding controls with BackStageTab](BackStage_Images/WindowsForms-Ribbon-BackStage-Adding-controls-with-BackStageTab.jpg)

## Add Separator

Separator can be added through Smart tag as explained in adding backstage button and tab.

![WindowsForms Ribbon BackStage Adding BackStageSeparator](BackStage_Images/WindowsForms-Ribbon-BackStage-Adding-BackStageSeparator.jpg)

## Add Header Image

Header image can be added to the Ribbon with the property `RibbonHeaderImage`. There are several inbuilt images that can be used for Header.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.RibbonHeaderImage = RibbonHeaderImage.Lines; 

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.RibbonHeaderImage = RibbonHeaderImage.Lines

{% endhighlight %}

{% endtabs %}

![WindowsForms Ribbon Header image](BackStage_Images/WindowsForms-Ribbon-Header-image.jpg)

![WindowsForms Ribbon Header image with BackStage](BackStage_Images/WindowsForms-Ribbon-Header-image-with-BackStage.jpg)

To set custom image to the Ribbon header, set an image to the property `CustomRibbonHeaderImage`.

{% tabs %}

{% highlight c# %}

//Image for RibbonHeader
Image headerImg = Image.FromFile(@"Pictures\HeaderImage.png");

this.ribbonControlAdv1.CustomRibbonHeaderImage = headerImg;

{% endhighlight %}

{% highlight vb %}

Dim headerImg As Image = Image.FromFile("Pictures\HeaderImage.png")

Me.ribbonControlAdv1.CustomRibbonHeaderImage = headerImg

{% endhighlight %}

{% endtabs %}

## BackStage width

Width of backstage panel can be changed with the BackStage property `BackStagePanelWidth`.

{% tabs %}

{% highlight c# %}

this.backStage1.BackStagePanelWidth = 200;

{% endhighlight %}

{% highlight vb %}

Me.backStage1.BackStagePanelWidth = 200

{% endhighlight %}

{% endtabs %}

## Restrict BackStage Opening

To restrict from opening Backstage, change the Ribbon property `MenuButtonEnabled` as false.

{% tabs %}

{% highlight c# %}

//This will restrict backstage from opening
this.ribbonControlAdv1.MenuButtonEnabled = false;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuButtonEnabled = False

{% endhighlight %}

{% endtabs %}

## Menu Button

The file tab located at left end of the ribbon is the menu button, it is used to open backstage at run time.

![WindowsForms Ribbon BackStage MenuButton](BackStage_Images/WindowsForms-Ribbon-BackStage-MenuButton.jpg)

### Menu Button Text

By default, the text for this button will be File, it can be changed with the ribbon property `MenuButtonText`.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.MenuButtonText = "Menu";

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuButtonText = "Menu"

{% endhighlight %}

{% endtabs %}

### Menu Button Width

To change the width of menu button, use the ribbon property `MenuButtonWidth`.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.MenuButtonWidth = 100;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuButtonWidth = 100

{% endhighlight %}

{% endtabs %}

### Menu Button customization

The appearance of the menu button can be customized in Office2019Theme and HighContrastTheme by using the below listed properties,

*  [`FileMenuBackColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Ribbon.RibbonControlAdvVisualStyle.html#Syncfusion_Windows_Forms_Ribbon_RibbonControlAdvVisualStyle_FileMenuBackColor) 
*  [`FileMenuForeColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Ribbon.RibbonControlAdvVisualStyle.html#Syncfusion_Windows_Forms_Ribbon_RibbonControlAdvVisualStyle_FileMenuForeColor)
*  [`FileMenuHoverBackColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Ribbon.RibbonControlAdvVisualStyle.html#Syncfusion_Windows_Forms_Ribbon_RibbonControlAdvVisualStyle_FileMenuHoverBackColor)
*  [`FileMenuHoverForeColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Ribbon.RibbonControlAdvVisualStyle.html#Syncfusion_Windows_Forms_Ribbon_RibbonControlAdvVisualStyle_FileMenuHoverForeColor)

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.ThemeStyle.FileMenuBackColor = Color.Red;
this.ribbonControlAdv1.ThemeStyle.FileMenuForeColor = Color.Yellow;
this.ribbonControlAdv1.ThemeStyle.FileMenuHoverBackColor = Color.LightGreen;
this.ribbonControlAdv1.ThemeStyle.FileMenuHoverForeColor = Color.Brown;

{% endhighlight %}

{% endtabs %}

![WinForms RibbonControlAdv Menu customization 2019](BackStage_Images/winforms-ribboncontroladv-menu-customization-2019.jpg)

The appearance of the menu button can be customized in Office2016 and Office2013 themes by using the below listed properties,

*  [`FileMenuForeColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Office2016ColorTable.html#Syncfusion_Windows_Forms_Tools_Office2016ColorTable_FileMenuForeColor)
*  [`FileMenuHoverForeColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Office2016ColorTable.html#Syncfusion_Windows_Forms_Tools_Office2016ColorTable_FileMenuHoverForeColor)

**Office2016**

{% tabs %}

{% highlight c# %}

Office2016ColorTable office2016ColorTable = new Office2016ColorTable();
office2016ColorTable.FileMenuForeColor = Color.Yellow;
office2016ColorTable.FileMenuHoverForeColor = Color.Red;
this.ribbonControlAdv1.Office2016ColorTable.Add(office2016ColorTable);

{% endhighlight %}

{% endtabs %}

![WinForms RibbonControlAdv Menu customization 2016](BackStage_Images/winforms-ribboncontroladv-menu-customization-2016.jpg)

**Office2013**

{% tabs %}

{% highlight c# %}

Office2013ColorTable office2013ColorTable = new Office2013ColorTable();
office2013ColorTable.FileMenuForeColor = Color.Yellow;
office2013ColorTable.FileMenuHoverForeColor = Color.Red;
this.ribbonControlAdv1.Office2013ColorTable = office2013ColorTable;

{% endhighlight %}

{% endtabs %}

![WinForms RibbonControlAdv Menu customization 2013](BackStage_Images/winforms-ribboncontroladv-menu-customization-2013.jpg)

### Menu Button Color

To change the menu button color, use the ribbon property `MenuColor`.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.MenuColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.MenuColor = Color.Red

{% endhighlight %}

{% endtabs %}

## BackStage items placement

The [`BackStage`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.BackStage.html) items listed below can be positioned either at top or bottom by using the [`Placement`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.BackStageButton.html#Syncfusion_Windows_Forms_BackStageButton_Placement) property.

*	BackStageButton
*	BackStageTab
*	BackStageSeparator

The following code example illustrates how to position the BackStage items either at top or bottom.

{% tabs %}

{% highlight c# %}

this.backStageSeparator.Placement = Syncfusion.Windows.Forms.BackStageItemPlacement.Bottom;
this.printBackStageTab.Placement = Syncfusion.Windows.Forms.BackStageItemPlacement.Bottom;
this.closeBackStageButton.Placement = Syncfusion.Windows.Forms.BackStageItemPlacement.Bottom;

{% endhighlight %}

{% endtabs %}

![WindowsForms Ribbon BackStage items placement](BackStage_Images/WindowsForms-Ribbon-BackStage-items-placement.jpg)

N>[View sample in GitHub](https://github.com/SyncfusionExamples/How-to-customize-backstage-items-placement)

