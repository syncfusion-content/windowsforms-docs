---
layout: post
title: How-to-set-texts-in-the-preview-record
description: how to set texts in the preview record
platform: windowsform
control: GridGroupingControl
documentation: ug
---

# How to set texts in the preview record

This can be done by handling QueryCellStyleInfo event.

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

{% highlight vbnet %}



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
