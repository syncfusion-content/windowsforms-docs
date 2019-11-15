---
layout: post
title: .NET Core | Windows Forms | Syncfusion
description: Learn here about how to creating the Windows Forms Applications using .NET Core and the Syncfusion Windows Forms controls
platform: windowsforms
control: .NET Core
documentation: ug
---

# Windows Forms Applications using .NET Core and Syncfusion Windows Forms Controls

Syncfusion Essential Studio for Windows Forms suits .NET core assemblies for building Windows Forms .NET Core applications using Syncfusion Controls. This section explains how to create the project in .NET Core application and using syncfusion Windows Forms controls.

N> All Syncfusion Windows Forms controls supports .NET Core Framework except the controls labeled as `classic`.

## Create a .NET Core project

**Step 1**: Open Visual Studio, go to **File > New > Project...** and you can now see **Create a new project** dialog. Here, select **Windows Forms App (.NET Core)** template and click **Next**. 

![NETcore showing create the project](NETcore_images/NETcore_createproject.jpeg)

**Step 2**: You will now see **Configure your new project** dialog. Here, fill in the necessary details and click **Create**.

 ![NETcore showing configure the project](NETcore_images/NETcore_configureproject.jpeg)

**Step 3**: Finally, Windows Forms (.NET Core) sample project is created.

![NETcore application output](NETcore_images/NETcore_sample.jpeg)

**Step 4**: Before adding your controls into the application, first you need to remove the default template like in the below screenshot. 

![NETcore showing hide the code](NETcore_images/NETcore_hidecode.jpeg)


N> If you do not remove the default template, you cannot see your control in the output form.

**Step 5**: Now, you can add your controls. To do so, follow the immediate section **Adding controls in Windows Forms (.NET Core) application** for more details. 

## Adding controls in Windows Forms (.NET Core) application

The below section explains how to add your controls in Windows Forms (.NET Core) application.

### Through assembly deployment

In **Solution Explorer**, right-click on **Dependencies** and select **Add Reference**. 

![NETcore showing add reference](NETcore_images/NETcore_reference.png)

Now, **Reference Manager** dialog will be opened. Here click **Browse** and select the needed assemblies from the location mentioned in below note section. On selecting necessary assemblies, click **Add** and then click **Ok**. Now, required assemblies are added in to the project, like in the below screenshot.

N> You can get Syncfusion Windows Forms (.NET Core) controls assemblies from `netcoreapp3.0` folder in the following location - C:\Program Files (x86)\Syncfusion\Essential Studio\Windows\x.x.x.x\precompiledassemblies

![NETcore showing assembly](NETcore_images/NETcore_assembly.jpeg)

### Through NuGet Package

