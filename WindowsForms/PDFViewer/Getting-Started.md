---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Getting Started

## Adding PdfViewerControl to an Application

### Adding in designer


1. Open your form in the designer. Add the Syncfusion controls to your .NET toolbox in Visual Studio if you haven't done so already (the install would have automatically done this unless you selected not to complete toolbox integration during installation).
   
   ![](Getting-Started_images/Getting-Started_img1.png)





2. Drag the PdfViewerControl from the toolbox onto the form.



   Appearance and behavior related aspects of the PdfViewerControl can be controlled by setting the appropriate properties through the properties grid. 

   ![](Getting-Started_images/Getting-Started_img2.png)
   

3. This will add the instance 'pdfViewerControl1' to the Designer cs file. The PDF can be loaded in the Form cs file using the [Load](https://help.syncfusion.com/cr/cref_files/windowsforms/pdf%20viewer/Syncfusion.PdfViewer.Windows~Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl~Load(String).html) method. 

{% tabs %}
{% highlight c# %}

//Loading the document in the PdfViewerControl
pdfViewerControl1.Load(@"c:/documents/myPDF.pdf");

{% endhighlight %}
{% highlight vbnet %}

'Loading the document in the PdfViewerControl
pdfViewerControl1.Load("c:/documents/myPDF.pdf")

{% endhighlight %}
{% endtabs %}
	
###Adding manually in code

1. Add Syncfusion.Windows.Forms.PdfViewer namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.PdfViewer;

{% endhighlight %}
{% highlight vbnet %}

Imports Syncfusion.Windows.Forms.PdfViewer

{% endhighlight %}
{% endtabs %}
		
		
2. Create PdfViewerControl instance and load the PDF

{% tabs %}
{% highlight c# %}

//Initializing the PdfViewerControl
PdfViewer viewer = new PdfViewer();

//Loading the document in the PdfViewerControl
viewer.Load(@"c:/documents/myPDF.pdf");

//Add PdfViewerControl to the Form
Controls.Add(viewer);

{% endhighlight %}
{% highlight vbnet %}

'Initializing the PdfViewerControl
Dim viewer As PdfViewer = New PdfViewer()

'Loading the document in the PdfViewerControl
viewer.Load("c:/documents/myPDF.pdf")

'Add PdfViewerControl to the Form
Controls.Add(viewer)

{% endhighlight %}
{% endtabs %}
   
   Refer to [Viewing PDF files](/windowsforms/pdfviewer/working-with-pdf-viewer#viewing-pdf-files) for more information.

## Appearance and Structure of the Control

The following screenshot depicts different sections of the PdfViewerControl.

![](Getting-Started_images/Getting-Started_img3.png)


### Toolbar

![](Getting-Started_images/Getting-Started_img4.png)



1. Open file
2. Bookmark 
3. Save document
4. Print PDF
5. Go to first page
6. Go to previous page
7. Page indicator
8. Go to next page
9. Go to last page
10. Preset magnification
11. Decrease magnification
12. Increase magnification
13. Fill window
14. Fit page to window
