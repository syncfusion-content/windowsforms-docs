---
layout: post
title: Hide-or-Disabling-Toolbar-Buttons | Windows Forms | Syncfusion&reg;
description: Learn how to disable specific button using the API ToolbarSettings API.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Hide or disable the Toolbar Button

In the WinForms PDF Viewer, there is an API called [ToolbarSettings](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.DocumentToolbarSettings.html) that allows you to access and manage toolbar buttons. To hide a specific button, use the IsVisible property associated with that button. By setting IsVisible to false, the button will be hidden from the toolbar. This API provides an easy way to control the visibility of toolbar buttons based on your requirements.

The following code snippet demonstrates how to hide the Open and Save buttons in the WinForms PDF Viewer control.

{% tabs %}
{%highlight c#%}
//Load the document ot PDFViewer control
 pdfviewerControl.Load("Input.pdf");
 
//Change the visibility of open and save button
pdfviewerControl.ToolbarSettings.OpenButton.IsVisible = false;
pdfviewerControl.ToolbarSettings.SaveButton.IsVisible = false;

{%endhighlight%}

{%highlight vb%}
' Load the document into the PDFViewer control
pdfviewerControl.Load("Input.pdf")

' Change the visibility of Open and Save buttons
pdfviewerControl.ToolbarSettings.OpenButton.IsVisible = False
pdfviewerControl.ToolbarSettings.SaveButton.IsVisible = False

{%endhighlight%}
{% endtabs %}

The following is the image of a PDF document which hides the Open and Save button in Toolbar.

![Hide or disable Toolbar Buttons in Windows PdfViewer](Hide-or-Disabling-Toolbar-Buttons_images/Hide-or-Disabling-Toolbar-Button_img1.png)