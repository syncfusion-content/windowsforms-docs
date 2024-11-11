---
layout: post
title: Enhance WinForms PdfViewer with WPF Features | WinForms | Syncfusion
description: Learn how to integrate the WPF PdfViewer in Windows Forms to access advanced features like annotations, form filling, and signatures.
platform: windowsforms
control: PDF Viewer
documentation: ug
---
# How to Add WPF PdfViewer Features to WinForms PdfViewer

Currently the Syncfusion Windows Forms PdfViewer lacks support for the features, such as adding annotations, form filling, signatures, stamps, sticky notes, etc., which are available in the WPF PdfViewer.But we can integrate the WPF PdfViewer into the Windows Forms(How to host PDF Viewer in windows forms application?) to utilize the features that are not in the Windows Forms PdfViewer but are available in the WPF PdfViewer. For that first create a simple Windows Forms application

Add the below code in the Form1.cs class (code behind) So that the embedding of the WPF PdfViewer into the Windows Forms will become ease. Use the below code in the Form1.cs class

{% tabs %}

{%highlight c#%}

Public partial class Form1 : Form 
{
// Declare the ElementHost variable
 ElementHost elementHost = null;
Public Form1()
{
InitializeComponent()
// Create the ElementHost control
 elementHost = new ElementHost();

 elementHost.AutoSize = true;
 elementHost.Size = panel1.Size;
 elementHost.Dock = DockStyle.Fill;

// Adds the ElementHost to the panel1 control
 panel1.Controls.Add(elementHost);

// Create the WPF PdfViewer control and assign it as a child of ElementHost
 PdfViewer pdfViewer = new PdfViewer();
 elementHost.Child = pdfViewer;

 elementHost.Margin = new Padding(0, 0, 0, 0);
 elementHost.Region = new Region();
 elementHost.BackColor = System.Drawing.Color.White;
  }
}

{%endhighlight%}

{% endtabs %}

N>
 * ElementHost is a type that can be used to host a WPF control in a WinForms control. It acts as a container for the WPF control that needs to be hosted.
 * To use the ElementHost class, you must import the System.Windows.Forms.Integration namespace.

