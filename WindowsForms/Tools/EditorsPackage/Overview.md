---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---


# Editors Package

The Editors package is a comprehensive collection of controls most commonly used in creating data entry forms. All the editor controls architectures with a view to providing simple and powerful means for capturing data input, validating the data and displaying the data with the appropriate formatting. They also offer complete support for data binding, inter nationalization and localization.

![](Overview_images/Overview_img1.png)



The Editors Package provides several controls that can be used in displaying, collecting and validating user input. The different controls that are included in the Editors Package have been listed and discussed below:

## AutoAppend

It provides auto persisting of previously entered items in a Windows Forms combo box based on a category keyword and also populates the combo box control's items collection with the persisted list.

### Features 

* A simple procedure is implemented to bind a combo box to an AutoAppend control. 
* Persistence and re initialization based on a category keyword. This enables multiple combo box controls to be bound to the same AutoAppend control. 
* Makes use of the registry for storing the list.
* No need to write any additional code by the developer.
* Automatically adds new items to the list when the validated event of the control gets fired.

## AutoComplete 

It expands strings that have been partially entered in an edit control, into complete strings based on a list of previously specified strings.

### Features

* Provides auto completion for text box and combo box controls by setting a few properties.
* Supports AutoAppend and AutoSuggest modes of operation.
* Displays multiple columns of information with optional image column and headers in AutoSuggest mode.
* Allows data for auto completion to be managed by the AutoComplete control or by a datasource.
* Provides auto completion to multiple text box and combo box controls on the same form.
* Persists the size of the dropdown even after the application is closed. 

## AutoLabel

It helps to label other controls.

### Features

* We can specify where the label should appear.
* It updates the position of label according to the labeled control.

## ButtonAdv

ButtonAdv is an extension to the Windows Forms Button control.

### Features

* Easily change the button type to browse, calculator etc. 
* Supports PushButton behavior.
* Supports the disabling of the dotted rectangle by using the KeepFocusRectangle property when the button is in focus.
* Supports BorderStyles.
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## ButtonEdit

 It provides an easy way to create controls with an edit control and any number of associated buttons. 

### Features

* Buttons can be added at design-time and their properties can be set through the designer.
* Buttons' widths can be custom specified.
* Buttons can be left or right-aligned with respect to the text box.
* Button events can be handled to provide desired functionality.
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## Calculator Control

It provides an easy way to implement a complete calculator in your application.

### Features

* Implements all common arithmetic functions.
* Supports keyboard input.
* Can be displayed on a form or as a popup.
* Can be displayed in the Windows Standard or financial layout.
* Complete designer support.
* Supports the customization of the font and color of the Calculator buttons.
* Allows you to change the spacing between buttons that are arranged in rows and columns, by using the VerticalSpacing and HorizontalSpacing properties.
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## CheckBoxAdv

It is an advanced check box control. It is capable of displaying several backgrounds such as gradients and images. 

### Features

* Support for gradient backgrounds.
* Supports different images and checked graphics.
* Can specify larger images for the ImageCheckBox.
* Complete designer support.
* Supports the CheckAlign property.
* Supports images for the items listed.

## ColorPickerButton

It allows .NET developers to provide a standard user interface similar to the Visual Studio .NET color picker dropdown, for selecting colors in Windows Forms applications. The ColorPickerButton displays the ColorUIControl as a drop-down in combination with a button.

### Features

* Palette, Web and System colors panels.
* Selective inclusion of panels.
* Complete designer support.

## ColorUIControl

It allows .NET developers to provide a standard user-interface, similar to the Visual Studio .NET color picker drop-down, for selecting colors in their Windows Forms applications. The ColorUIControl implements a palette type visual interface comprising of the System, Standard and the Custom color groups.

### Features

* Palette, Web and System colors panels.
* Selective inclusion of panels.
* Complete designer support.
* Can be attached to any other control.
* The customization of color cells in the ColorUI can be done in a new palette named UserColors where different shades of user defined Colors can be set and the Color cells can be re sized.

## ColorPickerUIAdv

The Essential Tools ColorPickerUIAdv allows .NET developers to provide Microsoft Word 2007 ColorCells for selecting colors in their applications. The ColorPickerUIAdv comprises of a panel displaying colors with themes and standard colors. 

### Features

* ColorPickerUIAdv can be created programmatically.
* The ColorPickerUIAdv allows us to set the ColorGroups from which the color can be selected.
* The selected color of ColorPickerUIAdv can be applied to any control or text.

## ComboBoxAdv

The ComboBoxAdv pre-binds a list box in its drop-down area and includes some additional API to provide a framework combo box-like object-model and data binding support.

### Features

* 3D border styles and flat styles can be applied for the control.
* Images can be included for the ComboBoxAdv Items.
* AutoComplete functionality can be integrated.
* Can be bound to any external datasource. 
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## ComboBoxAutoComplete

It combines a combo box control with an AutoComplete control to provide auto completion for that instance of the combo box. 

### Features

* Provides easy auto completion for a combo box control.
* Supports AutoAppend and AutoSuggest modes of operation.
* Displays multiple columns of information with optional image column and headers in AutoSuggest mode.
* Allows data for auto completion to be managed by the AutoComplete control or by a datasource.

## ComboBoxBase

It is an alternative to the standard combo box control. It separates the edit portion from the drop-down list portion thereby making this architecture powerful and flexible.

### Features

* Ability to plug-in any ListControl Derived Class, to provide the list for the combobox base.
* Customization Support for everything in the combo box, from the text box to the drop-down window. 
* Advanced border drawing features.
* Themes support
* Extensibility
* AutoAppending

## Combo Drop-Down

