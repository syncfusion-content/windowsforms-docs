---
layout: post
title: Working with Hyperlinks | Windows Forms | Syncfusion
description: Hyperlink navigation support in PDF Viewer WinForms detects hyperlinks present in PDF and on tapping it, will open the URL in the browser. 
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Working with Hyperlinks 

PDF Viewer provides support for URLs (hyperlinks) in the PDF document that enables the navigation to the destination by opening it in the default browser just by clicking on it. This also supports a few events that are listed in the below table.

### Events Table

<table>
<tr>
<th>
Event </th><th>
Description </th><th>
Arguments </th><th>
Type </th></tr>
<tr>
<td>{{'[HyperlinkMouseOver](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~HyperlinkMouseOver_EV.html)'| markdownify }}</td>
<td>This event is triggered when the mouse pointer is placed over the URL.</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr>
<td>{{'[HyperlinkClicked](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~HyperlinkClicked_EV.html)'| markdownify }}</td>
<td>This event is triggered when the URL in the PDF document is clicked.</td>
<td>N/A</td>
<td>N/A</td>
</tr>
</table>


## How to disable hyperlink navigation in PDF Viewer?

We can disable the hyperlink navigation in [PdfViewerControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html) by wiring the event [HyperlinkClicked](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~HyperlinkClicked_EV.html). The below code example illustrates the same.

{% tabs %}
{% highlight c# %}

//Initialize PDF Viewer.

PdfViewerControl pdfViewerControl = new PdfViewerControl();

//Load the PDF.

pdfViewerControl.Load("Sample.pdf");

// Hooks the event handler for `HyperlinkClicked` event.    
pdfViewerControl.HyperlinkClicked += PdfViewerControl_HyperlinkClicked;

public void PdfViewerControl_HyperlinkClicked(object sender, AnnotEventArgs e)
{

//Your code here...
            
}

{% endhighlight %}

{% highlight vbnet %}

' Hooks the event handler for `HyperlinkClicked` event

'Initialize PDF Viewer.

Private pdfViewerControl As New PdfViewerControl()

'Load the PDF.

pdfViewerControl.Load("Sample.pdf")

AddHandler pdfViewerControl.HyperlinkClicked, AddressOf PdfViewerControl_HyperlinkClicked

Private Sub PdfViewerControl_HyperlinkClicked(obj As Object, args As Syncfusion.Windows.PdfViewer.AnnotEventArgs)

'Your code here...

End Sub

{% endhighlight %}
{% endtabs %}


## How to retrieve the clicked URL details from PDF Viewer?

We can acquire the details of the URL which is clicked in the PDF file using the the [AnnotEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.AnnotEventArgs.html), which is passed as a parameter of the [HyperlinkClicked](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~HyperlinkClicked_EV.html) event. The below code example illustrates the same.

{% tabs %}
{% highlight c# %}

// Hooks the event handler for `HyperlinkClicked` event.    
pdfViewerControl.HyperlinkClicked += PdfViewerControl_HyperlinkClicked;

public void PdfViewerControl_HyperlinkClicked(object sender, AnnotEventArgs e)
{
  
 //Returns the URI clicked in the PDF viewer control.
 string URI = args.URI; 
            
}

{% endhighlight %}

{% highlight vbnet %}

' Hooks the event handler for `HyperlinkClicked` event
AddHandler pdfViewerControl.HyperlinkClicked, AddressOf PdfViewerControl_HyperlinkClicked

Private Sub PdfViewerControl_HyperlinkClicked(obj As Object, args As Syncfusion.Windows.PdfViewer.AnnotEventArgs)

' Returns the URI clicked in the PDF viewer control.
Dim uri As String = args.URI

End Sub

{% endhighlight %}
{% endtabs %}


## How to redirect to a different URL?

We can navigate to different URL irrespective of the one clicked. The below code example illustrates the same.

{% tabs %}
{% highlight c# %}

// Hooks the event handler for `HyperlinkClicked` event.    
pdfViewerControl.HyperlinkClicked += PdfViewerControl_HyperlinkClicked;

public void PdfViewerControl_HyperlinkClicked(object sender, AnnotEventArgs e)
{
 
 // Opens the URI (www.google.com) in a default browser.
 System.Diagnostics.Process.Start("www.google.com");
             
}

{% endhighlight %}

{% highlight vbnet %}

' Hooks the event handler for `HyperlinkClicked` event.
AddHandler pdfViewerControl.HyperlinkClicked, AddressOf PdfViewerControl_HyperlinkClicked

Private Sub PdfViewerControl_HyperlinkClicked(obj As Object, args As Syncfusion.Windows.PdfViewer.AnnotEventArgs)

' Opens the URI (www.google.com) in a default browser.
System.Diagnostics.Process.Start("www.google.com")

End Sub

{% endhighlight %}
{% endtabs %}