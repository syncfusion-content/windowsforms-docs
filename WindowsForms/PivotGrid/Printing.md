---
layout: post
title: Printing | PivotGrid | Windows Forms | Syncfusion
description: Printing support in pivot grid control
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Printing

Pivot grid provides support for printing that allows users to print the contents of pivot grid on paper and it also provides support to preview the contents before printing. This support is used to print the pivot grid control in both landscape and portrait views.

The "Syncfusion.GridHelperClasses.Windows" reference needs to be added to the application to achieve this support. The [PivotGridPrintDocumentAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.PivotGridPrintDocumentAdv.html) class helps to print the pivot grid content on paper.

Refer to the below code sample to print the pivot grid control.

{% tabs %}

{% highlight c# %}

PivotGridPrintDocumentAdv pivotGridPrintDocumentAdv = new PivotGridPrintDocumentAdv(this.pivotGridControl1);

PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog();
printPreviewDialog.Document = pivotGridPrintDocumentAdv;
printPreviewDialog.ShowDialog();

{% endhighlight %}

Dim pivotGridPrintDocumentAdv As New PivotGridPrintDocumentAdv(Me.pivotGridControl1)

Dim printPreviewDialog As New PrintPreviewDialog()
printPreviewDialog.Document = pivotGridPrintDocumentAdv
printPreviewDialog.ShowDialog()

{% endhighlight %}

{% endtabs %}

![Printing_img1](Printing_images/Printing_img1.png)

## Adding header and footer

Headers and footers can also be added to the printed document by using the [HeaderPrintStyleInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~HeaderPrintStyleInfo.html) and [FooterPrintStyleInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~FooterPrintStyleInfo.html) properties.

Refer to the below code sample to add header and footer while printing the pivot grid control.

{% tabs %}

{% highlight c# %}

PivotGridPrintDocumentAdv pivotGridPrintDocumentAdv = new PivotGridPrintDocumentAdv(this.pivotGridControl1);
pivotGridPrintDocumentAdv.HeaderHeight = 80;
pivotGridPrintDocumentAdv.FooterHeight = 80;
pivotGridPrintDocumentAdv.HeaderPrintStyleInfo.Text = "Pivot Grid";
pivotGridPrintDocumentAdv.HeaderPrintStyleInfo.Font.Size = 14;
pivotGridPrintDocumentAdv.FooterPrintStyleInfo.Text = "Syncfusion";
pivotGridPrintDocumentAdv.FooterPrintStyleInfo.Font.Size = 14;

PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog();
printPreviewDialog.Document = pivotGridPrintDocumentAdv;
printPreviewDialog.ShowDialog();

{% endhighlight %}

{% highlight vb %}

Dim pivotGridPrintDocumentAdv As New PivotGridPrintDocumentAdv(Me.pivotGridControl1)
pivotGridPrintDocumentAdv.HeaderHeight = 80
pivotGridPrintDocumentAdv.FooterHeight = 80
pivotGridPrintDocumentAdv.HeaderPrintStyleInfo.Text = "Pivot Grid"
pivotGridPrintDocumentAdv.HeaderPrintStyleInfo.Font.Size = 14
pivotGridPrintDocumentAdv.FooterPrintStyleInfo.Text = "Syncfusion"
pivotGridPrintDocumentAdv.FooterPrintStyleInfo.Font.Size = 14

Dim printPreviewDialog As New PrintPreviewDialog()
printPreviewDialog.Document = pivotGridPrintDocumentAdv
printPreviewDialog.ShowDialog()

{% endhighlight %}

{% endtabs %}

![Printing_img2](Printing_images/Printing_img2.png)

## Events

* The **[DrawGridPrintHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~DrawGridPrintHeader_EV.html)** event occurs while previewing the pivot grid control. This event helps to customize the default appearance of header added in the printed document.
* The **[DrawGridPrintFooter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~DrawGridPrintFooter_EV.html)** event occurs while previewing the pivot grid control. This event helps to customize the default appearance of footer added in the printed document.

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Printing\Printing Demo