This flexible combo box control provides a standard combo box look-and-feel with the ability to host any control in the drop-down.

### Features

*  Any control can be easily associated and displayed in the combo drop-down.
* Advanced border styles.
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## Currency Edit

It embeds a CurrencyTextBox control and a button that can display a PopupCalculator when clicked. 

### Features

* Easily perform calculations with contents of CurrencyTextBox
* Globalization support
* Databinding support
* Full designer support

## Currency Text-Box

It provides currency specific behavior in edit controls. It implements all the functionality needed for formatting currency input and validation. 

### Features

* Keyboard input validation
* Globalization support
* Databinding support
* Full designer support

## DateTimePickerAdv

It provides an easy way to implement a culture-based DateTimePicker in an application.

### Features

* Inter nationalization.
* DatabindingSupport.
* Supports setting and displaying NULL values.
* The DateTimePickerAdv can display a custom drop-down calendar.
* The DateTimePickerAdv control supports XP Themes when applicable.
* Supports displaying the UpDown button only when the control has focus. 
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## DomainUpDownExt

DomainUpDownExt is an advanced version of the standard windows DomainUpDown control.

### Features

* Themes support
* Flexible in providing increment and decrement values.
* DomainUpDownExt SpinOrientation - Added ability to show spin buttons using vertical (up and down buttons) or horizontal (left and right buttons) orientations with SpinOrientation property.



![](Overview_images/Overview_img2.jpeg)



* Office2007Style - Added ability to set all the three color schemes, Blue, Silver and Black for Office2007 style.

![](Overview_images/Overview_img3.jpeg)



## Double TextBox

It is a text box-derived control that can display double data type values.

### Features

* Supports display of double values.
* Supports values with a precision of 15 characters. The maximum and minimum values supported are by default the minimum and maximum values for the double data type.
* Supports displaying negative values in a different color and also using different negative formats.
* Handles user keyboard input and double formatting.
* Themes support.
* Uses the globalization features of the .NET platform to provide locale specific formatting.

## Editable List

It provides an editable Windows Forms list box with a Windows Forms text box and button on the current row to facilitate in-place editing.

### Features

* Offers in place editing.
* Supports auto completion from the list.

## Folder Browser

FolderBrowser component provides a convenient and easy to use object oriented wrapper for the Win32 Shell folder browser API.

### Features

* Includes textbox with Auto Completion support.
* Templates Support
* Supports the property that allows the specification of Custom Start Location.

## FontListBox 

FontListBox is the list box derived controls that are automatically populated with the fonts installed in the user's system. 

### Features

* Supports AutoComplete behavior.
* Offers Single - Select and Multi- Select options.

## Font ComboBox

FontComboBox is the Combobox derived controls that are automatically populated with the fonts installed in the user's system. 

### Features

* Supports AutoComplete behavior.

## GradientLabel

It provides a way for create visually appealing labels for Windows Forms Controls. 

### Features

* Customizable background.
* Support for different borders and patterns.

## Integer TextBox

It is derived from a Windows Forms framework text box control and can display integer data type values. 

### Features

* Displays Int64 values.
* Default minimum and maximum values correspond to the Int64 data type values.
* Displays negative values in a different color.
* Uses different negative formats.
* Handles user keyboard input and double formatting.
* Uses the globalization features of the .NET platform to provide locale-specific formatting.
* Themes Support.

## Masked EditBox

It provides an easy and reliable way of collecting user input and displaying standard data in specific formats from any data source. 

### Features

* Compatible with Windows Forms Textbox control.
* Supports all the commonly used Mask Symbols.
* Complete support for the common clipboard operations.

## MonthCalendarAdv

It is an advanced calendar control that can display a full month of the year with the appropriate culture information for the months and days of the week. 

### Features

* Supports the BorderStyles for the Calendar.
* Supports a DoubleClick event.
* Supports images for the left scroll button and the right scroll button.
* The images for the scroll buttons can be stretched or shrunk to fit the size of the scroll buttons.
* Displays the week number along the left side of the month calendar. 
* Can set the WeekFont, WeekTextColor and WeekInterior.
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## MultiColumnComboBox

It is an advanced combo box control that has the capability to show multiple columns in the drop-down list. 

### Features

* Can be bound to very large datasources, instantaneously.
* Supports XP, Office 2003 and Office 2007 Visual Styles.

## NumericUpDownExt

It enables XP Themed look-and-feel for the UpDown controls that are missing in the corresponding .NET Control. 

### Features

* XP Themed look and feel.
* Support for displaying negative values in a different color.

## Percent TextBox

It is a text box-derived control that can display double data type values in percentage format. 

### Features

* Supports display of percent values in two modes - Percent and Double.
* In PercentMode, the values are edited as percentage values itself. 
* In DoubleMode, the values are edited as double values and then displayed using percentage formatting.
* Uses the globalization features of the .NET platform to provide locale-specific formatting. 

## PopupControlContainer

It is a panel-derived control that allows users to populate it with child controls in code or during design-time.

### Features

* Various User Interface child controls can be integrated in the PopupControlContainer.
* Allows the user to populate the popup with the desired parent control.

## RadioButtonAdv

RadioButtonAdv functions are similar to the standard windows RadioButton, with some additional enhancements.

### Features

* Supports visual themes.
* Images can be displayed as the check.

## TextBoxExt

It is a text box-derived control that can display different border colors and styles.

### Features

* The control provides different 2D and 3D border styles for a regular text box.
* Offers Themes support and flow indicators.
* Custom Colors can be applied for the following controls. ComboBoxAdv, ComboDropDown, ComboBoxAutoComplete and TextBoxExt. See Visual Styles topic.

