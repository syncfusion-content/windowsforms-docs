---
layout: post
title: Feature-Summary in Windows Forms GridControl | Syncfusion
description: Learn here all about feature summary support of Syncfusion Windows Forms Grid Control (GridControl) and more.
platform: windowsforms
control: Grid
documentation: ug
---

# Feature Summary in Windows Forms Grid Control (GridControl)

Grid control is a powerful control that is implemented by using a unique Styles Architecture. This grid control is similar to Microsoft Excel, and allows detailed customization of control down to the cell level. Multi-level Undo/Redo, shared scroll bar support, data/view separation, floating cells, more than 18 cell types and unmatched extensibility are unique features of the Grid control.

![feature summary in WinForms GridControl](Feature-Summary_images/Feature-Summary_img1.jpeg) 

## Cell Attributes

Cell attributes are properties that affect the appearance and behavior of grid cells. They include features like font used in the cell or the color of the cell. Following table lists the cell attributes.



<table>
<tr>
<th>
{{ '**FEATURE**' | markdownify }}</th><th>
{{ '**DESCRIPTION**' | markdownify }}</th></tr>
<tr>
<td>
Cell TextAlignment</td><td>
Controls horizontal and vertical alignment.</td></tr>
<tr>
<td>
AutoSize</td><td>
Automatically increases cell height.</td></tr>
<tr>
<td>
PictureDisplay</td><td>
Displays picture within a cell.</td></tr>
<tr>
<td>
CustomizeBorders</td><td>
Changes the appearance of grid borders.</td></tr>
<tr>
<td>
Cell Appearances</td><td>
Controls cell edges (raised, flat, sunken).</td></tr>
<tr>
<td>
Cell TipText</td><td>
Adds ToolTips to cells and scroll bars.</td></tr>
<tr>
<td>
Cell AllowEnterMode</td><td>
Allows enter mode during edit.</td></tr>
<tr>
<td>
Cell TextColor</td><td>
Changes color of the text on a cell-by-cell basis.</td></tr>
<tr>
<td>
Cell ImageList</td><td>
Enables each cell to maintain a list of images.</td></tr>
<tr>
<td>
Cell BaseStyle</td><td>
Contains cells that depend on the same base style.</td></tr>
<tr>
<td>
Cell Types</td><td>
Specifies different control types for each cell.</td></tr>
<tr>
<td>
Cell InteriorColor</td><td>
Specifies a back color or gradient or pattern style.</td></tr>
<tr>
<td>
Cell ChoiceList</td><td>
Provides multiple choices as a single list.</td></tr>
<tr>
<td>
CharacterCasing</td><td>
Modifies the case of characters as it is typed.</td></tr>
<tr>
<td>
Control</td><td>
Contains custom control associated with a cell.</td></tr>
<tr>
<td>
CultureInfo</td><td>
Holds culture information rules.</td></tr>
<tr>
<td>
CurrencyEdit</td><td>
Holds currency text box properties for a cell.</td></tr>
<tr>
<td>
DataSource</td><td>
Assigns data source on cell-by-cell basis.</td></tr>
<tr>
<td>
DropDownStyle</td><td>
Contains a drop-down list within a cell.</td></tr>
<tr>
<td>
FloatCell</td><td>
Controls text that floats into a neighboring cell.</td></tr>
<tr>
<td>
FloodCell</td><td>
Allows flooding from a previous cell.</td></tr>
<tr>
<td>
Font</td><td>
Sets the font for drawing text.</td></tr>
<tr>
<td>
Format</td><td>
Control the format of the text within a cell.</td></tr>
<tr>
<td>
FormulaTag</td><td>
Associates formula tag with a cell.</td></tr>
<tr>
<td>
HotKey Prefix</td><td>
Controls display of hot-key prefixes.</td></tr>
<tr>
<td>
MaskedEdit</td><td>
Controls masked edit properties for a cell.</td></tr>
<tr>
<td>
MergeCell</td><td>
Merges cells with same data into single cell.</td></tr>
<tr>
<td>
Cell TextOrientation</td><td>
Controls the angle at which the cell text is rendered.</td></tr>
<tr>
<td>
Read-Only</td><td>
Protects a cell from being edited.</td></tr>
<tr>
<td>
Size</td><td>
Controls the size of the text within a cell.</td></tr>
<tr>
<td>
ShowButtons</td><td>
Controls the display of cell buttons.</td></tr>
<tr>
<td>
StrictValueType</td><td>
Controls exception behavior parsing text.</td></tr>
<tr>
<td>
Tag</td><td>
Associates a custom tag with a cell.</td></tr>
</table>


The following path helps you implement the appearance of Grid Window: {Installed Drive}\Users\{User}\AppData\Location\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Appearance

The following path holds the Dashboard sample where Cell Style properties are implemented: Install Location\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Appearance\Cell Customization Demo\

## Cell Types

Each cell may contain specialized control such as Text Box, Check Box, or Combo Box, and this attribute of the cell is referred to as its Cell Type. Following table lists all the default cell types.