[Click here](https://help.syncfusion.com/windowsforms/nuget-packages) to find more details regarding how to install the NuGet packages in Windows Forms application.  

### Example: Adding ButtonAdv control through code

We are now going to see a demo on how to add **ButtonAdv** control in WinForms .NET Core application.

**Step 1**:	Add the following dependent assembly for the inclusion of **ButtonAdv** control.

* Syncfusion.Shared.Base

**Step 2**: Create an instance of the control. Assign necessary properties with proper values and add the control instance to the form. 

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
Controls List</th></tr>
<tr>
<td>
{{'[AutoComplete](https://help.syncfusion.com/windowsforms/autocomplete/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[AutoLabel](https://help.syncfusion.com/windowsforms/autolabel/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[BannerTextProvider](https://help.syncfusion.com/windowsforms/bannertextprovider/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[BorderLayout](https://help.syncfusion.com/windowsforms/layoutmanagers/borderlayout/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[BulletGraph](https://help.syncfusion.com/windowsforms/bulletgraph/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ButtonEdit](https://help.syncfusion.com/windowsforms/buttonedit/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Calculate](https://help.syncfusion.com/windowsforms/calculate/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Calculator](https://help.syncfusion.com/windowsforms/calculator/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[CardLayout](https://help.syncfusion.com/windowsforms/layoutmanagers/cardlayout/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Carousel](https://help.syncfusion.com/windowsforms/carousel/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Chart](https://help.syncfusion.com/windowsforms/chart/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[CheckBoxAdv](https://help.syncfusion.com/windowsforms/checkboxadv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ChildFrameBarManager](https://help.syncfusion.com/windowsforms/menus/mdi-child-forms)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Clock](https://help.syncfusion.com/windowsforms/clock/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ColorPickerButton](https://help.syncfusion.com/windowsforms/colorpickerbutton/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ColorPickerUIAdv](https://help.syncfusion.com/windowsforms/colorpickeruiadv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ColorUIControl](https://help.syncfusion.com/windowsforms/colorui/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ComboBoxAdv](https://help.syncfusion.com/windowsforms/comboboxadv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ComboBoxAutoComplete](https://help.syncfusion.com/windowsforms/comboboxautocomplete/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ComboDropDown](https://help.syncfusion.com/windowsforms/combodropdown/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[CommandBarController](https://help.syncfusion.com/windowsforms/commandbar/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ContextMenuStripEx](https://help.syncfusion.com/windowsforms/contextmenustripex/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[CurrencyEdit](https://help.syncfusion.com/windowsforms/currencyedit/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[CurrencyTextBox](https://help.syncfusion.com/windowsforms/currencytextbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[DateTimePickerAdv](https://help.syncfusion.com/windowsforms/datetimepickeradv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Diagram](https://help.syncfusion.com/windowsforms/diagram/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Digital Gauge](https://help.syncfusion.com/windowsforms/gauge/digital-gauge)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Docking Manager](https://help.syncfusion.com/windowsforms/dockingmanager/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[DomainUpDownExt](https://help.syncfusion.com/windowsforms/domainupdownext/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[DoubleTextBox](https://help.syncfusion.com/windowsforms/doubletextbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[EditableList](https://help.syncfusion.com/windowsforms/editablelist/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[EditControl](https://help.syncfusion.com/windowsforms/syntaxeditor/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[FlowLayout](https://help.syncfusion.com/windowsforms/layoutmanagers/flowlayout/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[FolderBrowser](https://help.syncfusion.com/windowsforms/folderbrowser/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[FontComboBox](https://help.syncfusion.com/windowsforms/fontcombobox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[FontListBox](https://help.syncfusion.com/windowsforms/fontlistbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GradientLabel](https://help.syncfusion.com/windowsforms/gradientlabel/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GradientPanel](https://help.syncfusion.com/windowsforms/gradientpanel/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GradientPanelExt](https://help.syncfusion.com/windowsforms/gradientpanelext/overview)' | markdownify }}</td></tr>
<tr>
<td>
GridAwareTextBox</td></tr>
<tr>
<td>
{{'[GridBagLayout](https://help.syncfusion.com/windowsforms/layoutmanagers/gridbaglayout/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GridControl](https://help.syncfusion.com/windowsforms/grid/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GridDataBoundGrid](https://help.syncfusion.com/windowsforms/databoundgrid/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GridGroupingControl](https://help.syncfusion.com/windowsforms/gridgrouping/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GridLayout](https://help.syncfusion.com/windowsforms/layoutmanagers/gridlayout/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GridListControl](https://help.syncfusion.com/windowsforms/gridlist/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GridRecordNavigationControl](https://help.syncfusion.com/windowsforms/gridrecordnavigation/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GroupBar](https://help.syncfusion.com/windowsforms/groupbar/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Grouping](https://help.syncfusion.com/windowsforms/grouping/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[GroupView](https://help.syncfusion.com/windowsforms/groupview/overview)' | markdownify }}</td></tr>

<tr>
<td>
{{'[HubTile](https://help.syncfusion.com/windowsforms/hubtile/overview)' | markdownify }}</td></tr>
<tr>
<td>
ImageListAdv</td></tr>
<tr>
<td>
{{'[ImageStreamer](https://help.syncfusion.com/windowsforms/tilelayout/hosting-imagestreamer-as-tile-items)' | markdownify }}</td></tr>
<tr>
<td>
{{'[IntegerTextBox](https://help.syncfusion.com/windowsforms/integertextbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[LinearGauge](https://help.syncfusion.com/windowsforms/gauge/linear-gauge)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MainFrameBarManager](https://help.syncfusion.com/windowsforms/menus/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Maps](https://help.syncfusion.com/windowsforms/maps/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MaskedEditBox](https://help.syncfusion.com/windowsforms/maskededitbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MessageBoxAdv](https://help.syncfusion.com/windowsforms/messageboxadv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MetroForm](https://help.syncfusion.com/windowsforms/metroform/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MiniToolBar](https://help.syncfusion.com/windowsforms/ribboncontroladv/mini-toolbar)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MonthCalendarAdv](https://help.syncfusion.com/windowsforms/monthcalendaradv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MultiColumnComboBox](https://help.syncfusion.com/windowsforms/multicolumncombobox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MultiColumnTreeView](https://help.syncfusion.com/windowsforms/multicolumntreeview/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[MultiSelectionComboBox](https://help.syncfusion.com/windowsforms/multiselectioncombobox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[NavigationDrawer](https://help.syncfusion.com/windowsforms/navigationdrawer/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[NavigationView](https://help.syncfusion.com/windowsforms/navigationview/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[NumericUpDownExt](https://help.syncfusion.com/windowsforms/numericupdownext/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Office2007Form](https://help.syncfusion.com/windowsforms/office2007form/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Office2010Form](https://help.syncfusion.com/windowsforms/office2010form/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[PdfViewer](https://help.syncfusion.com/windowsforms/pdfviewer/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[PercentTextBox](https://help.syncfusion.com/windowsforms/percenttextbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[PivotChart](https://help.syncfusion.com/windowsforms/pivotchart/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[PivotGridControl](https://help.syncfusion.com/windowsforms/pivotgrid/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[PopupControlContainer](https://help.syncfusion.com/windowsforms/popupcontrolcontainer/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[PopupMenu](https://help.syncfusion.com/windowsforms/popupmenu/overview)' | markdownify }}</td></tr>
<tr>
<td>
PopupMenuManager</td></tr>
<tr>
<td>
{{'[ProgressBarAdv](https://help.syncfusion.com/windowsforms/progressbaradv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RadialGauge](https://help.syncfusion.com/windowsforms/gauge/radial-gauge)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RadialMenu](https://help.syncfusion.com/windowsforms/radialmenu/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RadialSlider](https://help.syncfusion.com/windowsforms/radialslider/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RadioButtonAdv](https://help.syncfusion.com/windowsforms/radiobuttonadv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RangeSlider](https://help.syncfusion.com/windowsforms/rangeslider/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RatingControl](https://help.syncfusion.com/windowsforms/rating/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Record Navigation Control](https://help.syncfusion.com/windowsforms/gridrecordnavigation/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RibbonControlAdv](https://help.syncfusion.com/windowsforms/ribboncontroladv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RibbonForm](https://help.syncfusion.com/windowsforms/ribboncontroladv/ribbon-form)' | markdownify }}</td></tr>
<tr>
<td>
{{'[RibbonPanelMergeContainer](https://help.syncfusion.com/windowsforms/ribboncontroladv/ribbon-merge-support)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ScheduleControl](https://help.syncfusion.com/windowsforms/schedule/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ScrollersFrame](https://help.syncfusion.com/windowsforms/scrollersframe/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfBarcode](https://help.syncfusion.com/windowsforms/barcode/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfButton](https://help.syncfusion.com/windowsforms/sfbutton/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfCalendar](https://help.syncfusion.com/windowsforms/sfcalendar/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfDataGrid](https://help.syncfusion.com/windowsforms/sfdatagrid/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfDateTimeEdit](https://help.syncfusion.com/windowsforms/sfdatetimeedit/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfForm](https://help.syncfusion.com/windowsforms/sfform/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfNumericTextBox](https://help.syncfusion.com/windowsforms/sfnumerictextbox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfScrollFrame](https://help.syncfusion.com/windowsforms/sfscrollframe/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfSmithChart](https://help.syncfusion.com/windowsforms/sfsmithchart/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfTooltip](https://help.syncfusion.com/windowsforms/sftooltip/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfListview](https://help.syncfusion.com/windowsforms/sflistview/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SfComboBox](https://help.syncfusion.com/windowsforms/sfcombobox/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SkinManager](https://help.syncfusion.com/windowsforms/skinmanager/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Sparkline](https://help.syncfusion.com/windowsforms/sparkline/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SpellCheckerAdv](https://help.syncfusion.com/windowsforms/spellcheckeradv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SplashControl](https://help.syncfusion.com/windowsforms/splash/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SplashPanel](https://help.syncfusion.com/windowsforms/splashpanel/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SplitButton](https://help.syncfusion.com/windowsforms/splitbutton/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SplitContainerAdv](https://help.syncfusion.com/windowsforms/splitcontaineradv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SplitterControl](https://help.syncfusion.com/windowsforms/splitter/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[Spreadsheet](https://help.syncfusion.com/windowsforms/spreadsheet/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[StatusBarAdv](https://help.syncfusion.com/windowsforms/statusbaradv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[StatusBarAdvPanel](https://help.syncfusion.com/windowsforms/statusbaradvpanel/overview)' | markdownify }}</td></tr>
<tr>
<td>
StatusBarExt</td></tr>
<tr>
<td>
{{'[StatusStripEx](https://help.syncfusion.com/windowsforms/statusstripex/statusstripex)' | markdownify }}</td></tr>
<tr>
<td>
{{'[SuperToolTip](https://help.syncfusion.com/windowsforms/supertooltip/supertooltip)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TabBarSplitterControl](https://help.syncfusion.com/windowsforms/grid/tabbarsplittercontrol)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TabbedGroupedMDIManager](https://help.syncfusion.com/windowsforms/tabbedmdi/tab-groups)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TabbedMDIManager](https://help.syncfusion.com/windowsforms/tabbedmdi/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TabControlAdv](https://help.syncfusion.com/windowsforms/tabcontroladv/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TabSplitterContainer](https://help.syncfusion.com/windowsforms/tabsplittercontainer/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TextBoxExt](https://help.syncfusion.com/windowsforms/textboxext/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TileLayout](https://help.syncfusion.com/windowsforms/tilelayout/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ToggleButton](https://help.syncfusion.com/windowsforms/togglebutton/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[ToolStripEx](https://help.syncfusion.com/windowsforms/ribboncontroladv/toolstripex)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TrackBarEx](https://help.syncfusion.com/windowsforms/trackbarex/getting-started)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TreeMap](https://help.syncfusion.com/windowsforms/treemap/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[TreeNavigator](https://help.syncfusion.com/windowsforms/treenavigator/overview)' | markdownify}}</td></tr>
<tr>
<td>
{{'[TreeViewAdv](https://help.syncfusion.com/windowsforms/treeview/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[WizardControl](https://help.syncfusion.com/windowsforms/wizard/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[XPTaskbar](https://help.syncfusion.com/windowsforms/xptaskbar/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[XPTaskPane](https://help.syncfusion.com/windowsforms/xptaskpane/overview)' | markdownify }}</td></tr>
<tr>
<td>
{{'[XPToolbar](https://help.syncfusion.com/windowsforms/xptoolbar/overview)' | markdownify }}</td></tr>
</table>


