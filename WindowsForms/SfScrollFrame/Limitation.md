---
layout: post
title: Limitation | Windows Forms | Syncfusion
description: This section explains the limitations of the SfScrollFrame.
platform: WindowsForms
control: SfScrollFrame
documentation: ug
---

## Limitation

### Applicable controls for setting the ScrollFrame
The `SfScrollFrame` can be used for the controls which are derived from the **ScrollableControl** such as Microsoft's,

* Panel
* ContainerControl
* Listbox
* ListView

`SfScrollFrame` cannot be attached to the controls which defined its scrollbar by own i.e. creating custom scrollbars for both the Horizontal and vertical orientation.

### ScrollBar LargeChange 
The `LargeChange` cannot be changed for the attached controls. As the control's `LargeChange` is differed for every controls based on its items (may be controls, inner controls) available in the control, `LargeChange` cannot be decided at application level. 