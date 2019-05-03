---
layout: post
title: .NET Core | Windows Forms | Syncfusion
description: .NET Core support for Syncfusion Essential Windows Forms controls
platform: windowsforms
control: .NET Core
documentation: ug
---

# .NET Core Support

This section explains how to create a project in .NET Core application.

## Create a .NET Core project

**Step 1**: Open Visual Studio, go to **"File > New > Project..."** and you can now see **"Create a new project"** dialog. Here, select **"Windows Forms App (.NET Core)"** template and click **"Next"**. 

![NETcore showing create the project](NETcore_images/NETcore_createproject.jpeg)

**Step 2**: You will now see **"Configure your new project"** dialog. Here, fill in the necessary details and click **"Create"**.

 ![NETcore showing configure the project](NETcore_images/NETcore_configureproject.jpeg)

**Step 3**: Finally, Windows Forms (.NET Core) sample project is created.

![NETcore application output](NETcore_images/NETcore_sample.jpeg)

**Step 4**: Before adding your controls into the application, first you need to remove the default template like in the below screenshot. 

![NETcore showing hide the code](NETcore_images/NETcore_hidecode.jpeg)


N> If you do not remove the default template, you cannot see your control in the output form.

**Step 5**: Now, you can add your controls. To do so, follow the immediate section **"Adding controls in Windows Forms (.NET Core) application"** for more details. 

## Adding controls in Windows Forms (.NET Core) application

The below section explains how to add your controls in Windows Forms (.NET Core) application.

### Through assembly deployment

In **"Solution Explorer"**, right-click on **"Dependencies"** and select **"Add Reference"**. 

![NETcore showing add reference](NETcore_images/NETcore_reference.png)

Now, **"Reference Manager"** dialog will be opened. Here click **"Browse"** and select the needed assemblies from the location mentioned in below note section. On selecting necessary assemblies, click **"Add"** and then click **"Ok"**. Now, required assemblies are added in to the project, like in the below screenshot.

N> You can get Syncfusion Windows Forms (.NET Core) controls assemblies from `netcoreapp3.0` folder in the following location - C:\Program Files (x86)\Syncfusion\Essential Studio\Windows\x.x.x.x\precompiledassemblies

![NETcore showing assembly](NETcore_images/NETcore_assembly.jpeg)

### Through NuGet Package

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details regarding how to install the NuGet packages in Windows Forms application.  

### Example: Adding ButtonAdv control through code

We are now going to see a demo on how to add **"ButtonAdv"** control in WinForms .NET Core application.

**Step 1**:	Add the following dependent assembly for the inclusion of **"ButtonAdv"** control.

* Syncfusion.Shared.Base

**Step 2**: Create an instance of the control. Assign necessary properties with proper values and add the contol instance to the form. 

