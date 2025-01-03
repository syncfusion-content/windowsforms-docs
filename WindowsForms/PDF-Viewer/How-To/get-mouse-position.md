---
layout: post
title: Get mouse position to page in WinForms PDF Viewer | Syncfusion&reg;
description: The PDF Viewer notifies, you when performing the mouse click and mouse move operations in the PDF pages.
platform: windowsforms
control: PDF Viewer
documentation: ug
---

# Get a mouse position to the page

The [PdfViewerControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html) notifies, you when performing the mouse click and mouse move operations in the PDF pages through the `PageClicked` and `PageMouseMove` events respectively. It also provides information such as the page index and mouse position to the page.

## Page clicked event

The `PageClicked` event occurs when performing the mouse click operation on a PDF page, which is being displayed in the viewer. It provides the page index and the mouse position information through the `PageClickedEventArgs`. The following code shows how to wire the event in [PdfViewerControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html).

{% tabs %}
{% highlight c# %}
using System.Windows.Forms;
using Syncfusion.Windows.Forms.PdfViewer;
namespace PageMouseEventsDemo
{
    public partial class Form1 : Form
    {
        #region Constructor
        public Form1()
        {
            InitializeComponent();

            //Load the PDF file.
            pdfViewerControl1.Load("../../Data/HTTP Succinctly.pdf");
            //Wire the `PageClicked` event.
            pdfViewerControl1.PageClicked += PdfViewer_PageClicked;
        }
        #endregion
		
        #region Event
        void PdfViewer_PageClicked(object sender, PageClickedEventArgs args)
        {
            //Find the page number in which the mouse clicks occurred.
            int currentPage = args.PageIndex;
            //Find the mouse position on above the document page
            System.Drawing.PointF mousePosition = args.Position;
        }
        #endregion
    }
}
{% endhighlight %}
{% endtabs %}

## Page mouse move event

The `PageMouseMove` event occurs when the mouse moves over a PDF page that is being displayed in the viewer. It provides the page index and the mouse position information through the `PageMouseMoveEventArgs`. The following code shows how to wire the event in [PdfViewerControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html).

{% tabs %}
{% highlight c# %}
using System.Windows.Forms;
using Syncfusion.Windows.Forms.PdfViewer;
namespace PageMouseEventsDemo
{
    public partial class Form1 : Form
    {
        #region Constructor
        public Form1()
        {
            InitializeComponent();
            //Load the PDF file.
            pdfViewerControl1.Load("../../Data/HTTP Succinctly.pdf");
            //Wire the `PageMouseMove` event.
            pdfViewerControl1.PageMouseMove += Pdfviewer_PageMouseMove;
        }
        #endregion
		
        #region Event
        void Pdfviewer_PageMouseMove(object sender, PageMouseMoveEventArgs args)
        {
            //Find the page number in which the mouse clicks occurred.
            int currentPage = args.PageIndex;
            //Find the mouse position on above the document page
            System.Drawing.PointF mousePosition = args.Position;
        }
        #endregion
    }
}
{% endhighlight %}
{% endtabs %}
