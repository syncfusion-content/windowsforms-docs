---
layout: post
title: Add Syncfusion Controls | WindowsForms | Syncfusion
description: Through Drag and Drop
platform: WindowsForms
control: Introduction
documentation: ug
---


# Add Syncfusion Controls

### Through Drag and Drop

The following steps will help you to add required Essential WF Control, for example: DockingManager, by Drag and Drop.

1) Create a WF project in Visual Studio.<br/><br/></td></tr>
2) Find DockingManager control by typing the name of the DockingManager in the search box.<br/><br/></td></tr>

![docking](ThroughDragandDrop_images/ThroughDragandDrop_img1.jpeg)


3) Drag DockingManager and drop it in the designer.<br/><br/></td></tr>

### Through C# / VB

The following steps will help you to add required Essential WF Control. For example: DockingManager through C# or VB Code.

1) Create a WF project in Visual Studio and refer to the following assemblies.

 * Syncfusion.Tools.Base
 * Syncfusion.Tools.Windows
 * Syncfusion.Shared.Base
 * Syncfusion.Shared.Windows
 * Syncfusion.Grid.Base
 * Syncfusion.Grid.Windows

2) Add the following namespace.

<table>
<tr>
<td>
**[**C**#]**<br/><br/>using Syncfusion.Windows.Forms.Tools;<br/><br/>using Syncfusion.Windows.Forms;<br/><br/></td></tr>
</table>


<table>
<tr>
<td>
**[**VB**]**<br/><br/>Imports Syncfusion.Windows.Forms.Tools<br/><br/>Imports Syncfusion.Windows.Forms<br/><br/></td></tr>
</table>

3) Create an instance of Docking Manager.

<table>
<tr>
<td>
**[**C**#]**<br/><br/>private Syncfusion.Windows.Forms.Tools.DockingManager DockingManager = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components);<br/><br/></td></tr>
</table>


<table>
<tr>
<td>
**[**VB**]**<br/><br/>private Syncfusion.Windows.Forms.Tools.DockingManager DockingManager = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components)<br/><br/></td></tr>
</table>
