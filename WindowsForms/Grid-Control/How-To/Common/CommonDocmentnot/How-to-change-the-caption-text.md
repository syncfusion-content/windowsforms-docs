---
layout: post
title: Change the caption text in WinForms GridGroupingControl | Syncfusion
description: Learn here all about how to change the caption text of Syncfusion Windows Forms GridGroupingControl and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to change the caption text in Windows Forms GridGroupingControl

This can be done using the code below.

 
{% highlight c# %}

// Sets the caption text.
// {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name
//{CategoryName} - Displays the CaptionSection.ParentGroup.Name
//{Category} - Displays the CaptionSection.ParentGroup.Category
//{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()
this.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Table name is {TableName} : {Category} : {RecordCount}";

{% endhighlight  %}

{% highlight vb %}

'Sets the caption text.
' {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name
'{CategoryName} - Displays the CaptionSection.ParentGroup.Name
'{Category} - Displays the CaptionSection.ParentGroup.Category
'{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()
Me.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Table name is {TableName} : {Category} : {RecordCount}"
{% endhighlight  %}