---
layout: post
title: Adding Menu Items via Designer | WindowsForms | Syncfusion
description: This section deals with explain about the adding menu items via designer in menu control on WinForms platform
platform: WindowsForms
control: Menus Package 
documentation: ug
---

# Adding menu items via designer in Windows Forms Menu (Menus)

This section provides a quick overview to add the menu items to a [Menu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.MainFrameBarManager.html) control through the designer.

The MainFrameBarManager can be added to the application by drag and dropping from the tool box to the design form. The following required assembly references will be added automatically.

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll
* Syncfusion.Licensing.dll
* Syncfusion.SpellChecker.Base.dll

![Menu control selection from toolbox](Adding-menu-items-via-designer-images/menuControl_ToolBox_Selection.png)

![Menu control added to Form](Adding-menu-items-via-designer-images/menuControl_Added_To_Form.png)

## Adding main bar

The [Bar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.Bar.html) component acts as a place holder for the menu items. It can be added to the menu via the **Customize** dialog. To do so, select the `Customize...` option from the smart tags menu. Under the `Toolbars` tab of the dialog, the bar can be added.

![Adding bar](Adding-menu-items-via-designer-images/adding_Bar.png)

## Adding parent item

The [ParentBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem.html) is a type of [bar item](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.BarItem.html), that acts as a parent component for child bar items and sub-menu.

![ParentBarItem](Adding-menu-items-via-designer-images/parentBarItem.gif)

### .NET Core

In .NET Core, the WinForms designer runs out of process. As a result, drag-and-drop inside the form surface may not work. We enhanced the designer to support drag-and-drop in a custom form, and you can also add ParentBarItem via the Customize dialog.

![ParentBarItemNetCore](Adding-menu-items-via-designer-images/parentBarItemNetCore.gif)

## Adding drop down item

The [DropDownBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.DropDownBarItem.html) is a type of bar item, which will display a popup menu when clicked. A custom control can also be loaded and displayed when the menu item is clicked. This can be done by assigning the required component to the [PopupControlContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.DropDownBarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_DropDownBarItem_PopupControlContainer) property of the drop down bar item.

![DropDownBarItem selection](Adding-menu-items-via-designer-images/dropDownBarItem_Selection.png)

![DropDownBarItem and CustomControl](Adding-menu-items-via-designer-images/dropDownBarItem_CustomControl.png)

![Form with DropDownBarItem and CustomControl](Adding-menu-items-via-designer-images/form_with_DropDownBarItem_CustomControl.png)

## Adding combo box item

The [ComboBoxBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.ComboBoxBarItem.html) is a type of bar item, which behaves like combo box control. The items collection can be specified using the [`ChoiceList`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.ComboBoxBarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_ComboBoxBarItem_ChoiceList) property. The **String Collection Editor** gets opened to add or edit the items of the combo box bar item.

![ComboboxBarItem selection](Adding-menu-items-via-designer-images/comboboxBarItem_Selection.png)

![ComboboxbarItem added in designer](Adding-menu-items-via-designer-images/comboboxbarItem_Designer_Added.png)

![ComboboxBarItem properties](Adding-menu-items-via-designer-images/comboboxBarItem_Properties.png)

![Form with ComboboxBarItem](Adding-menu-items-via-designer-images/form_with_ComboboxBarItem.png)

## Adding static item

A [StaticBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.StaticBarItem.html) is a type of bar item, which behaves like Label control.

![StaticBarItem selected](Adding-menu-items-via-designer-images/staticBarItem_Selected.png)

![StaticBarItem added in designer](Adding-menu-items-via-designer-images/form_with_StaticBarItem_Designer.png)

## Adding toolbar item

A [ToolBarListBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.ToolBarListBarItem.html) is a type of bar item, which behaves like a toolbar menu item. It displays the options to customize the menu items of the parent tool bar to which it gets associated.

![ToolBarListBarItem selected](Adding-menu-items-via-designer-images/toolBarListBarItem_Selected.png)

![Form with ToolBarListBarItem](Adding-menu-items-via-designer-images/form_with_ToolBarListBarItem.png)

## Adding textbox item

The [TextBoxBarItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxBarItem.html) is a type of bar item, which behaves like text box control. The text edited can be obtained via the [TextBoxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxBarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_TextBoxBarItem_TextBoxValue) property.

![TextBoxBarItem selected](Adding-menu-items-via-designer-images/textBoxBarItem_Selected.png)

![TextBoxbarItem added in designer](Adding-menu-items-via-designer-images/textBoxbarItem_Added_Designer.png)
