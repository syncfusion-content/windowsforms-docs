---
layout: post
title: Virtual-Grids
description: virtual grids
platform: windowsform
control: Grid
documentation: ug
---

# Virtual Grids

Essential Grid  supports complete separation between datasource and the grid. In a virtual grid, no cell data is stored in GridStyleInfo objects or any other internal grid storage. All information is provided on demand through handled events. For example, whenever Essential Grid needs a row count for a grid, it fires QueryRowCount event. In your handler, you must provide the row count from your datasource. Virtual grids can display large amounts of data extremely fast. There is no need to perform the time-consuming task of populating the grid. 

To implement Read-only virtual grid, you have to handle three events. To remove Read-only limitation, you have to handle a fourth event. In addition to these four events, there are other events that you may want to handle depending upon the behavior you are trying to implement. You can work through virtual grid tutorial to see an implementation of a simple virtual grid.

