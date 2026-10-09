---
layout: post
title: Limitation in Windows Forms Scroll Frame | Syncfusion®
description: Limitations describe supported control types, custom scrollbar restrictions, and scrollbar LargeChange behavior constraints.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

# Limitation in Windows Forms Scroll Frame (SfScrollFrame)

## Applicable controls for setting the ScrollFrame

The `SfScrollFrame` can be used for the controls derived from the Microsoft ScrollableControl such as:

* Panel
* ContainerControl
* ListBox
* ListView

The `SfScrollFrame` cannot be attached to the controls that define their own scrollbars, i.e., controls that create custom scrollbars for both the horizontal and vertical orientations.

## ScrollBar LargeChange

The `LargeChange` cannot be changed for the attached controls. `LargeChange` differs for every control based on its available items (may be controls and inner controls), so `LargeChange` cannot be decided at the application level. 
