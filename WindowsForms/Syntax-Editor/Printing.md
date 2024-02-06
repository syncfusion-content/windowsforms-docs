---
layout: post
title: Printing in Windows Forms Syntax Editor control | Syncfusion
description: Learn about Printing support in Syncfusion Windows Forms Syntax Editor control, its elements and more details.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Printing in Windows Forms Syntax Editor

Support to print the data displayed in the EditControl by using the [Print](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_Print) function. It also provides support to display print preview window by calling the [PrintPreview](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintPreview) function.

{% tabs %}

{% highlight C# %}

// Invoke the print dialog.

this.editControl1.Print();

{% endhighlight %}


{% highlight VB %}

' Invoke the print dialog.

Me.editControl1.Print()

{% endhighlight %}

{% endtabs %}

![Print dialog in syntax editor](Printing_images/Printing_img1.jpeg)

In brief, the printing functionality of the EditControl supports the following features:

* Print preview
* Custom header and footer text
* Document name
* Page numbers
* Color printing to preserve syntax highlighting
* Selected text printing
* Line numbers
* Printing a specific page or set of pages
* Printing entire document
* Creating a printer document
* Current page printing
* Printer dialog

## Print preview

Use the [PrintPreview](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintPreview) function to view the content of the EditControl before printing it.

{% tabs %}

{% highlight C# %}

// View the contents of the EditControl before printing.

this.editControl1.PrintPreview();

{% endhighlight %}


{% highlight VB %}

' View the contents of the EditControl before printing.

Me.editControl1.PrintPreview()

{% endhighlight %}

{% endtabs %}

![Print preview of content in syntax editor](Printing_images/Printing_img2.jpeg)

## Specifying printing options

The EditControl provides various printing option like Visual Studio Code Editor. By using the `PrintCurrentPage` function, you can print the current page in the EditControl.

<table>
<tr>
<th>
Functions</th><th>
Description</th></tr>
<tr>
<td>
{{ '[PrintCurrentPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintCurrentPage)' | markdownify }}</td><td>
Prints the current page on the default printer.</td></tr>
<tr>
<td>
{{ '[PrintNoDialog](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintNoDialog)' | markdownify }}</td><td>
Prints the entire document on the default printer.</td></tr>
<tr>
<td>
{{ '[PrintSelection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintSelection)' | markdownify }}</td><td>
Prints the selected area on the default printer.</td></tr>
<tr>
<td>
{{ '[PrintPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintPages_System_Int32_System_Int32_)' | markdownify }}</td><td>
Prints the pages in the specified range.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Print the current page.

this.editControl1.PrintCurrentPage();

// Print the entire document.

this.editControl1.PrintNoDialog();

// Print the selected area.

this.editControl1.PrintPages(1, 10);

// Print the pages in the specified range.

this.editControl1.PrintSelection();

{% endhighlight %}


{% highlight VB %}

' Print the current page.

Me.editControl1.PrintCurrentPage()

' Print the entire document.

Me.editControl1.PrintNoDialog()

' Print the selected area.

Me.editControl1.PrintPages(1, 10)

' Print the pages in the specified range.

Me.editControl1.PrintSelection()

{% endhighlight %}

{% endtabs %}

## Setting header and footer

Provides a way to display additional content on the top (header) or bottom (footer) of the page while printing. These functionalities can be enabled or disabled by setting the [PageHeaderAndFooterVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PageHeaderAndFooterVisible) property. 

### Printing document name and page number

The EditControl allows you to specify the desired text in the header and footer by handling the [PrintHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintHeader) and [PrintFooter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintFooter) events. The default text in the header and footer is the fully qualified path of the file including the file name and page number respectively. The [PrintDocumentName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintDocumentName) and [PrintPageNumber](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_PrintPageNumber) properties are used to enable or disable the name of the document and page number while printing.

{% tabs %}

{% highlight C# %}

private void editControl1_PrintHeader(object sender, Syncfusion.Windows.Forms.Edit.PrintHeadlineEventArgs e)
{

// Set the desired text in the header. The default text in the header is the full path and the name of the file.

e.Text = "This is the header";

}

private void editControl1_PrintFooter(object sender, Syncfusion.Windows.Forms.Edit.PrintHeadlineEventArgs e)
{

// Set desired text in the footer. The default text in the footer is the page number.

e.Text = "This is the footer";

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_PrintHeader(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.PrintHeadlineEventArgs) Handles EditControl1.PrintHeader

' Set the desired text in the header. The default text in the header is the full path and the name of the file.

e.Text = "This is the header"

End Sub 

'editControl1_PrintHeader

Private Sub editControl1_PrintFooter(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.PrintHeadlineEventArgs) Handles EditControl1.PrintFooter

' Set desired text in the footer. The default text in the footer is the page number.

e.Text = "This is the footer"

End Sub

{% endhighlight %}

{% endtabs %}

The following image shows a typical page with a header and footer in Print Preview mode.

![Print preview of content with header and footer in syntax editor](Printing_images/Printing_img3.jpeg)

### Show or hide page border

The PageBorder can be shown or hidden while printing the document. The [SetPageBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SetPageBorder_Syncfusion_Windows_Forms_Edit_Enums_FrameBorderStyle_System_Drawing_Color_) function is used to display page borders for the EditControl. You can also hide the page borders by using the [RemovePageBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_RemovePageBorder) of the EditControl.

{% tabs %}

{% highlight C# %}

// Set the page border. 

this.editControl1.SetPageBorder(Syncfusion.Windows.Forms.Edit.Enums.FrameBorderStyle.DashDot, Color.Red, Syncfusion.Windows.Forms.Edit.Enums.BorderWeight.Bold);

// Remove the page border.

this.editControl1.RemovePageBorder();

{% endhighlight %}


{% highlight VB %}

' Set the page border. 

Me.editControl1.SetPageBorder(Syncfusion.Windows.Forms.Edit.Enums.FrameBorderStyle.DashDot, Color.Red, Syncfusion.Windows.Forms.Edit.Enums.BorderWeight.Bold)

' Remove the page border.

Me.editControl1.RemovePageBorder()

{% endhighlight %}

{% endtabs %}

N> Refer to the following sample link that demonstrates the `Printing` functionalities in the EditControl:
C:\Users\&lt;User&gt;\AppData\Syncfusion\EssentialStudio\Version Number\Windows\Edit.Windows\Samples\Printing
