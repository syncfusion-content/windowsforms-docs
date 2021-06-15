---
layout: post
title: QTP/UFT for Syncfusion Essential WindowsForms
description: Learn here all about the limitations for QTP/UFT of the Syncfusion Essential Studio Windows Forms controls and more.
platform: WindowsForms
control: Testing
documentation: ug
---

# Limitations in Windows Forms Controls

The following are the limitations in various controls that are yet to be resolved.

## General
Documentation column is not supported in the Keyword View.

## Essential Grid
Grid does not support drop-down controls such as Combo box, Grid List control, and so on.

## Essential Tools
The following are the list of tools with their respective known issues,

### Group Bar
When the Stacked Mode is set to true, the NavigationPanelButtonClick is not recorded.

### GroupView
When the button view is set to false, the drag-and-drop, or re-ordering, of the GroupView item is not recorded. On clicking the re-ordered item, the index is recorded correctly.

### DateTimePickerAdv
1. The events on the header panel that are inside the pop-up window cannot be replayed. The SetCurrentCell and ResizeRow events of the Syncfusion.QuickTestProfessional.Grid that are associated with the Calendar are triggered by the pop-up window. These events are recorded, but cannot be played back in the replay. While replaying, they should be manually removed.
2. Once the calendar events are handled, the replay works slower. This is because of the ‘for each’ loop in the replay, enables you to trace all the controls that are inside the pop-up window and then show or hide them as you need.

### Docking Manager
1. When two controls are in tabbed style and you click on the inactive tab and drag it outside the tabbed mode, it does not replay properly. In order to avoid this problem, select the tab that is going to be dragged, click on the tab, and drag it outside.
2. When a floating form state is changed to an MDIChild state and MDIChild state is changed to a floating form state, it does not replay properly.

### Ribbon Control
The Quick access panel customize menu is not recorded.