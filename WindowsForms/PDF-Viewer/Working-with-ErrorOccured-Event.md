---
layout: post
title: Working with ErrorOccured Event in WinForms PDF Viewer | Syncfusion&reg;
description: Learn about Working with ErrorOccured Event in Syncfusion&reg; Windows Forms PDF Viewer (PdfViewerControl) control and more details.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Working with ErrorOccured Event in Windows Forms PDF Viewer (PdfViewerControl)

PDF Viewer provides support to identify the error using the ErrorOccured Event,The ErrorOccurred[
https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html#Syncfusion_Windows_Forms_PdfViewer_PdfViewerControl_ErrorOccurred
] event in the PdfViewerControl is triggered whenever an error occurs within the control. This event provides an opportunity to handle errors effectively by allowing developers to log the details or display appropriate messages to users when an issue arises within the PdfViewerControl[https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html].

{% tabs %}
{% highlight c# %}

public Form1()
{
    InitializeComponent();
    PdfViewer.ErrorOccurred += PdfViewer_ErrorOccurred;
}

private void PdfViewer_ErrorOccurred(object sender, ErrorOccurredEventArgs e)
{
    // Log error message
    Console.WriteLine("Error occurred in PdfViewerControl: " + e.Message);

    // Display error message to the user
    MessageBox.Show("An error occurred while viewing the PDF: " + e.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
}

{% endhighlight %}
{% endtabs %}