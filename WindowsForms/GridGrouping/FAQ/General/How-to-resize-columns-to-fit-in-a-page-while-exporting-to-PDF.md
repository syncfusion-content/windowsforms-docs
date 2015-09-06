---
layout: post
title: How to resize columns to fit in a page while exporting to PDF
description: how to resize columns to fit in a page while exporting to pdf
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to resize columns to fit in a page while exporting to PDF

To resize columns to fit in a page, you can use property ExportRange of GridPDFConverter. The property is used to set number of rows to be exported in a page. The ExportToPdfWithMerge method is used to export the grid.

## Example


{% highlight C# %}

    GridPDFConverter pdfConvertor = new GridPDFConverter();

//Range of rows to be exported in a PDF file

         pdfConvertor.ExportRange = 40;



//Merged Export.

        pdfConvertor.ExportToPdfWithMerge(ref doc, this.gridGroupingControl1.TableControl );



//Resizez the column to fit in PDF.

       float temppercent = currentPercent;

       this.gridGroupingControl1.BeginUpdate();

       PdfDocument doc = new PdfDocument();

       Hashtable ht = new Hashtable();

       for (int i = 0; i < gridGroupingControl1.TableDescriptor.Columns.Count; i++)

                       ht.Add(i, gridGroupingControl1.TableDescriptor.Columns[i].Width)

       float gridWidth = this.gridGroupingControl1.TableModel.ColWidths.GetTotal(0,            gridGroupingControl1.TableDescriptor.Columns.Count);

       if (gridWidth > doc.PageSettings.Width + 80)

          {

             float scale = (gridWidth / (doc.PageSettings.Width + 80)) - currentPercent;

                zoomGrid(currentPercent - scale);

          }

{% endhighlight %}




{% highlight vbnet %}



Dim pdfConvertor As New GridPDFConverter()



'Range of rows to be exported in a PDF file.

          pdfConvertor.ExportRange = 40



'Merged Export.

       pdfConvertor.ExportToPdfWithMerge(doc, Me.gridGroupingControl1.TableControl)



'Resize thez column to fit in PDF.

       Dim temppercent As Single = currentPercent

       Me.gridGroupingControl1.BeginUpdate()

       Dim doc As New PdfDocument()

       Dim ht As New Hashtable()

       For i As Integer = 0 To gridGroupingControl1.TableDescriptor.Columns.Count - 1

ht.Add(i, gridGroupingControl1.TableDescriptor.Columns(i).Width)

       Next i

       Dim gridWidth As Single = Me.gridGroupingControl1.TableModel.ColWidths.GetTotal(0, gridGroupingControl1.TableDescriptor.Columns.Count)

       If gridWidth > doc.PageSettings.Width + 80 Then

                  	Dim scale As Single = (gridWidth / (doc.PageSettings.Width + 80)) - currentPercent

zoomGrid(currentPercent - scale)

       End If


{% endhighlight %}


