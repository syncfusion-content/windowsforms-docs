---
layout: post
title: Enhance WinForms PdfViewer with WPF Features | Syncfusion&reg;
description: Learn how to integrate the WPF PdfViewer in Windows Forms to access advanced features like annotations, form filling, and signatures.
platform: windowsforms
control: PDF Viewer
documentation: ug
---
# How to Add WPF PdfViewer Features to WinForms PdfViewer

To leverage the advanced features offered by the WPF PdfViewer, such as adding annotations, form filling, signatures, stamps, sticky notes, and more, you can [integrate the WPF PdfViewer into the Windows Forms]( https://support.syncfusion.com/kb/article/7882/how-to-host-pdf-viewer-in-windows-forms-application ) and take advantage of its extensive feature sets.

we can  host a WPF PdfViewer control within a Windows Forms application using an ElementHost. By embedding the WPF PdfViewer, you can access advanced features available in the WPF control while maintaining a Windows Forms interface.

## Steps to host the WPF PdfViewer in the winforms application

1. Add an WPF UserControl and install the [Syncfusion.PdfViewer.WPF](https://www.nuget.org/packages/Syncfusion.PdfViewer.WPF) NuGet package to your WinForms application.

2. Add the following Syncfusion&reg; namespace in XAML to make use of the WPF [PdfViewerControl.](https://help.syncfusion.com/cr/wpf/Syncfusion.Windows.PdfViewer.PdfViewerControl.html)

   ~~~xaml 
   <UserControl
        xmlns:PdfViewerUserControl="clr-namespace:Syncfusion.Windows.PdfViewer;assembly=Syncfusion.PdfViewer.WPF">
   </UserControl>
   ~~~

3. Drag and drop the PdfViewerControl to the UserControl from the toolbox or add the below code in the XAML page to initialize the WPF PdfViewer.

   ~~~xaml
    <Grid>
        <PdfView:PdfViewerControl  x:Name="pdfViewer"/>
    </Grid>
   ~~~

4. Load the PDF file into the PdfViewer when the UserControl is loaded in the application

{% tabs %}
{% highlight c# %}


 /// <summary>
 /// Interaction logic for PdfViewer.xaml
 /// </summary>
 public partial class PdfViewerUserControl : UserControl
 {
    public PdfViewer()
    {
        InitializeComponent();
    }

    private void UserControl_Loaded(object sender, RoutedEventArgs e)
    {
        pdfViewer.Load(@"../../Data/Windows Store Apps Succinctly.pdf");            
    }
 }

{%endhighlight%}
{% endtabs %}

5. Add a panel to the form. Create an ElementHost object in the Form and add the created UserControl's object as child to the ElementHost object. Add the elementHost as a chile to the panel as mentioned below.

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
            PdfViewerUserControl pdfViewerUserControl = new PdfViewerUserControl();
			// Embeds the PdfViewer into the ElementHost
            elementHost.Child = pdfViewerUserControl;
          
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

You can find the complete sample in the [Github](https://github.com/SyncfusionExamples/WinForms-PDFViewer-Examples/tree/master/How-to/Host-WPFPdfViewer-in-Winforms/HostedPdfViewer) for your reference.
