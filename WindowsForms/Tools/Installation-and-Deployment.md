---
layout: post
title: Installation-and-Deployment
description: installation and deployment
platform: WindowsForms
control: Tools
documentation: ug
---

## Installation and Deployment

This section covers information on the install location, samples, licensing, patches update and updation of the recent version of Essential Studio. It comprises the following sub-sections:

### Installation



For step-by-step installation procedure for theinstallation of Essential Studio, refer to the Installation topic under Installation and Deployment in the Common UG.

See Also

For licensing, patches and information on adding or removing selective components, refer the following topics in Common UG under Installation and Deployment.

* Licensing
* Patches
* Add / Remove Components
### Sample and Location


This section covers the location of the installed samples and describes the procedure to run the samples through the sample browser. It also lists the location of source code.

Sample Installation Location

The Tools Windows Forms samples are installed in the following location

...\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\2.0

Viewing Samples

To view the samples, follow the steps below:

1. Click Start-->All Programs-->Syncfusion-->Essential Studio &lt;version number&gt; -->Dashboard.
2. In the Dashboard window, click Run Samples for Windows Forms under UI Edition. The UI Windows Form Sample Browser window is displayed.



{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img1.png) | markdownify }
{:.image }


Tools samples will be displayed by default.

> { ![](Installation-and-Deployment_images/Installation-and-Deployment_img2.jpeg) | markdownify }
{:.image }
_Note: You can view the samples in any of the following three ways:_

* Run Samples-Click to view the locally installed samples
* Online Samples-Click to view online samples
* Explore Samples-Explore BI Web samples on disk

{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img3.png) | markdownify }
{:.image }


Select any sample and browse through the features.

Source Code Location

The default location of the Tools Windows source code is 

_[System Drive]:\Program Files\Syncfusion\Essential Studio\[Version Number]\Windows\Tools.Windows\Src_

### Deployment Requirements

Toolbox Entries Made

The following are the toolbox entries for the Tools controls.

* Command Bars Package - CommandBarController
* Docking Package - DockingClientPanel, DockingManager
* Editors Package - AutoComplete, ComboBoxAutoComplete, ButtonEdit, ButtonAdv, CalculateConfig, CalculatorControl, DateTimePickerAdv, MonthCalendarAdv, ColorPickerUIAdv, ColorPickerButton, ColorUIControl, ComboBoxAdv, ComboBoxBase, ComboDropDown, MultiColumnComboBox, PopupControlContainer, GradientPanel, GradientPanelExt, SplitContainerAdv, FolderBrowser, CurrencyTextBox, CurrencyEdit, DomainUpDownExt, DoubleTextBox, EditableList, IntegerTextBox, PercentTextBox, NumericUpDownExt, TextBoxExt, MaskedEditBox, FontComboBox, FontListBox, AutoLabel, GradientLabel, CheckBoxAdv, RadioButtonAdv
* Layout Manager - CardLayout, BorderLayout, FlowLayout, GridBagLayout, GridLayout.
* Menus package - ChildFrameManager, MainFrameBarManager, XPToolBar, PopupMenu, PopupMenusManager
* Navigation Package - GroupBar, GroupView, XPTaskBar
* Notification Package - ProgressBarAdv, SplashControl, SplashPanel, StatusBarAdv, StatusBarAdvPanel, StatusBarExt
* Tabs Package - TabControlAdv
* TabbedMDI Package - TabbedMDIManager,TabbedGroupedMDIManager
* TabSplitter Package - TabSplitterContainer
* TreeView Package - TreeViewAdv
* MultiColumn TreeView - MultiColumnTreeView
* Wizard Package - WizardControl, XPTaskPane
* Office 2007 Controls - RibbonControlAdv, RibbonPanelMergeContainer, ToolStripEx,  MiniToolBar, StatusStripEx, ScrollersFrame, ContextMenuStripEx, TrackBarEx, SuperToolTip, SuperAccelerator, MessageBoxAdv
* BannerTextProvider Component
* NavigationView

Dll List

While deploying an application that references Syncfusion Essential Tools controls, the following dependencies must be included in the distribution.

* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll
* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
