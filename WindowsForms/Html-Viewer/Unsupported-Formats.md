---
layout: post
title: Unsupported HTML formats in WindowsForms HTMLUIControl | Syncfusion
description: This page clearly explains which are the HTML format does not support by the control of the HTML UI.
platform: WindowsForms
control: HTML UI
documentation: ug
---

# Unsupported formats in Windows Forms Html Viewer (HTMLUI)

The [HTMLUI](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html) control contains advanced options with some limitations. It allows you to only load basic html or htm pages.
 
Unlike web browsers, the following cannot be loaded into web pages using `HTMLUI` control,
 
 * Complex objects 
 
    **Example:**
 
    From direct text to links cannot be navigated.
 
![HTMLUI control not supports the ](Unsupported-Formats_images/HTML_DirectLink.png)
 
N> So, the html or htm files with complex objects will not be loaded in `HTMLUI` control.

