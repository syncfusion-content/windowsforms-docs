---
layout: post
title: PrepareViewStyleInfo-Event
description: prepareviewstyleinfo event
platform: windowsform
control: Grid
documentation: ug
---

# PrepareViewStyleInfo Event

PrepareViewStyleInfo event is raised to allow custom formatting of a cell by changing its style object just before it is drawn. This allows formatting based on the current view state, e.g. current cell context, focused control, and so on. For example, if you want draw the current row with a bold text, you can use PrepareViewStyleInfo to accomplish this task. The idea is to change the style to bold font for any cell in the current one. Given below are the steps that you can follow in order to implement this functionality.

* Add a handler for CurrentCellDeactivated to refresh the old row to remove its bold font. 
* Add a handler for CurrentCellActivated to refresh the new current row to add its bold font. 
* Add a handler for PrepareViewStyleInfo to conditionally change the bold style of the font if the requested cell is on the current row. 

To see a full working sample, check the HighlightCurrent sample that is shipped with Essential Grid. Notice that the work is done just by refreshing the grid (redraw) row. During refresh, PrepareViewStyleInfo is selected and the style is modified to be bold if the row is current. This means that no bold style information is saved anywhere. GridStyleInfo object is just temporarily modified immediately before it is used in the drawing.

