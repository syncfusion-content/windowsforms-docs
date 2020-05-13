---
layout: post
title: Printing PDF Files | PDF Viewer | WinForms | Syncfusion
description: The PDF Viewer supports printing a PDF file loaded in it. It supports printing using print dialog and silent batch printing. 
platform: windowsforms
control: PDF Viewer
documentation: ug
---

# Printing PDF Files in WinForms PdfViewer

PdfViewerControl allows printing loaded PDFs using the Print button in the toolbar. The following Print dialog will be opened upon clicking the Print button.

![PrintDialog Window](Working-with-PDF-Viewer_images/Working-with-PDF-Viewer_img1.png)

## Silent Printing

The [PrintDocument](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~PrintDocument.html) property of PdfViewerControl returns System.Drawing.Printing.PrintDocument that helps to complete printing using PrintDialog. The following code sample demonstrates this:

{% tabs %}
{%highlight c#%}

PrintDialog dialog = new PrintDialog();

dialog.AllowPrintToFile =true;

dialog.Document = pdfViewerControl1.PrintDocument;

dialog.Document.Print();

{%endhighlight%}

{%highlight vb%}

Dim dialog As New PrintDialog()

dialog.AllowPrintToFile = True

dialog.Document = pdfViewerControl1.PrintDocument

dialog.Document.Print()

{%endhighlight%}
{% endtabs %}

## Customizing print size

PdfViewerControl printer settings allows scaling PDF pages to shrink or enlarge while printing.

### Actual Size

Actual size is the default value of print size option in printer settings. This prints the loaded PDF document without any scaling factors. The pages that do not fit on the paper will be cropped. The following code example illustrates how to print the document in Actual Size.

{% tabs %}
{% highlight c# %}

// Prints the document in actual size.

pdfViewerControl1.PrinterSettings.PageSize = PdfViewerPrintSize.ActualSize;

{% endhighlight %}

{% highlight vb %}

' Prints the document in actual size.

pdfViewerControl1.PrinterSettings.PageSize = PdfViewerPrintSize.ActualSize

{% endhighlight %}
{% endtabs %}

### Fit

Fit option enlarges or reduces each page to fit the printable area of the selected paper size. The following code example illustrates the same.

{% tabs %}
{% highlight c# %}

// Prints the document in fit size.

pdfViewerControl1.PrinterSettings.PageSize = PdfViewerPrintSize.Fit;

{% endhighlight %}

{% highlight vb %}

' Prints the document in fit size.

pdfViewerControl1.PrinterSettings.PageSize = PdfViewerPrintSize.Fit

{% endhighlight %}
{% endtabs %}

### Custom Scale

Custom Scale option resizes the page with the specified scale percentage. The following code example illustrates the same.

{% tabs %}
{% highlight c# %}

// Prints the document with custom scaling.

pdfViewerControl1.PrinterSettings.PageSize = PdfViewerPrintSize.CustomScale;

// Scale percentage with the page to be resized and it is applicable only for Custom Scale. The default value is 100.

pdfViewerControl1.PrinterSettings.ScalePercentage = 120;

{% endhighlight %}

{% highlight vb %}

' Prints the document with custom scaling.

pdfViewerControl1.PrinterSettings.PageSize = PdfViewerPrintSize.CustomScale

' Scale percentage with the page to be resized and it is applicable only for Custom Scale. The default value is 100.

pdfViewerControl1.PrinterSettings.ScalePercentage = 120

{% endhighlight %}
{% endtabs %}

## Printing PDF document with orientation settings

PdfViewerControl printer settings allows the user to print the document with a custom orientation.

### Auto Portrait/Landscape

Auto Portrait/Landscape is the default option and it automatically selects the best orientation (Portrait or Landscape) based on the content and selected paper. The following code example illustrates how to print the document in Auto orientation.

{% tabs %}
{% highlight c# %}

// Prints the document in auto orientation.

pdfViewerControl1.PrinterSettings.PageOrientation = PdfViewerPrintOrientation.Auto;

{% endhighlight %}

{% highlight vb %}

' Prints the document in auto orientation.

pdfViewerControl1.PrinterSettings.PageOrientation = PdfViewerPrintOrientation.Auto

{% endhighlight %}
{% endtabs %}

### Portrait

Portrait option prints the PDF document in portrait orientation and it overrides the orientation settings provided in the print dialog. The following code example illustrates the same.

{% tabs %}
{% highlight c# %}

// Prints the document in portrait orientation.

pdfViewerControl1.PrinterSettings.PageOrientation = PdfViewerPrintOrientation.Portrait;

{% endhighlight %}

{% highlight vb %}

' Prints the document in portrait orientation.

pdfViewerControl1.PrinterSettings.PageOrientation = PdfViewerPrintOrientation.Portrait

{% endhighlight %}
{% endtabs %}

### Landscape

Landscape option prints the PDF document in landscape orientation and it overrides the orientation settings provided in print dialog. The following code example illustrates the same.

{% tabs %}
{% highlight c# %}

// Prints the document in landscape orientation.

pdfViewerControl1.PrinterSettings.PageOrientation = PdfViewerPrintOrientation.Landscape;

{% endhighlight %}

{% highlight vb %}

' Prints the document in landscape orientation.

pdfViewerControl1.PrinterSettings.PageOrientation = PdfViewerPrintOrientation.Landscape

{% endhighlight %}
{% endtabs %}

## Print Notifications

The [PdfViewerControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html) notifies you at the start, progress, and end of the printing through events such as [BeginPrint](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~BeginPrint_EV.html), [PrintProgress](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~PrintProgress_EV.html), and [EndPrint](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~EndPrint_EV.html) respectively.

### Begin Print Event

The [BeginPrint](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~BeginPrint_EV.html) event occurs when the print is called and before the first page of the document prints. The following code shows how to wire the event in [PdfViewerControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html).

{% tabs %}
{% highlight c# %}

using System.Windows.Forms;
using Syncfusion.Windows.Forms.PdfViewer;

namespace PrintEventsDemo
{
    public partial class Form1 : Form
    {
        #region Constructor
        public Form1()
        {
            InitializeComponent();

            //Wire the `BeginPrint` event,
            pdfViewerControl1.BeginPrint += PdfViewerControl1_BeginPrint;

            //Load the PDF file.
            pdfViewerControl1.Load("../../Data/HTTP Succinctly.pdf");

            //Print the file silently to the default printer. 
            pdfViewerControl1.Print(true);
        }
        #endregion

        #region Events
        private void PdfViewerControl1_BeginPrint(object sender, BeginPrintEventArgs e)
        {
            //Insert your code here
        }
        # endregion
    }
}

{% endhighlight %}
{% endtabs %}

### Print Progress Event

The [PrintProgress](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~PrintProgress_EV.html) event occurs to provide information on how much printing content was submitted to the printing subsystem. It provides the page information through the [PrintProgressEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PrintProgressEventArgs.html). The following code shows how to wire the event in [PdfViewerControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html).

{% tabs %}
{% highlight c# %}

using System.Windows.Forms;
using Syncfusion.Windows.Forms.PdfViewer;

namespace PrintEventsDemo
{
    public partial class Form1 : Form
    {
        #region Constructor
        public Form1()
        {
            InitializeComponent();

            //Wire the `PrintProgress` event,
            pdfViewerControl1.PrintProgress += PdfViewerControl1_PrintProgress;

            //Load the PDF file.
            pdfViewerControl1.Load("../../Data/HTTP Succinctly.pdf");

            //Print the file silently to the default printer. 
            pdfViewerControl1.Print(true);
        }
        #endregion

        #region Events
        private void PdfViewerControl1_PrintProgress(object sender, PrintProgressEventArgs e)
        {
            //Find the page number which is currently printing.
            int currentPage = e.PageIndex;

            //Find the total number of pages present in the file.
            int pageCount = e.PageCount;
           
            //Insert your code here
        }
        # endregion
    }
}

{% endhighlight %}
{% endtabs %}

### End Print Event

The [EndPrint](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~EndPrint_EV.html) event occurs when the last page of the document has printed. It also occurs if the printing process is canceled or an exception occurs during the printing process. The following code shows how to wire the event in [PdfViewerControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html).

{% tabs %}
{% highlight c# %}

using System.Windows.Forms;
using Syncfusion.Windows.Forms.PdfViewer;

namespace PrintEventsDemo
{
    public partial class Form1 : Form
    {
        #region Constructor
        public Form1()
        {
            InitializeComponent();

            //Wire the `EndPrint` event,
            pdfViewerControl1.EndPrint += PdfViewerControl1_EndPrint;

            //Load the PDF file.
            pdfViewerControl1.Load("../../Data/HTTP Succinctly.pdf");

            //Print the file silently to the default printer. 
            pdfViewerControl1.Print(true);
        }
        #endregion

        #region Events
        private void PdfViewerControl1_EndPrint(object sender, EndPrintEventArgs e)
        {
            //Insert your code here
        }
        # endregion
    }
}

{% endhighlight %}
{% endtabs %}

N> The complete sample project of the print events can be downloaded from the [GitHub](https://github.com/SyncfusionExamples/WinForms-PDFViewer-Examples/tree/master/Printing/PrintEventsDemo) location.