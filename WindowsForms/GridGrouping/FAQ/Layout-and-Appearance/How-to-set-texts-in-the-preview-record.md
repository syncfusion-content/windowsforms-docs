---
layout: post
title: Texts in Preview Record in WinForms GridGroupingControl | Syncfusion®
description: Set texts in the preview record in Syncfusion® WinForms GridGroupingControl, its preview row customization, text styling, formatting, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Set Texts in the Preview Record in WinForms GridGroupingControl

This can be done by handling QueryCellStyleInfo event.

{% tabs %}
{% highlight c# %}

//Checks for the preview record. 
if( e.TableCellIdentity.TableCellType == GridTableCellType.RecordPreviewCell)
{
//Sets the text in the record.
    e.Style.CellValue = " This is preview record".ToString();

//Changes the default italic font to regular.
    e.Style.Font.Italic = false;

//Sets Bold to the text font.
    e.Style.Font.Bold = true;

//Changes the text color.
    e.Style.TextColor = Color.Purple;
}

{% endhighlight %}

{% highlight vb %}

'Checks for the preview record. 
If e.TableCellIdentity.TableCellType = GridTableCellType.RecordPreviewCell Then

'Sets the text in the record.
e.Style.CellValue = " This is preview record".ToString()

'Changes the default italic font to regular.
e.Style.Font.Italic = False

'Sets Bold to the text font.
e.Style.Font.Bold = True

'Changes the text color.
e.Style.TextColor = Color.Purple
End If
{% endhighlight %}
{% endtabs %}
