---
layout: post
title: Backstage | WindowsForms | Syncfusion
description: backstage
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Backstage

The Ribbon Backstage will appear when the user clicks on Menu button, it allows to make actions for the whole document such as Save, Save As and print. It can be used to show the recent changes in the document and even closing the application.

Backstage structure will have two areas, left side which contain all the items in backstage panel and the right side which shows content of the BackstageTab.

There are three items that can be used in Backstage. They are

*	BackStage Button – A clickable item which acts as a simple button.
*	BackStageTab – A simple tab, as you click on it, displays its content.
*	BackStageSeparator – A simple line which separates neighboring items and can be used to differentiate different set of items to improve readability.  

![](BackStage_Images/Backstage_img1.jpg)

## Open BackStage

In designer backstage can be opened by using smart tag of the backstage control below the designer and select `ShowBackstage`.

![](BackStage_Images/Backstage_img2.jpg)

Or backstage can be accessed by going into BackStage property grid and changing `IsVisible` as true.

In run time BackStage can be opened by right clicking on the `MenuButton`.

![](BackStage_Images/Backstage_img3.jpg)

## Create BackStage Button

BackStage Button can be added through Smart tag of backstage view and it can be customized using property grid of that button.

![](BackStage_Images/Backstage_img4.jpg)

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

![](BackStage_Images/Backstage_img5.jpg)

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

![](BackStage_Images/Backstage_img6.jpg)

### Adding Controls into BackStageTab

If backstage view is visible on the designer, select the tab and on left side empty space is available to add the controls for that tab, you can add the controls in that area from toolbox.

![](BackStage_Images/Backstage_img7.jpg)

## Add Separator

Separator can be added through Smart tag as explained in adding backstage button and tab.

![](BackStage_Images/Backstage_img8.jpg)

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

![](BackStage_Images/Backstage_img9.jpg)

![](BackStage_Images/Backstage_img10.jpg)

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

![](BackStage_Images/Backstage_img11.jpg)

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
