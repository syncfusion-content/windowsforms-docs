---
layout: post
title: Enhance WinForms PdfViewer with WPF Features | WinForms | Syncfusion
description: Learn how to integrate the WPF PdfViewer in Windows Forms to access advanced features like annotations, form filling, and signatures.
platform: windowsforms
control: PDF Viewer
documentation: ug
---
# How to Add WPF PdfViewer Features to WinForms PdfViewer

To leverage the advanced features offered by the WPF PdfViewer, such as adding annotations, form filling, signatures, stamps, sticky notes, and more, you can [integrate the WPF PdfViewer into the Windows]( https://support.syncfusion.com/kb/article/7882/how-to-host-pdf-viewer-in-windows-forms-application ) and take advantage of its extensive feature sets.

we can  host a WPF PdfViewer control within a Windows Forms application using an ElementHost. By embedding the WPF PdfViewer, you can access advanced features available in the WPF control while maintaining a Windows Forms interface.
Below is an overview of the key components and steps involved in the implementation: 
1. **Adding the ElementHost Control:**
    * An ElementHost is a special Windows Forms control that allows hosting WPF elements within a Windows Forms application
    * The elementHost is created and configured to fill a panel (panel1) within the Windows Forms application using properties such as DockStyle.Fill and AutoSize

2. **Embedding the PdfViewer**
    * Create a separate XAML file to define the WPF PdfViewer control
	* PdfViewer in this example refers to the custom XAML file. This file defines the WPF PdfViewer control within a UserControl .
	* The elementHost.Child property is set to an instance of this custom PdfViewer UserControl, thereby embedding the WPF PdfViewer into the Windows Forms application.

3. **Styling and Layout**
    * Additional configurations, such as setting margins, the background color, and the size of the elementHost, ensure the control fits seamlessly within the Windows Forms panel.
	
4. **Maximizing the Window**
    * In the Form Load method, the Windows Forms application is set to launch in a maximized state for an optimal viewing experience.

Let's see the code that demonstrates how to host the WPF PdfViewer control within a Windows Forms application

{% tabs %}
{% highlight c# %}

using System.Windows.Forms;
using System.Windows.Forms.Integration;

namespace SampleWF
{
   
    public partial class Form1 : Form
    {
        ElementHost elementHost = null;
        public Form1()
        {
            InitializeComponent();
           
            // Create the ElementHost control to host the WPF PdfViewer
            elementHost = new ElementHost();
            elementHost.AutoSize = true;
            elementHost.Size = panel1.Size;
            elementHost.Dock = DockStyle.Fill;
			// Adds the ElementHost to the panel1 control
            panel1.Controls.Add(elementHost);
			
            // Create the WPF PdfViewer control and assign it as a child of ElementHost
            PdfViewer pdfViewer = new PdfViewer();
			// Embeds the PdfViewer into the ElementHost
            elementHost.Child = pdfViewer;
          
		    // Set additional visual properties for a seamless look and feel
            elementHost.Margin = new Padding(0, 0, 0, 0);
            elementHost.Region = new Region();
            elementHost.BackColor = System.Drawing.Color.White;
        }
		
		// Set the form to maximized when it loads
        private void Form1_Load(object sender, System.EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
        }
    }
}

{%endhighlight%}
{% endtabs %}

N>
 * ElementHost is a type that can be used to host a WPF control in a WinForms control. It acts as a container for the WPF control that needs to be hosted.
 * To use the ElementHost class, you must import the System.Windows.Forms.Integration namespace.

