---
layout: post
title: Working with Hyperlinks in Windows Forms PDF Viewer | Syncfusion
description: Learn about Working with Hyperlinks support in Syncfusion Windows Forms PDF Viewer (PdfViewerControl) control and more details.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Working with Hyperlinks in Windows Forms PDF Viewer (PdfViewerControl)

PDF Viewer provides support for URLs (hyperlinks) in the PDF document that enables the navigation to the destination by opening it in the default browser just by clicking on it. This also supports a few events that are listed in the below table.

### Events Table

<table>
<tr>
<th>
Event </th><th>
Description </th><th>
Arguments </th></tr>
<tr>
<td>{{'[HyperlinkMouseOver](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html)'| markdownify }}</td>
<td>This event is triggered when the mouse pointer is placed over the hyperlink.</td>
<td>HyperlinkMouseOverEventArgs</td>
</tr>
<tr>
<td>{{'[HyperlinkClicked](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html)'| markdownify }}</td>
<td>This event is triggered when the hyperlink in the PDF document is clicked.</td>
<td>HyperlinkClickedEventArgs</td>
</tr>
</table>


## How to disable hyperlink navigation in PDF Viewer?

We can disable the hyperlink navigation in PDF viewer control by setting the value of `Handled` in the `HyperlinkClickedEventArgs` parameter as true in the `HyperlinkClicked` Event which is available in the PdfViewerControl and PdfDocumentView class. 
Please refer the below example for more details.

{% tabs %}
{% highlight c# %}

//Initialize PDF Viewer.

PdfViewerControl pdfViewerControl = new PdfViewerControl();

// Hooks the event handler for `HyperlinkClicked` event.    
pdfViewerControl.HyperlinkClicked += PdfViewerControl_HyperlinkClicked;

private void PdfViewerControl_HyperlinkClicked(object sender, Syncfusion.Windows.Forms.PdfViewer.HyperlinkClickedEventArgs args)
{

  // Gets or sets the value to handle the navigation of hyperlink.
  args.Handled = true;
            
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


## How to retrieve the Hyperlink details from PDF Viewer?

We can retrieve the hyperlink details from PDF viewer using `HyperlinkClickedEventArgs` when the hyperlink is clicked and `HperlinkMouseOverEventArgs` when the mouse is over the hyperlink.

### HyperlinkClicked Event

We can acquire the details of the hyperlink which is clicked in the PDF file using the `HyperlinkClickedEventArgs` in the `HyperlinkClicked` event.
Please refer the below example for more details.

{% tabs %}
{% highlight c# %}

// Hooks the event handler for `HyperlinkClicked` event.    
pdfViewerControl.HyperlinkClicked += PdfViewerControl_HyperlinkClicked;

private void PdfViewerControl_HyperlinkClicked(object sender, Syncfusion.Windows.Forms.PdfViewer.HyperlinkClickedEventArgs args)
{
  
 //Returns the URI clicked in the PDF viewer control.
 string URI = args.Uri; 
            
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

### HyperlinkMouseOver Event

We can acquire the details of the hyperlink which is hovered in the PDF file using the `HyperlinkMouseOverEventArgs` in the `HyperlinkMouseOver` event. 
Please refer the below example for more details.

{% tabs %}
{% highlight c# %}

// Hooks the event handler for `HyperlinkMouseOver` event.    
pdfViewerControl.HyperlinkMouseOver += PdfViewerControl_HyperlinkMouseOver;

private void PdfViewerControl_HyperlinkMouseOver(object sender, Syncfusion.Windows.Forms.PdfViewer.HyperlinkMouseOverEventArgs e)
{

//Returns the URI hovered in the PDF viewer control.
string URI = e.Uri;
            
}

{% endhighlight %}
{% endtabs %}

## Redirecting to a different Hyperlink

We can navigate to different hyperlink irrespective of the hyperlink clicked. In order to redirect a hyperlink, we need to pass the value of `Handled` parameter as true to stop the navigation of the hyperlink clicked. Then open the desired hyperlink that you want to navigate instead of the hyperlink clicked. 
Please refer the below example for more details.

{% tabs %}
{% highlight c# %}

// Hooks the event handler for `HyperlinkClicked` event.    
pdfViewerControl.HyperlinkClicked += PdfViewerControl_HyperlinkClicked;

private void PdfViewerControl_HyperlinkClicked(object sender, Syncfusion.Windows.Forms.PdfViewer.HyperlinkClickedEventArgs args)
{
 
 // Gets or sets the value to handle the navigation of hyperlink. 
args.Handled = true;

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