{% tabs %}
{% highlight c# %}

ButtonAdv button = new ButtonAdv();
button.Text = ”ButtonAdv”;
this.controls.add(button);

{% endhighlight %}
{% endtabs %}

**Step 3**: Run the application.

![NETcore showing control output](NETcore_images/NETcore_controloutput.jpeg)


## List of supported controls

The following controls are support in .NET Core 3.0

<table>
<tr>
<th>
Controls List<br/><br/></th></tr>
<tr>
<td>
AutoComplete<br/><br/></td></tr>
<tr>
<td>
AutoLabel<br/><br/></td></tr>
<tr>
<td>
BannerTextProvider<br/><br/></td></tr>
<tr>
<td>
BorderLayout<br/><br/></td></tr>
<tr>
<td>
BulletGraph<br/><br/></td></tr>
<tr>
<td>
ButtonEdit<br/><br/></td></tr>
<tr>
<td>
Calculate<br/><br/></td></tr>
<tr>
<td>
Calculator<br/><br/></td></tr>
<tr>
<td>
CardLayout<br/><br/></td></tr>
<tr>
<td>
Carousel<br/><br/></td></tr>
<tr>
<td>
Chart<br/><br/></td></tr>
<tr>
<td>
CheckBoxAdv<br/><br/></td></tr>
<tr>
<td>
ChildFrameBarManager<br/><br/></td></tr>
<tr>
<td>
Clock<br/><br/></td></tr>
<tr>
<td>
ColorPickerButton<br/><br/></td></tr>
<tr>
<td>
ColorPickerUIAdv<br/><br/></td></tr>
<tr>
<td>
ColorUIControl<br/><br/></td></tr>
<tr>
<td>
ComboBoxAdv<br/><br/></td></tr>
<tr>
<td>
ComboBoxAutoComplete<br/><br/></td></tr>
<tr>
<td>
ComboDropDown<br/><br/></td></tr>
<tr>
<td>
CommandBarController<br/><br/></td></tr>
<tr>
<td>
ContextMenuStripEx<br/><br/></td></tr>
<tr>
<td>
CurrencyEdit<br/><br/></td></tr>
<tr>
<td>
CurrencyTextBox<br/><br/></td></tr>
<tr>
<td>
DateTimePickerAdv<br/><br/></td></tr>
<tr>
<td>
Diagram<br/><br/></td></tr>
<tr>
<td>
Digital Gauge<br/><br/></td></tr>
<tr>
<td>
Docking Manager<br/><br/></td></tr>
<tr>
<td>
DomainUpDownExt<br/><br/></td></tr>
<tr>
<td>
DoubleTextBox<br/><br/></td></tr>
<tr>
<td>
EditableList<br/><br/></td></tr>
<tr>
<td>
EditControl<br/><br/></td></tr>
<tr>
<td>
FlowLayout<br/><br/></td></tr>
<tr>
<td>
FolderBrowser<br/><br/></td></tr>
<tr>
<td>
FontComboBox<br/><br/></td></tr>
<tr>
<td>
FontListBox<br/><br/></td></tr>
<tr>
<td>
GradientLabel<br/><br/></td></tr>
<tr>
<td>
GradientPanel<br/><br/></td></tr>
<tr>
<td>
GradientPanelExt<br/><br/></td></tr>
<tr>
<td>
GridAwareTextBox<br/><br/></td></tr>
<tr>
<td>
GridBagLayout<br/><br/></td></tr>
<tr>
<td>
GridControl<br/><br/></td></tr>
<tr>
<td>
GridDataBoundGrid<br/><br/></td></tr>
<tr>
<td>
GridGroupingControl<br/><br/></td></tr>
<tr>
<td>
GridLayout<br/><br/></td></tr>
<tr>
<td>
GridListControl<br/><br/></td></tr>
<tr>
<td>
GridRecordNavigationControl<br/><br/></td></tr>
<tr>
<td>
GroupBar<br/><br/></td></tr>
<tr>
<td>
Grouping<br/><br/></td></tr>
<tr>
<td>
GroupView<br/><br/></td></tr>
<tr>
<td>
HTMLUIControl<br/><br/></td></tr>
<tr>
<td>
HubTile<br/><br/></td></tr>
<tr>
<td>
ImageListAdv<br/><br/></td></tr>
<tr>
<td>
ImageStreamer<br/><br/></td></tr>
<tr>
<td>
IntegerTextBox<br/><br/></td></tr>
<tr>
<td>
LinearGauge<br/><br/></td></tr>
<tr>
<td>
MainFrameBarManager<br/><br/></td></tr>
<tr>
<td>
Maps<br/><br/></td></tr>
<tr>
<td>
MaskedEditBox<br/><br/></td></tr>
<tr>
<td>
MessageBoxAdv<br/><br/></td></tr>
<tr>
<td>
MetroForm<br/><br/></td></tr>
<tr>
<td>
MiniToolBar<br/><br/></td></tr>
<tr>
<td>
MonthCalendarAdv<br/><br/></td></tr>
<tr>
<td>
MultiColumnComboBox<br/><br/></td></tr>
<tr>
<td>
MultiColumnTreeView<br/><br/></td></tr>
<tr>
<td>
MultiSelectionComboBox<br/><br/></td></tr>
<tr>
<td>
NavigationDrawer<br/><br/></td></tr>
<tr>
<td>
NavigationView<br/><br/></td></tr>
<tr>
<td>
NumericUpDownExt<br/><br/></td></tr>
<tr>
<td>
Office2007Form<br/><br/></td></tr>
<tr>
<td>
Office2010Form<br/><br/></td></tr>
<tr>
<td>
PdfViewer<br/><br/></td></tr>
<tr>
<td>
PercentTextBox<br/><br/></td></tr>
<tr>
<td>
PivotChart<br/><br/></td></tr>
<tr>
<td>
PivotGridControl<br/><br/></td></tr>
<tr>
<td>
PopupControlContainer<br/><br/></td></tr>
<tr>
<td>
PopupMenu<br/><br/></td></tr>
<tr>
<td>
PopupMenuManager<br/><br/></td></tr>
<tr>
<td>
ProgressBarAdv<br/><br/></td></tr>
<tr>
<td>
RadialGauge<br/><br/></td></tr>
<tr>
<td>
RadialMenu<br/><br/></td></tr>
<tr>
<td>
RadialSlider<br/><br/></td></tr>
<tr>
<td>
RadioButtonAdv<br/><br/></td></tr>
<tr>
<td>
RangeSlider<br/><br/></td></tr>
<tr>
<td>
RatingControl<br/><br/></td></tr>
<tr>
<td>
Record Navigation Control<br/><br/></td></tr>
<tr>
<td>
RibbonControlAdv<br/><br/></td></tr>
<tr>
<td>
RibbonForm<br/><br/></td></tr>
<tr>
<td>
RibbonPanelMegeContainer<br/><br/></td></tr>
<tr>
<td>
ScheduleControl<br/><br/></td></tr>
<tr>
<td>
ScrollersFrame<br/><br/></td></tr>
<tr>
<td>
SfBarcode<br/><br/></td></tr>
<tr>
<td>
SfButton<br/><br/></td></tr>
<tr>
<td>
SfCalendar<br/><br/></td></tr>
<tr>
<td>
SfDataGrid<br/><br/></td></tr>
<tr>
<td>
SfDateTimeEdit<br/><br/></td></tr>
<tr>
<td>
SfForm<br/><br/></td></tr>
<tr>
<td>
SfNumericTextBox<br/><br/></td></tr>
<tr>
<td>
SfScrollFrame<br/><br/></td></tr>
<tr>
<td>
SfSmithChart<br/><br/></td></tr>
<tr>
<td>
SfTooltip<br/><br/></td></tr>
<tr>
<td>
SfListview<br/><br/></td></tr>
<tr>
<td>
SfComboBox<br/><br/></td></tr>
<tr>
<td>
SkinManager<br/><br/></td></tr>
<tr>
<td>
Sparkline<br/><br/></td></tr>
<tr>
<td>
SpellCheckerAdv<br/><br/></td></tr>
<tr>
<td>
SplashControl<br/><br/></td></tr>
<tr>
<td>
SplashPanel<br/><br/></td></tr>
<tr>
<td>
SplitButton<br/><br/></td></tr>
<tr>
<td>
SplitContainerAdv<br/><br/></td></tr>
<tr>
<td>
SplitterControl<br/><br/></td></tr>
<tr>
<td>
Spreadsheet<br/><br/></td></tr>
<tr>
<td>
StatusBarAdv<br/><br/></td></tr>
<tr>
<td>
StatusBarAdvPanel<br/><br/></td></tr>
<tr>
<td>
StatusBarExt<br/><br/></td></tr>
<tr>
<td>
StatusStripEx<br/><br/></td></tr>
<tr>
<td>
SuperToolTip<br/><br/></td></tr>
<tr>
<td>
TabBarSplitterControl<br/><br/></td></tr>
<tr>
<td>
TabbedGroupedMDIManager<br/><br/></td></tr>
<tr>
<td>
TabbedMDIManager<br/><br/></td></tr>
<tr>
<td>
TabControlAdv<br/><br/></td></tr>
<tr>
<td>
TabSplitterContainer<br/><br/></td></tr>
<tr>
<td>
TextBoxExt<br/><br/></td></tr>
<tr>
<td>
TileLayout<br/><br/></td></tr>
<tr>
<td>
ToggleButton<br/><br/></td></tr>
<tr>
<td>
ToolStripEx<br/><br/></td></tr>
<tr>
<td>
TrackBarEx<br/><br/></td></tr>
<tr>
<td>
TreeMap<br/><br/></td></tr>
<tr>
<td>
TreeNavigator<br/><br/></td></tr>
<tr>
<td>
TreeViewAdv<br/><br/></td></tr>
<tr>
<td>
WizardControl<br/><br/></td></tr>
<tr>
<td>
XPTaskbar<br/><br/></td></tr>
<tr>
<td>
XPTaskPane<br/><br/></td></tr>
<tr>
<td>
XPToolbar<br/><br/></td></tr>
</table>