<table>
<tr>
<th>
{{ '**FEATURE**' | markdownify }}</th><th>
{{ '**DESCRIPTION**' | markdownify }}</th></tr>
<tr>
<td>
Static Cell</td><td>
Cannot be edited.</td></tr>
<tr>
<td>
Custom Cell</td><td>
Allows custom integration.</td></tr>
<tr>
<td>
Formula Cell</td><td>
Allows entries of algebraic formulas.</td></tr>
<tr>
<td>
Currency Cell</td><td>
Displays currency type formats.</td></tr>
<tr>
<td>
NumericUpDown</td><td>
Allows increase/decrease of numeric value.</td></tr>
<tr>
<td>
ComboBox</td><td>
Implements standard combo box interface.</td></tr>
<tr>
<td>
MaskedEdit</td><td>
Allows users to input masks to control validation.</td></tr>
<tr>
<td>
RichText Cell</td><td>
Allows users to display and edit Rich Text.</td></tr>
<tr>
<td>
WebBrowser Cell</td><td>
Display a web browser.</td></tr>
<tr>
<td>
ColorPicker</td><td>
Allows the user to interactively select a color.</td></tr>
<tr>
<td>
Grid Drop-Down</td><td>
Allows drop-down grids in any mode.</td></tr>
<tr>
<td>
HeaderText</td><td>
Hosts a Header cell type.</td></tr>
<tr>
<td>
CheckBox</td><td>
Implements a check box.</td></tr>
<tr>
<td>
PushButton</td><td>
Implements a push button control.</td></tr>
<tr>
<td>
MonthCalendar</td><td>
Display a drop-down month calendar.</td></tr>
<tr>
<td>
Password Cell</td><td>
Accepts entries without displaying text.</td></tr>
<tr>
<td>
ProgressBar Cell</td><td>
Displays Progress Bars.</td></tr>
<tr>
<td>
Slider Cell</td><td>
Displays Slider Controls.</td></tr>
<tr>
<td>
XHTML Cell</td><td>
Displays XHTML formatted text.</td></tr>
</table>

## Data Binding

Essential Grid comes with control to meet user requirements such as a grid that is bound to an ADO.NET data source, a grid that is virtually bound to the arbitrary collections, or a grid that maintains its own data storage. Following table lists the Data Binding features supported by the Grid control.



<table>
<tr>
<th>
{{ '**FEATURE**' | markdownify }}</th><th>
{{ '**DESCRIPTION**' | markdownify }}</th></tr>
<tr>
<td>
ADO.NET</td><td>
Supports a whole range of flexible data binding.</td></tr>
<tr>
<td>
Virtual Mode</td><td>
Loads data in a virtual manner.</td></tr>
<tr>
<td>
Unbound Mode</td><td>
Connects to an unbound data source.</td></tr>
<tr>
<td>
RecordNavigationBar</td><td>
Scrolls through the records in the table.</td></tr>
<tr>
<td>
SplitViews</td><td>
Splits the display of data bound grid.</td></tr>
<tr>
<td>
DraggingColumns</td><td>
Rearranges the order of columns by using drag-and-drop operation.</td></tr>
<tr>
<td>
CustomCollections</td><td>
Binds to any collection that derives from the IList interface.</td></tr>
<tr>
<td>
Multiple Rows per Record</td><td>
Contains multiple rows per record.</td></tr>
<tr>
<td>
Formatting Cells</td><td>
Formats a cell depending on its value.</td></tr>
<tr>
<td>
Images from Database</td><td>
Displays pictures inside cells.</td></tr>
<tr>
<td>
DateTime/Boolean types</td><td>
Chooses to have Boolean and DateTime.</td></tr>
<tr>
<td>
Sorting</td><td>
Sorts the table alphabetically by values.</td></tr>
<tr>
<td>
FilterBar</td><td>
Filters the grid by items.</td></tr>
<tr>
<td>
Drop-Down Lists</td><td>
Displays a foreign key table in a drop-down.</td></tr>
</table>

## Microsoft Office Simulation

Essential Grid supports Microsoft Office features like dynamic splitters and undo/redo. Following table lists the available features.



<table>
<tr>
<th>
 {{ '**FEATURE**' | markdownify }}</th><th>
 {{ '**DESCRIPTION**' | markdownify }}</th></tr>
<tr>
<td>
Accelerated Scrolling</td><td>
Accelerates scrolling.</td></tr>
<tr>
<td>
Shared Scrollbars</td><td>
Shares scroll bars with other windows.</td></tr>
<tr>
<td>
Access Emulation</td><td>
Scrolls through records.</td></tr>
<tr>
<td>
ScrollTips/ThumbTrack</td><td>
Displays scroll tips when the user performs the drag-and-drop operation.</td></tr>
<tr>
<td>
Multilevel Undo/Redo</td><td>
Allows multilevel undo/redo.</td></tr>
<tr>
<td>
IntelliMouse Scrolling</td><td>
Supports intelli point mouse scrolling.</td></tr>
<tr>
<td>
Excel-like Behavior</td><td>
Has excel-like behavior with full features.</td></tr>
<tr>
<td>
Workbook and Sheets</td><td>
Has a tabbed workbook format.</td></tr>
</table>

