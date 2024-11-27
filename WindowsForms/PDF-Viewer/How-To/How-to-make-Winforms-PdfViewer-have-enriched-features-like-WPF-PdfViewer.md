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
To host the WPF PdfViewer in the winforms application follow the below steps,

1. Create an UserControl and add the below XAML code to it.

* Add the following Syncfusion namespace in XAML to make use of the WPF [PdfViewerControl](https://help.syncfusion.com/cr/wpf/Syncfusion.Windows.PdfViewer.PdfViewerControl.html)

   ~~~xaml 
   <UserControl
        xmlns:PdfViewerUserControl="clr-namespace:Syncfusion.Windows.PdfViewer;assembly=Syncfusion.PdfViewer.WPF">
   </UserControl>
   ~~~
* Declare the WPF [PdfViewerControl](https://help.syncfusion.com/cr/wpf/Syncfusion.Windows.PdfViewer.PdfViewerControl.html) in the XAML page.

  ~~~xaml
  <UserControl x:Class="SampleWF.PdfViewer"
             xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
             xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
             xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 
             xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 
             xmlns:local="clr-namespace:SampleWF"
             xmlns:Syncfusion="http://schemas.syncfusion.com/wpf"
             mc:Ignorable="d" 
             xmlns:PdfViewerUserControl="clr-namespace:Syncfusion.Windows.PdfViewer;assembly=Syncfusion.PdfViewer.WPF" 
             Loaded="UserControl_Loaded"
             >

    <Grid>
        <PdfViewerUserControl:PdfViewerControl  x:Name="pdfViewer"/>
    </Grid>
</UserControl>
  ~~~
 * Add the below line of codes in the code behind file.

{% tabs %}
{% highlight c# %}

using System.Windows;
using System.Windows.Controls;

namespace SampleWF
{
    /// <summary>
    /// Interaction logic for PdfViewer.xaml
    /// </summary>
    public partial class PdfViewer : UserControl
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
}

{%endhighlight%}
{% endtabs %}

2. Create an ElementHost object in the Form and add the created UserControl's object as child to the ElementHost object.

To do the above step follow the below procedures

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

