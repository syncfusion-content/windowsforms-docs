---
layout: post
title: Enhance WinForms PdfViewer with WPF Features | WinForms | Syncfusion
description: Learn how to integrate the WPF PdfViewer in Windows Forms to access advanced features like annotations, form filling, and signatures.
platform: windowsforms
control: PDF Viewer
documentation: ug
---
# How to Add WPF PdfViewer Features to WinForms PdfViewer

To leverage the advanced features offered by the WPF PdfViewer, such as adding annotations, form filling, signatures, stamps, sticky notes, and more, you can [integrate the WPF PdfViewer into the Windows Forms]( https://support.syncfusion.com/kb/article/7882/how-to-host-pdf-viewer-in-windows-forms-application ) and take advantage of its extensive feature sets.

we can  host a WPF PdfViewer control within a Windows Forms application using an ElementHost. By embedding the WPF PdfViewer, you can access advanced features available in the WPF control while maintaining a Windows Forms interface.
Below is an overview of the key components and steps involved in the implementation: 

* Create an ElementHost object in the form1.cs.
* Set the size of the elementHost variable to the panel size.
* Add the elementHost to the panel Controls.
* Create an another UserControl and add the WPF PdfViewer in the UserControl and load the required Pdf in it.
* Create an object for the added UserControl class.
* Assign the Created object as child for the elementHost.
* Add required Styling like margin so that control fits correctly in the panel.
* If you wabt to load the Pdfviewr in maximum state you can adjut the windows state in the Form_loaded event.

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