## Functionalities

Essential Grid offers support for many functionalities such as OLE drag-and-drop, and resizing of rows and columns through property settings and special event handlers. Following table lists such features.



<table>
<tr>
<th>
 {{ '**FEATURE**' | markdownify }}</th><th>
 {{ '**DESCRIPTION**' | markdownify }}</th></tr>
<tr>
<td>
PropertyGrid Integration</td><td>
Sets properties with standard property grid.</td></tr>
<tr>
<td>
Alpha-Blending</td><td>
Blends background image.</td></tr>
<tr>
<td>
Supports XP Themes</td><td>
Supports XP Themes.</td></tr>
<tr>
<td>
Automatic Column Sizing</td><td>
Auto resizes column to hold content.</td></tr>
<tr>
<td>
Reusable Grid Layouts</td><td>
Saves and loads grid layouts.</td></tr>
<tr>
<td>
Excel-like Splits</td><td>
Splits rows/columns similar to Excel.</td></tr>
<tr>
<td>
Fixed Non-Scrolling Rows</td><td>
Fixes or freezes multiple rows.</td></tr>
<tr>
<td>
Fixed Columns</td><td>
Fixes or freezes multiple columns.</td></tr>
<tr>
<td>
Hierarchical Views</td><td>
View data in a hierarchical way.</td></tr>
<tr>
<td>
Worksheet Support</td><td>
Has multiple worksheets.</td></tr>
<tr>
<td>
Master/Detail</td><td>
Shows Master/Detail relationships.</td></tr>
<tr>
<td>
MultiRow Per Record</td><td>
Has one record in multiple rows.</td></tr>
<tr>
<td>
HideRow/Column</td><td>
Hides rows/columns.</td></tr>
<tr>
<td>
Column Styles</td><td>
Applies styles to entire columns.</td></tr>
<tr>
<td>
Multi-line Column Header</td><td>
Has multiline column headers.</td></tr>
<tr>
<td>
Select Multiple Blocks</td><td>
Selects multiple blocks of cells.</td></tr>
<tr>
<td>
Selection Modes</td><td>
Determines how users should select items.</td></tr>
<tr>
<td>
Reusable Styles</td><td>
Creates shared styles.</td></tr>
<tr>
<td>
Selection Styles</td><td>
Customizes the selection colors.</td></tr>
<tr>
<td>
InsertRows/Columns</td><td>
Inserts rows and columns at run time.</td></tr>
<tr>
<td>
DeleteRows/Columns</td><td>
Deletes rows and columns at run time.</td></tr>
<tr>
<td>
MoveRows/Columns</td><td>
Moves rows and columns.</td></tr>
<tr>
<td>
Clear Data</td><td>
Clears data from the cells, rows, and columns.</td></tr>
<tr>
<td>
Keyboard interface</td><td>
Provides extensive support for proper keyboard handling.</td></tr>
<tr>
<td>
Sorting</td><td>
Sorts data displayed in the grid.</td></tr>
<tr>
<td>
Filtering</td><td>
Filters data based on criteria.</td></tr>
<tr>
<td>
Search</td><td>
Finds data in the grid.</td></tr>
<tr>
<td>
Printing</td><td>
Prints the grid.</td></tr>
<tr>
<td>
Print Preview</td><td>
Previews the grid.</td></tr>
<tr>
<td>
In-cell Formulas Support</td><td>
Does advanced cell/ formula referencing.</td></tr>
<tr>
<td>
Clipboard Support</td><td>
Full clipboard support.</td></tr>
<tr>
<td>
Resize Columns/Rows</td><td>
Allows/prevents users from resizing columns/rows.</td></tr>
<tr>
<td>
Drag-and-Drop Features</td><td>
Drags cells, columns, or rows.</td></tr>
<tr>
<td>
OLE Drag-and-Drop</td><td>
Full OLE drag-and-drop support.</td></tr>
<tr>
<td>
Mouse Operations</td><td>
Changes the appearance of the mouse pointer.</td></tr>
</table>


## General

Other features include Excel Export and versioned Serialization support. Following table lists the features.



<table>
<tr>
<th>
{{ '**FEATURE**' | markdownify }}</th><th>
{{ '**DESCRIPTION**' | markdownify }}</th></tr>
<tr>
<td>
Document/View</td><td>
Easily implements multiple views.</td></tr>
<tr>
<td>
Dynamic Splitters</td><td>
Uses grid inside a dynamic splitter control.</td></tr>
<tr>
<td>
Export to Excel BIFF 8</td><td>
Exports grid content to Excel with formatting.</td></tr>
<tr>
<td>
100% Managed Code</td><td>
Written in 100% managed code.</td></tr>
<tr>
<td>
Tab Behavior</td><td>
Controls response selection of the tab.</td></tr>
<tr>
<td>
Full Keyboard Support</td><td>
Provides expected behavior for standard keys.</td></tr>
<tr>
<td>
Serialization</td><td>
Has versioned serialization of grid data.</td></tr>
<tr>
<td>
GridAwareTextBox</td><td>
Edits current cell outside the grid.</td></tr>
</table>


