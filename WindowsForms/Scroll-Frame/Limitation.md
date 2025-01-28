---
layout: post
title: Limitation in Windows Forms Scroll Frame control | Syncfusion®
description: Learn about Limitation support in Syncfusion® Windows Forms Scroll Frame (SfScrollFrame) control and more details.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

# Limitation in Windows Forms Scroll Frame (SfScrollFrame)

## Applicable controls for setting the ScrollFrame

The `SfScrollFrame` can be used for the controls derived from the Microsoft ScrollableControl such as:

* Panel
* ContainerControl
* Listbox
* ListView

The `SfScrollFrame` cannot be attached to the controls defined its scrollbar by own i.e. creating custom scrollbars for both the horizontal and vertical orientations.

## ScrollBar LargeChange 

The `LargeChange` cannot be changed for the attached controls. As `LargeChange` is differed for every controls based on its available items (may be controls and inner controls), and `LargeChange` cannot be decided at application level. 
